import 'dart:io';

import 'ads_service.dart';

/// Identifies which registered platform native-ad template to render.
/// The [id] values must match the factory ids registered natively in
/// `MainActivity.configureFlutterEngine`.
enum NativeAdFactoryId {
  high('native_temple_high'),
  small('native_temple_small'),
  fullscreen('native_fullscreen');

  const NativeAdFactoryId(this.id);

  final String id;
}

enum ScreenAds {
  home,
  pray,
  noti,
  location1,
  location2,
  country,
  namesAllah,
  bookmark,
  quranCollap,
  quranDetailList,
  quranDetailCollap,
  tasbihCollap,
  qiblaCollap,
  splash,
  quranList,
  message,
  calendar,
  nativeFullscreen,
}

class AdUnitIds {
  static String get nativeFullscreen {
    return _native(release: 'ca-app-pub-7111629496407310/7809390563');
  }

  static String get interstitialNormal =>
      _interstitial(release: 'ca-app-pub-7111629496407310/5114944466');

  static String get interstitialHigh =>
      _interstitial(release: 'ca-app-pub-7111629496407310/4456468918');

  static String get rewarded {
    if (AdsService.instance.testMode) {
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/5224354917'
          : 'ca-app-pub-3940256099942544/1712485313';
    }
    return '';
  }

  static String _banner({required String release}) {
    if (AdsService.instance.testMode) {
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/6300978111'
          : 'ca-app-pub-3940256099942544/2934735716';
    }
    return release;
  }

  static String _native({required String release}) {
    if (AdsService.instance.testMode) {
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/2247696110'
          : 'ca-app-pub-3940256099942544/3986624511';
    }
    return release;
  }

  static String _interstitial({required String release}) {
    if (AdsService.instance.testMode) {
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/1033173712'
          : 'ca-app-pub-3940256099942544/4411468910';
    }
    return release;
  }

  static String get appOpen {
    if (AdsService.instance.testMode) {
      return Platform.isAndroid
          ? 'ca-app-pub-3940256099942544/9257395921'
          : 'ca-app-pub-3940256099942544/5575463023';
    }
    return 'ca-app-pub-7111629496407310/9784817219';
  }
}

extension ScreenAdsExtension on ScreenAds {
  String get interAdUnitId {
    switch (this) {
      case ScreenAds.home:
      case ScreenAds.pray:
      case ScreenAds.noti:
      case ScreenAds.location1:
      case ScreenAds.location2:
      case ScreenAds.country:
      case ScreenAds.namesAllah:
      case ScreenAds.bookmark:
      case ScreenAds.quranCollap:
      case ScreenAds.quranDetailList:
      case ScreenAds.quranDetailCollap:
      case ScreenAds.tasbihCollap:
      case ScreenAds.qiblaCollap:
      case ScreenAds.splash:
      case ScreenAds.quranList:
      case ScreenAds.message:
      case ScreenAds.calendar:
      case ScreenAds.nativeFullscreen:
        return '';
    }
  }

  String get nativeConfigKey {
    switch (this) {
      case ScreenAds.home:
        return 'native_home_on_off';
      case ScreenAds.pray:
        return 'native_noti_on_off';
      case ScreenAds.noti:
        return 'native_noti_setting_on_off';
      case ScreenAds.location1:
        return 'native_location_1_on_off';
      case ScreenAds.location2:
        return 'native_location_2_on_off';
      case ScreenAds.country:
        return 'native_country_on_off';
      case ScreenAds.namesAllah:
        return 'native_99_names_on_off';
      case ScreenAds.bookmark:
        return 'native_bookmark_on_off';
      case ScreenAds.quranCollap:
        return 'native_quran_collap_on_off';
      case ScreenAds.quranDetailList:
        return 'native_quran_detail_list_on_off';
      case ScreenAds.quranDetailCollap:
        return 'native_quran_detail_collap_on_off';
      case ScreenAds.tasbihCollap:
        return 'native_tasbih_on_off';
      case ScreenAds.qiblaCollap:
        return 'native_qibla_on_off';
      case ScreenAds.splash:
        return 'native_splash_on_off';
      case ScreenAds.quranList:
        return 'native_quran_list_on_off';
      case ScreenAds.nativeFullscreen:
        return 'native_fullscreen_on_off';
      case ScreenAds.message:
      case ScreenAds.calendar:
        return '';
    }
  }

