import 'package:flutter/material.dart';
import '../constants/app_icons.dart';

import 'base_native_ad.dart';
import 'ad_unit_ids.dart';

class NativeFullscreenAdPage extends StatefulWidget {
  final Widget nextScreen;

  const NativeFullscreenAdPage({super.key, required this.nextScreen});

  @override
  State<NativeFullscreenAdPage> createState() => _NativeFullscreenAdPageState();
}

class _NativeFullscreenAdPageState extends State<NativeFullscreenAdPage> {
  bool _adClosed = false;
  bool _adLoaded = false;

  void _closeAd() {
    if (_adClosed) return;
    setState(() => _adClosed = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(child: widget.nextScreen),
          if (!_adClosed)
            Positioned.fill(
              child: BaseNativeAd(
                type: ScreenAds.nativeFullscreen,
                height: double.infinity,
                decoration: const BoxDecoration(color: Color(0xFF111827)),
                showPlaceholder: false,
                onLoaded: () {
                  if (mounted) setState(() => _adLoaded = true);
                },
                onUnavailable: _closeAd,
              ),
            ),
          if (!_adClosed && _adLoaded)
            SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Material(
                    color: Colors.black.withValues(alpha: .48),
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: _closeAd,
                      child: const SizedBox(
                        width: 28,
                        height: 28,
                        child: Icon(
                          AppIcons.close,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
