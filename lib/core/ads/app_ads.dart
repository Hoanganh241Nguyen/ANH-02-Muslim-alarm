import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/onboarding/presentation/pages/onboarding_gate.dart';

import 'ads_service.dart';

class AppAds extends StatefulWidget {
  const AppAds({super.key, required this.child});

  final Widget child;

  @override
  State<AppAds> createState() => _AppAdsState();
}

class _AppAdsState extends State<AppAds> with WidgetsBindingObserver {
  // Quick trips out of the app (permission dialogs, the location accuracy
  // prompt, system alarm settings) are part of using the app, not a return
  // to it, so they should not trigger an app open ad.
  static const _minBackgroundDuration = Duration(seconds: 30);

  bool _isFirstResume = true;
  DateTime? _pausedAt;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _pausedAt = DateTime.now();
    }

    if (state == AppLifecycleState.resumed) {
      if (_isFirstResume) {
        _isFirstResume = false;
        return;
      }
      final pausedAt = _pausedAt;
      _pausedAt = null;
      if (pausedAt != null &&
          DateTime.now().difference(pausedAt) >= _minBackgroundDuration &&
          !_isFirstSession()) {
        AdsService.instance.showAppOpenIfAvailable();
      }
    }
  }

  // No full screen ads in the session where the user installs and sets up
  // the app; the splash screen counts each launch.
  bool _isFirstSession() {
    if (!Hive.isBoxOpen(OnboardingGate.boxName)) return true;
    final openCount =
        Hive.box(OnboardingGate.boxName).get('app_open_count', defaultValue: 0)
            as int;
    return openCount <= 1;
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