  String get bannerConfigKey {
    switch (this) {
      case ScreenAds.home:
        return 'banner_home_on_off';
      case ScreenAds.pray:
        return 'banner_pray_on_off';
      case ScreenAds.message:
        return 'banner_message_on_off';
      case ScreenAds.noti:
        return 'banner_noti_on_off';
      case ScreenAds.quranCollap:
        return 'banner_quran_collap_on_off';
      case ScreenAds.quranDetailCollap:
        return 'banner_quran_detail_collap_on_off';
      case ScreenAds.tasbihCollap:
        return 'banner_tasbih_on_off';
      case ScreenAds.calendar:
        return 'banner_calendar_on_off';
      case ScreenAds.qiblaCollap:
        return 'banner_qibla_on_off';
      case ScreenAds.splash:
        return 'banner_splash_on_off';
      case ScreenAds.location1:
      case ScreenAds.location2:
      case ScreenAds.country:
      case ScreenAds.namesAllah:
      case ScreenAds.bookmark:
      case ScreenAds.quranDetailList:
      case ScreenAds.quranList:
      case ScreenAds.nativeFullscreen:
        return '';
    }
  }

  String get bannerAdUnitId {
    switch (this) {
      case ScreenAds.home:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/3013339391',
        );
      case ScreenAds.pray:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/8388689078',
        );
      case ScreenAds.message:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/9085979067',
        );
      case ScreenAds.noti:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/9085979067',
        );
      case ScreenAds.quranCollap:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/1931357863',
        );
      case ScreenAds.quranDetailCollap:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/1931357863',
        );
      case ScreenAds.tasbihCollap:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/8005545698',
        );
      case ScreenAds.calendar:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/9085979067',
        );
      case ScreenAds.qiblaCollap:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/5849441637',
        );
      case ScreenAds.splash:
        return AdUnitIds._banner(
          release: 'ca-app-pub-7111629496407310/2481042267',
        );
      case ScreenAds.location1:
      case ScreenAds.location2:
      case ScreenAds.country:
      case ScreenAds.namesAllah:
      case ScreenAds.bookmark:
      case ScreenAds.quranDetailList:
      case ScreenAds.quranList:
      case ScreenAds.nativeFullscreen:
        return '';
    }
  }

  String get nativeAdUnitId {
    switch (this) {
      case ScreenAds.home:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/6309320648',
        );
      case ScreenAds.pray:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/9085979067',
        );
      case ScreenAds.noti:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/7430830624',
        );
      case ScreenAds.location1:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/4879978716',
        );
      case ScreenAds.location2:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/4879978716',
        );
      case ScreenAds.country:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/4879978716',
        );
      case ScreenAds.namesAllah:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/1908200679',
        );
      case ScreenAds.bookmark:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/5679031189',
        );
      case ScreenAds.quranCollap:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/1931357863',
        );
      case ScreenAds.quranDetailList:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/1931357863',
        );
      case ScreenAds.quranDetailCollap:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/1931357863',
        );
      case ScreenAds.tasbihCollap:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/8005545698',
        );
      case ScreenAds.qiblaCollap:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/5849441637',
        );
      case ScreenAds.quranList:
        return AdUnitIds._native(
          release: 'ca-app-pub-7111629496407310/9618276199',
        );
      case ScreenAds.nativeFullscreen:
        return AdUnitIds.nativeFullscreen;
      case ScreenAds.splash:
      case ScreenAds.message:
      case ScreenAds.calendar:
        return '';
    }
  }

  NativeAdFactoryId get nativeFactory {
    switch (this) {
      case ScreenAds.nativeFullscreen:
        return NativeAdFactoryId.fullscreen;
      case ScreenAds.quranDetailList:
      case ScreenAds.quranList:
        return NativeAdFactoryId.small;
      default:
        return NativeAdFactoryId.high;
    }
  }
}
