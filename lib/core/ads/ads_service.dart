import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_unit_ids.dart';
import '../../injection_container.dart';
import '../services/remote_config_service.dart';

class AdsService {
  AdsService._();

  static final AdsService instance = AdsService._();

  bool _initialized = false;
  bool enabled = true;

  /// When true, Google's sample/test ad unit ids are served instead of the
  /// production ones. Defaults to debug builds so real impressions are never
  /// generated during development.
  bool get testMode =>
      const bool.fromEnvironment('ADS_TEST_MODE', defaultValue: kDebugMode);

  bool get appOpenEnabled => sl<RemoteConfigService>().adsOpenApp;
  bool get interstitialEnabled => sl<RemoteConfigService>().adsInterInApp;
  bool get interstitialSplashEnabled =>
      sl<RemoteConfigService>().adsInterSplash;
  bool get rewardedEnabled => sl<RemoteConfigService>().adsRewarded;

  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;
  AppOpenAd? _appOpenAd;
  DateTime? _appOpenLoadedAt;
  bool _isShowingFullScreenAd = false;

  Future<void> initialize() async {
    if (_initialized || !enabled) return;
    await MobileAds.instance.initialize();
    _initialized = true;
    unawaited(loadInterstitial());
    unawaited(loadRewarded());
    unawaited(loadAppOpen());
  }

  Future<void> loadInterstitial({bool high = false}) async {
    if (!_initialized || !enabled || !interstitialEnabled) return;
    final adUnitId = high
        ? AdUnitIds.interstitialHigh
        : AdUnitIds.interstitialNormal;
    if (adUnitId.isEmpty) return;

    await InterstitialAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          _interstitialAd?.dispose();
          _interstitialAd = ad;
        },
        onAdFailedToLoad: (error) {
          debugPrint('[Ads] Interstitial failed: $error');
        },
      ),
    );
  }

  Future<bool> showInterstitial({VoidCallback? onClosed}) async {
    if (_isShowingFullScreenAd || _interstitialAd == null) return false;
    final ad = _interstitialAd!;
    _interstitialAd = null;
    _isShowingFullScreenAd = true;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        _isShowingFullScreenAd = false;
        ad.dispose();
        onClosed?.call();
        unawaited(loadInterstitial());
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        _isShowingFullScreenAd = false;
        ad.dispose();
        debugPrint('[Ads] Interstitial show failed: $error');
        onClosed?.call();
        unawaited(loadInterstitial());
      },
    );
    ad.show();
    return true;
  }

  Future<void> loadRewarded() async {
    if (!_initialized || !enabled || !rewardedEnabled) return;
    final adUnitId = AdUnitIds.rewarded;
    if (adUnitId.isEmpty) return;

    await RewardedAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          _rewardedAd?.dispose();
          _rewardedAd = ad;
        },
        onAdFailedToLoad: (error) {
          debugPrint('[Ads] Rewarded failed: $error');
        },
      ),
    );
  }

  Future<bool> showRewarded({
    required void Function(RewardItem reward) onRewarded,
    VoidCallback? onClosed,
  }) async {
    if (_isShowingFullScreenAd || _rewardedAd == null) return false;
    final ad = _rewardedAd!;
    _rewardedAd = null;
    _isShowingFullScreenAd = true;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        _isShowingFullScreenAd = false;
        ad.dispose();
        onClosed?.call();
        unawaited(loadRewarded());
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        _isShowingFullScreenAd = false;
        ad.dispose();
        debugPrint('[Ads] Rewarded show failed: $error');
        onClosed?.call();
        unawaited(loadRewarded());
      },
    );
    ad.show(onUserEarnedReward: (_, reward) => onRewarded(reward));
    return true;
  }

  Future<void> loadAppOpen() async {
    if (!_initialized || !enabled || !appOpenEnabled) return;
    final adUnitId = AdUnitIds.appOpen;
    if (adUnitId.isEmpty || _appOpenAd != null) return;

    await AppOpenAd.load(
      adUnitId: adUnitId,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _appOpenAd?.dispose();
          _appOpenAd = ad;
          _appOpenLoadedAt = DateTime.now();
        },
        onAdFailedToLoad: (error) {
          debugPrint('[Ads] App open failed: $error');
        },
      ),
    );
  }

  Future<bool> showAppOpenIfAvailable() async {
    if (_isShowingFullScreenAd || _appOpenAd == null) return false;
    if (_appOpenLoadedAt == null ||
        DateTime.now().difference(_appOpenLoadedAt!) >
            const Duration(hours: 4)) {
      _appOpenAd?.dispose();
      _appOpenAd = null;
      unawaited(loadAppOpen());
      return false;
    }

    final ad = _appOpenAd!;
    _appOpenAd = null;
    _isShowingFullScreenAd = true;
    ad.fullScreenContentCallback = FullScreenContentCallback(
      onAdDismissedFullScreenContent: (ad) {
        _isShowingFullScreenAd = false;
        ad.dispose();
        unawaited(loadAppOpen());
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        _isShowingFullScreenAd = false;
        ad.dispose();
        debugPrint('[Ads] App open show failed: $error');
        unawaited(loadAppOpen());
      },
    );
    ad.show();
    return true;
  }

  void dispose() {
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
    _appOpenAd?.dispose();
    _interstitialAd = null;
    _rewardedAd = null;
    _appOpenAd = null;
  }
}
