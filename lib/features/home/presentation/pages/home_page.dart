import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../gamification/presentation/providers/gamification_provider.dart';
import '../../../../core/services/notification_service.dart';
import '../../../../core/services/battery_service.dart';
import '../pages/prayer_alarm_page.dart';
import '../providers/prayer_time_provider.dart';
import '../widgets/prayer_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? _testAlarmTimer;
  int _testAlarmRemainingSeconds = 0;

  @override
  void initState() {
    super.initState();
    _checkBatteryOptimization();
  }

  @override
  void dispose() {
    _testAlarmTimer?.cancel();
    super.dispose();
  }

  Future<void> _checkBatteryOptimization() async {
    bool isIgnored = await BatteryService.isBatteryOptimizationIgnored();
    if (!isIgnored && mounted) {
      _showBatteryOptimizationDialog();
    }
  }

  void _showBatteryOptimizationDialog() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Optimize Adhan Performance'),
            content: const Text(
              'To ensure the prayer calls (Adhan) work reliably even when the app is closed, please perform the following steps:\n\n'
              '1. Disable Battery Optimization\n'
              '2. Enable Auto-start (especially for Xiaomi, Oppo, Vivo, Huawei devices)',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('LATER'),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      BatteryService.requestIgnoreBatteryOptimizations();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.emerald,
                    ),
                    child: const Text(
                      '1. DISABLE OPTIMIZATION',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      BatteryService.openAutostartSettings();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.emerald,
                    ),
                    child: const Text(
                      '2. OPEN AUTO-START',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
    );
  }

  Future<void> _scheduleTestPrayerAlarm() async {
    _testAlarmTimer?.cancel();
    await NotificationService().requestPermissions(includeAlarmSettings: true);

    const countdownSeconds = 20;
    final scheduledDate = DateTime.now().add(
      const Duration(seconds: countdownSeconds),
    );

    setState(() {
      _testAlarmRemainingSeconds = countdownSeconds;
    });

    _testAlarmTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) {
        timer.cancel();
        return;
      }

      setState(() {
        _testAlarmRemainingSeconds--;
      });

      if (_testAlarmRemainingSeconds <= 0) {
        timer.cancel();
      }
    });

    try {
      await NotificationService().scheduleNotification(
        id: 9900,
        title: 'Thời gian cầu nguyện',
        body: 'Test: đã đến giờ Fajr',
        scheduledDate: scheduledDate,
        payload: 'Fajr',
      );

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'Test alarm đã đặt sau 20 giây. Có thể tắt màn hình để thử.',
          ),
        ),
      );
    } catch (e) {
      _testAlarmTimer?.cancel();
      if (!mounted) return;
      setState(() {
        _testAlarmRemainingSeconds = 0;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Không đặt được test alarm: $e')));
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
              ...prayerProvider.prayerTimes.map(
                (prayer) => PrayerCard(prayer: prayer),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    PrayerTimeProvider prayerProvider,
    GamificationProvider gamificationProvider,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Sakina',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3A34),
                fontFamily: 'Serif',
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            const PrayerAlarmPage(prayerName: 'Debug Fajr'),
                  ),
                );
              },
              icon: const Icon(
                Icons.bug_report_outlined,
                color: Colors.redAccent,
                size: 20,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
            const SizedBox(width: 12),
            IconButton(
              tooltip: 'Test alarm 20s',
              onPressed: _scheduleTestPrayerAlarm,
              icon: const Icon(
                Icons.timer_outlined,
                color: Colors.orangeAccent,
                size: 20,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
            if (_testAlarmRemainingSeconds > 0) ...[
              const SizedBox(width: 4),
              Text(
                '${_testAlarmRemainingSeconds}s',
                style: const TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
            const SizedBox(width: 12),
            IconButton(
              tooltip: 'Alarm permissions',
              onPressed: () {
                NotificationService().requestPermissions(
                  includeAlarmSettings: true,
                );
              },
              icon: const Icon(
                Icons.settings_outlined,
                color: Color(0xFF1E3A34),
                size: 20,
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 2),
              child: Icon(
                Icons.location_on_outlined,
                color: AppColors.emerald,
                size: 16,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 10,
                      color: AppColors.secondaryText,
                    ),
                  ),
                  Text(
                    prayerProvider.currentAddress,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryText,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.streakBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.local_fire_department,
                    color: AppColors.gold,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${gamificationProvider.stats?.streakCount ?? 0} Days',
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMainBanner(PrayerTimeProvider provider) {
    final nextPrayerName =
        provider.nextPrayer?.name.toUpperCase() ?? 'NEXT PRAYER';

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.emerald, Color(0xFF065F46)],
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.emerald.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            right: -30,
            top: -30,
            child: Icon(
              Icons.mosque,
              size: 180,
              color: Colors.white.withValues(alpha: 0.08),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'UPCOMING: $nextPrayerName',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    provider.timeRemainingString,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    'left',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.7),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.white70,
                    size: 16,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '28°C - Clear Sky',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white70,
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildScheduleHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Prayer Schedule',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryText,
            letterSpacing: -0.5,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white24, width: 1),
          ),
          child: Text(
            DateFormat('MMM dd, yyyy').format(DateTime.now()),
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryText,
            ),
          ),
        ),
      ],
    );
  }
}
