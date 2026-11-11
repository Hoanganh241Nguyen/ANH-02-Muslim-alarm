import 'dart:async';

import 'package:flutter/material.dart';
import '../constants/app_icons.dart';

import 'ad_unit_ids.dart';
import 'base_banner_ad.dart';
import 'base_native_ad.dart';

class BaseCollapsibleAd extends StatefulWidget {
  const BaseCollapsibleAd({
    super.key,
    required this.type,
    this.nativeHeight = 140,
    this.nativeShowDelay = const Duration(seconds: 10),
    this.closeCooldown = const Duration(seconds: 60),
  });

  final ScreenAds type;
  final double nativeHeight;
  final Duration nativeShowDelay;
  final Duration closeCooldown;

  @override
  State<BaseCollapsibleAd> createState() => _BaseCollapsibleAdState();
}

class _BaseCollapsibleAdState extends State<BaseCollapsibleAd> {
  Timer? _showTimer;
  Timer? _cooldownTimer;
  bool _showNative = false;
  bool _inCooldown = false;
  bool _nativeUnavailable = false;

  @override
  void initState() {
    super.initState();
    _scheduleNative();
  }

  @override
  void didUpdateWidget(covariant BaseCollapsibleAd oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type) {
      _showNative = false;
      _inCooldown = false;
      _nativeUnavailable = false;
      _scheduleNative();
    }
  }

  void _scheduleNative() {
    _showTimer?.cancel();
    if (_inCooldown || widget.type.nativeAdUnitId.isEmpty) return;
    _showTimer = Timer(widget.nativeShowDelay, () {
      if (mounted) {
        setState(() {
          _showNative = true;
          _nativeUnavailable = false;
        });
      }
    });
  }

  void _closeNative() {
    setState(() {
      _showNative = false;
      _inCooldown = true;
    });
    _cooldownTimer?.cancel();
    _cooldownTimer = Timer(widget.closeCooldown, () {
      if (!mounted) return;
      setState(() => _inCooldown = false);
      _scheduleNative();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_nativeUnavailable) return const SizedBox.shrink();

    if (!_showNative) {
      return BaseBannerAd(
        type: widget.type,
        collapsibleDirection: CollapsibleDirection.bottom,
      );
    }

    return SizedBox(
      height: widget.nativeHeight,
      child: Stack(
        children: [
          Positioned.fill(
            child: BaseNativeAd(
              type: widget.type,
              height: widget.nativeHeight,
              decoration: const BoxDecoration(color: Colors.white),
              onUnavailable: () {
                if (!mounted) return;
                setState(() => _nativeUnavailable = true);
              },
            ),
          ),
          Positioned(
            left: 6,
            top: 6,
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
              elevation: 2,
              child: InkWell(
                borderRadius: BorderRadius.circular(6),
                onTap: _closeNative,
                child: const SizedBox(
                  width: 28,
                  height: 28,
                  child: Icon(AppIcons.expandMore, size: 22),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _showTimer?.cancel();
    _cooldownTimer?.cancel();
    super.dispose();
  }
}
