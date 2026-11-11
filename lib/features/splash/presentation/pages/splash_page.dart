import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:just_audio/just_audio.dart';
import '../../../../core/ads/ad_unit_ids.dart';
import '../../../../core/ads/native_fullscreen_ad_page.dart';
import '../../../../core/ads/ads_service.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/services/audio_download_service.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/remote_config_service.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../injection_container.dart';
import '../../../../features/onboarding/presentation/pages/onboarding_gate.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  static const _splashVolume = 1.0;
  static const _minimumSplashDuration = Duration(milliseconds: 2200);
  static const _fadeOutDuration = Duration(milliseconds: 420);
  static const _fadeOutSteps = 10;

  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isFadingOutSound = false;
  bool _didPrecache = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    );
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _scaleAnimation = Tween<double>(
      begin: .94,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, .045),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    AnalyticsService().trackScreenView('splash', source: 'app_launch');
    _controller.forward();
    _playSplashSound();
    _initializeApp();
  }

  Future<void> _playSplashSound() async {
    try {
      await _audioPlayer.setAsset('assets/sounds/splash.m4a');
      await _audioPlayer.setVolume(_splashVolume);
      await _audioPlayer.play();
    } catch (e) {
      debugPrint('Error playing splash sound: $e');
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_didPrecache) return;
    _didPrecache = true;
    precacheImage(
      const AssetImage('assets/images/img_splash_background.webp'),
      context,
    );
    precacheImage(const AssetImage('assets/images/app_icon.webp'), context);
  }

  @override
  void dispose() {
    _controller.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _initializeApp() async {
    unawaited(
      AudioDownloadService().downloadAdhanFiles().catchError(
        (e) => debugPrint('Error downloading adhan files: $e'),
      ),
    );

    await Future.delayed(_minimumSplashDuration);

    if (mounted) {
      await _fadeOutSplashSound();
    }

    if (mounted) {
      _navigateToMain();
    }
  }

  Future<void> _fadeOutSplashSound() async {
    if (_isFadingOutSound || !_audioPlayer.playing) return;
    _isFadingOutSound = true;
    final stepDelay = _fadeOutDuration ~/ _fadeOutSteps;

    try {
      for (var i = _fadeOutSteps; i >= 0; i--) {
        if (!mounted) return;
        await _audioPlayer.setVolume(_splashVolume * i / _fadeOutSteps);
        await Future.delayed(stepDelay);
      }
      await _audioPlayer.stop();
    } catch (e) {
      debugPrint('Error fading splash sound: $e');
    }
  }

  void _navigateToMain() async {
    if (!mounted) return;

    final box = await Hive.openBox(OnboardingGate.boxName);
    final openCount = (box.get('app_open_count', defaultValue: 0) as int) + 1;
    await box.put('app_open_count', openCount);

    if (mounted) {
      Widget nextScreen = const OnboardingGate();

      if (openCount >= 4 &&
          AdsService.instance.interstitialSplashEnabled &&
          sl<RemoteConfigService>().isNativeAdEnabled(
            ScreenAds.nativeFullscreen,
          )) {
        nextScreen = NativeFullscreenAdPage(nextScreen: nextScreen);
      }

      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => nextScreen,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            final curved = CurvedAnimation(
              parent: animation,
              curve: Curves.easeOutCubic,
            );
            return FadeTransition(
              opacity: curved,
              child: ScaleTransition(
                scale: Tween<double>(begin: .985, end: 1).animate(curved),
                child: child,
              ),
            );
          },
          transitionDuration: const Duration(milliseconds: 520),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final backgroundCacheWidth =
        (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/img_splash_background.webp',
            fit: BoxFit.cover,
            cacheWidth: backgroundCacheWidth,
            filterQuality: FilterQuality.low,
          ),
          // Overlay gradient để text rõ hơn
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withValues(alpha: 0.2),
                  Colors.transparent,
                  Colors.black.withValues(alpha: 0.6),
                ],
              ),
            ),
          ),
          RepaintBoundary(
            child: FadeTransition(
              opacity: _fadeAnimation,
              child: SlideTransition(
                position: _slideAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(flex: 4),
                      Image.asset(
                        'assets/images/app_icon.webp',
                        width: 108,
                        height: 108,
                        filterQuality: FilterQuality.medium,
                      ),
                      const SizedBox(height: 30),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // QURAN - elegant / premium
                              Text(
                                'QURAN',
                                style:
                                    AppTypography.displayIslamic(
                                      color: Colors.white,
                                      size: 44,
                                    ).copyWith(
                                      letterSpacing: 3.2,
                                      shadows: const [
                                        Shadow(
                                          color: Color(0x40000000),
                                          offset: Offset(0, 2),
                                          blurRadius: 8,
                                        ),
                                      ],
                                    ),
                              ),

                              const SizedBox(width: 10),

                              // PRO
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 9,
                                  vertical: 5,
                                ),
                                decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xFFFFE6A1),
                                      Color(0xFFE1B84E),
                                      Color(0xFFC6952C),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Text(
                                  'PRO',
                                  style: AppTypography.caption(
                                    context,
                                    color: const Color(0xFF124D3A),
                                    size: 10,
                                    weight: FontWeight.w800,
                                  ).copyWith(letterSpacing: 1.4, height: 1),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 12),

                          // Ornament
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 28,
                                height: 1,
                                color: Colors.white.withValues(alpha: 0.22),
                              ),
                              const SizedBox(width: 9),
                              const Text(
                                '◆',
                                style: TextStyle(
                                  color: Color(0xFFE7C568),
                                  fontSize: 7,
                                ),
                              ),
                              const SizedBox(width: 9),
                              Container(
                                width: 28,
                                height: 1,
                                color: Colors.white.withValues(alpha: 0.22),
                              ),
                            ],
                          ),

                          const SizedBox(height: 10),

                          Text(
                            'PRAYER  •  QURAN  •  QIBLA',
                            style: AppTypography.caption(
                              context,
                              color: Colors.white.withValues(alpha: 0.68),
                              size: 11,
                              weight: FontWeight.w500,
                            ).copyWith(letterSpacing: 2.2),
                          ),
                        ],
                      ),
                      const Spacer(flex: 3),
                      const SpinKitThreeBounce(color: Colors.white, size: 22.0),
                      const SizedBox(height: 22),
                      Text(
                        AppLocalizations.of(
                          context,
                        ).preparingYourSpiritualJourney,
                        style:
                            AppTypography.caption(
                              context,
                              color: Colors.white.withValues(alpha: 0.56),
                              size: 12,
                              weight: FontWeight.w500,
                            ).copyWith(
                              fontStyle: FontStyle.italic,
                              letterSpacing: .7,
                            ),
                      ),
                      const Spacer(flex: 1),
                    ],
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
