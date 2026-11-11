import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_shimmer.dart';
import 'ad_unit_ids.dart';
import '../../injection_container.dart';
import '../services/remote_config_service.dart';

class BaseNativeAd extends StatefulWidget {
  const BaseNativeAd({
    super.key,
    required this.type,
    required this.height,
    this.margin,
    this.decoration,
    this.showPlaceholder = true,
    this.onLoaded,
    this.onUnavailable,
  });

  final ScreenAds type;
  final double height;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;
  final bool showPlaceholder;
  final VoidCallback? onLoaded;
  final VoidCallback? onUnavailable;

  @override
  State<BaseNativeAd> createState() => _BaseNativeAdState();
}

class _BaseNativeAdState extends State<BaseNativeAd> {
  static const _minimumShimmerDuration = Duration(seconds: 2);

  NativeAd? _nativeAd;
  Timer? _minimumShimmerTimer;
  int _loadToken = 0;
  bool _canShowAd = false;
  bool _hideAdSlot = false;
  bool _notifiedUnavailable = false;
  bool _loadCompleted = false;
  bool _loadFailed = false;

  @override
  void initState() {
    super.initState();
    unawaited(_load());
  }

  @override
  void didUpdateWidget(covariant BaseNativeAd oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type) {
      _disposeAd();
      unawaited(_load());
    }
  }

  Future<void> _load() async {
    final token = ++_loadToken;
    final adUnitId = widget.type.nativeAdUnitId;
    if (adUnitId.isEmpty ||
        !sl<RemoteConfigService>().isNativeAdEnabled(widget.type)) {
      _loadCompleted = true;
      _loadFailed = true;
      if (mounted) {
        setState(() => _hideAdSlot = true);
      } else {
        _hideAdSlot = true;
      }
      _notifyUnavailable();
      return;
    }
    setState(() {
      _canShowAd = false;
      _hideAdSlot = false;
      _notifiedUnavailable = false;
      _loadCompleted = false;
      _loadFailed = false;
    });
    _startMinimumShimmerTimer(token);

    debugPrint(
      '[Ads] Loading native: type=${widget.type.name}, '
      'unit=$adUnitId, factory=${widget.type.nativeFactory.id}',
    );

    final ad = NativeAd(
      adUnitId: adUnitId,
      factoryId: widget.type.nativeFactory.id,
      request: const AdRequest(),
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          if (!mounted || token != _loadToken || _hideAdSlot) {
            ad.dispose();
            return;
          }
          setState(() {
            _nativeAd?.dispose();
            _nativeAd = ad as NativeAd;
            _loadCompleted = true;
            if (_minimumShimmerTimer?.isActive != true) {
              _canShowAd = true;
            }
          });
          if (_canShowAd) {
            widget.onLoaded?.call();
          }
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
          if (token != _loadToken) return;
          debugPrint(
            '[Ads] Native failed: type=${widget.type.name}, '
            'unit=$adUnitId, code=${error.code}, '
            'domain=${error.domain}, message=${error.message}',
          );
          if (mounted) {
            setState(() {
              _loadCompleted = true;
              _loadFailed = true;
              if (_minimumShimmerTimer?.isActive != true) {
                _hideAdSlot = true;
              }
            });
            if (_hideAdSlot) {
              _notifyUnavailable();
            }
          }
        },
      ),
      nativeAdOptions: NativeAdOptions(
        mediaAspectRatio: widget.type == ScreenAds.nativeFullscreen
            ? MediaAspectRatio.portrait
            : null,
        videoOptions: VideoOptions(
          startMuted: true,
          customControlsRequested: false,
        ),
      ),
    );

    await ad.load();
  }

  @override
  Widget build(BuildContext context) {
    if (_hideAdSlot) return const SizedBox.shrink();

    final ad = _nativeAd;
    if ((ad == null || !_canShowAd) && !widget.showPlaceholder) {
      return const SizedBox.shrink();
    }

    final borderRadius = widget.decoration?.borderRadius;
    final resolvedBorderRadius = borderRadius is BorderRadius
        ? borderRadius
        : null;

    return Container(
      height: widget.height,
      margin: widget.margin,
      decoration: widget.decoration ?? const BoxDecoration(color: Colors.white),
      clipBehavior: widget.decoration == null ? Clip.none : Clip.antiAlias,
      child: ad == null || !_canShowAd
          ? AdShimmer(
              height: widget.height,
              backgroundColor:
                  widget.decoration?.color ?? const Color(0xFFFFFFFF),
              borderRadius: resolvedBorderRadius,
              fullscreen: widget.height == double.infinity,
            )
          : AdWidget(ad: ad),
    );
  }

  void _disposeAd() {
    _minimumShimmerTimer?.cancel();
    _nativeAd?.dispose();
    _nativeAd = null;
    _canShowAd = false;
    _hideAdSlot = false;
    _loadCompleted = false;
    _loadFailed = false;
  }

  void _startMinimumShimmerTimer(int token) {
    _minimumShimmerTimer?.cancel();
    _minimumShimmerTimer = Timer(_minimumShimmerDuration, () {
      if (!mounted || token != _loadToken) return;
      setState(() {
        if (_nativeAd != null) {
          _canShowAd = true;
        } else if (_loadCompleted || _loadFailed) {
          _hideAdSlot = true;
        }
      });
      if (_canShowAd) {
        widget.onLoaded?.call();
      }
      if (_hideAdSlot) {
        _notifyUnavailable();
      }
    });
  }

  void _notifyUnavailable() {
    if (_notifiedUnavailable) return;
    _notifiedUnavailable = true;
    widget.onUnavailable?.call();
  }

  @override
  void dispose() {
    _disposeAd();
    super.dispose();
  }
}
