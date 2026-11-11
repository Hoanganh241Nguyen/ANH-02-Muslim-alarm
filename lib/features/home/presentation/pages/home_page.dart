import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../gamification/presentation/providers/gamification_provider.dart';
import '../../../../core/services/battery_service.dart';
import '../../../../core/widgets/app_settings_button.dart';
import '../../../../core/widgets/base_app_bar.dart';
import '../../../../language/generated/app_localizations.dart';
import '../providers/prayer_time_provider.dart';
import '../widgets/prayer_card.dart';

part 'home_page_parts/home_battery_dialog.dart';
part 'home_page_parts/home_sections.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key}); 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    AnalyticsService().trackScreenView('home_page_widget', source: 'page_init');
    _checkBatteryOptimization();
  }

  Future<void> _checkBatteryOptimization() async {
    final shouldShow = await BatteryService.shouldShowPrompt();
    await Future<void>.delayed(const Duration(milliseconds: 350));
    if (shouldShow && mounted && ModalRoute.of(context)?.isCurrent == true) {
      unawaited(BatteryService.snoozePrompt());
      _showBatteryOptimizationDialog();
    }
  }

  @override
  Widget build(BuildContext context) {
    final prayerProvider = context.watch<PrayerTimeProvider>();
    final gamificationProvider = context.watch<GamificationProvider>();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                _buildHeader(context, prayerProvider, gamificationProvider),
                const SizedBox(height: 20),
                _buildMainBanner(prayerProvider),
                const SizedBox(height: 25),
                _buildScheduleHeader(),
                const SizedBox(height: 15),
                if (prayerProvider.prayerTimes.isEmpty &&
                    prayerProvider.isLoading)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 28),
                    child: Center(
                      child: CircularProgressIndicator(
                        color: AppColors.emerald
                      ),
                    ),
                  )
                else if (prayerProvider.prayerTimes.isEmpty)
                  _buildPrayerTimesEmptyState(context)
                else
                  ...prayerProvider.prayerTimes.map(
                    (prayer) => PrayerCard(prayer: prayer),
                  ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
