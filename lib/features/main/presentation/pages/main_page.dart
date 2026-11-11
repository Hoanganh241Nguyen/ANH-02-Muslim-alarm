import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/ads/ad_unit_ids.dart';
import '../../../../core/ads/base_banner_ad.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/holy_message_service.dart';
import '../../../../core/widgets/app_settings_button.dart';
import '../widgets/main_bottom_nav_bar.dart';

import '../../../home/presentation/pages/home_page.dart';
import '../../../home/presentation/providers/prayer_time_provider.dart';
import '../../../qibla/presentation/pages/qibla_page.dart';
import '../../../qibla/presentation/providers/qibla_provider.dart';
import '../../../quran/presentation/pages/quran_page.dart';
import '../../../quran/presentation/provider/quran_provider.dart';
import '../../../tasbih/presentation/pages/tasbih_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    QiblaPage(),
    QuranPage(),
    TasbihPage(),
    AppSettingsSheet(showBackButton: false),
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PrayerTimeProvider>().fetchPrayerTimes();

      Future<void>.delayed(const Duration(milliseconds: 700), () {
        if (!mounted) return;
        HolyMessageService.instance.showDailyMessageIfNeeded(context);
      });
    });
  }

  void _onItemTapped(int index) {
    if (_selectedIndex == 2 && index != 2) {
      unawaited(context.read<QuranProvider>().stopAudio());
    }
    if (index == 1) {
      // Qibla checks location once at startup, often before the user has
      // answered the permission prompt on Home; check again on open.
      final qibla = context.read<QiblaProvider>();
      if (!qibla.isPermissionGranted) unawaited(qibla.init());
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final backgroundCacheWidth =
        (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      extendBody: false,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              isDark
                  ? 'assets/images/bg_darkmode.webp'
                  : 'assets/images/img_background.webp',
              fit: BoxFit.cover,
              cacheWidth: backgroundCacheWidth,
              filterQuality: FilterQuality.low,
            ),
          ),
          if (isDark)
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.darkBackground.withValues(alpha: 0.18),
                ),
              ),
            ),
          Positioned.fill(
            child: RepaintBoundary(
              child: IndexedStack(index: _selectedIndex, children: _pages),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MainBottomNavBar(
            selectedIndex: _selectedIndex,
            onItemTapped: _onItemTapped,
          ),
          const BaseBannerAd(type: ScreenAds.home),
        ],
      ),
    );
  }
}
