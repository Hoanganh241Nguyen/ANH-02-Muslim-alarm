import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_shimmer.dart';
import 'ad_unit_ids.dart';
import '../../injection_container.dart';
import '../services/remote_config_service.dart';

enum CollapsibleDirection { top, bottom }

class BaseBannerAd extends StatefulWidget {
  const BaseBannerAd({
    super.key,
    required this.type,
    this.collapsibleDirection,
    this.backgroundColor = Colors.white,
    this.useAdaptiveSize = true,
  });

  final ScreenAds type;
  final CollapsibleDirection? collapsibleDirection;
  final Color backgroundColor;
  final bool useAdaptiveSize;

  @override
  State<BaseBannerAd> createState() => _BaseBannerAdState();
}

class _BaseBannerAdState extends State<BaseBannerAd>
    with WidgetsBindingObserver {
  static const _minimumShimmerDuration = Duration(seconds: 2);

  BannerAd? _bannerAd;
  Timer? _minimumShimmerTimer;
  int _loadToken = 0;
  bool _isLoading = false;
  bool _reloadOnResume = false;
  bool _canShowAd = false;
  bool _hideAdSlot = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_load());
  }

  @override
  void didUpdateWidget(covariant BaseBannerAd oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type ||
        oldWidget.collapsibleDirection != widget.collapsibleDirection ||
        oldWidget.useAdaptiveSize != widget.useAdaptiveSize) {
      _disposeBanner();
      unawaited(_load());
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && _reloadOnResume) {
      _reloadOnResume = false;
      _disposeBanner();
      unawaited(_load());
    }
  }

  Future<void> _load() async {
    if (_isLoading) return;
    final token = ++_loadToken;
    final adUnitId = widget.type.bannerAdUnitId;
    if (adUnitId.isEmpty ||
        !sl<RemoteConfigService>().isBannerAdEnabled(widget.type)) {
      debugPrint('[Ads] Banner skipped: ${widget.type.name}');
      if (mounted) {
        setState(() => _hideAdSlot = true);
      } else {
        _hideAdSlot = true;
      }
      return;
    }

    _isLoading = true;
    _canShowAd = false;
    _hideAdSlot = false;
    _startMinimumShimmerTimer(token);
    final size = widget.useAdaptiveSize
        ? await AdSize.getLargeAnchoredAdaptiveBannerAdSize(
                MediaQueryData.fromView(
                  WidgetsBinding.instance.platformDispatcher.views.first,
                ).size.width.truncate(),
              ) ??
              AdSize.banner
        : AdSize.banner;
    if (!mounted || token != _loadToken || _hideAdSlot) return;

    debugPrint(
      '[Ads] Loading banner: type=${widget.type.name}, '
      'unit=$adUnitId, size=${size.width}x${size.height}',
    );

    final extras = widget.collapsibleDirection == null
        ? null
        : {'collapsible': widget.collapsibleDirection!.name};

    final ad = BannerAd(
      size: size,
      adUnitId: adUnitId,
      request: AdRequest(extras: extras),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted || token != _loadToken || _hideAdSlot) {
            ad.dispose();
            return;
          }
          debugPrint('[Ads] Banner loaded: ${widget.type.name}');
          setState(() {
            _bannerAd?.dispose();
            _bannerAd = ad as BannerAd;
            _isLoading = false;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          if (token != _loadToken) return;
          debugPrint(
            '[Ads] Banner failed: type=${widget.type.name}, '
            'unit=$adUnitId, code=${error.code}, '
            'domain=${error.domain}, message=${error.message}',
          );
          if (mounted) {
            setState(() => _isLoading = false);
          }
        },
        onAdClicked: (_) {
          _reloadOnResume = true;
        },
      ),
    );

    await ad.load();
  }

  @override
  Widget build(BuildContext context) {
    final ad = _bannerAd;
    if (_hideAdSlot) return const SizedBox.shrink();
    if (ad == null || !_canShowAd) {
      return AdShimmer(
        height: AdSize.banner.height.toDouble(),
        backgroundColor: widget.backgroundColor,
      );
    }

    return ColoredBox(
      color: widget.backgroundColor,
      child: SizedBox(
        width: ad.size.width.toDouble(),
        height: ad.size.height.toDouble(),
        child: AdWidget(ad: ad),
      ),
    );
  }

  void _disposeBanner() {
    _minimumShimmerTimer?.cancel();
    _bannerAd?.dispose();
    _bannerAd = null;
    _canShowAd = false;
    _hideAdSlot = false;
    _isLoading = false;
  }

  void _startMinimumShimmerTimer(int token) {
    _minimumShimmerTimer?.cancel();
    _minimumShimmerTimer = Timer(_minimumShimmerDuration, () {
      if (!mounted || token != _loadToken) return;
      setState(() {
        if (_bannerAd != null) {
          _canShowAd = true;
        } else {
          _hideAdSlot = true;
          _isLoading = false;
        }
      });
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _disposeBanner();
    super.dispose();
  }
}
