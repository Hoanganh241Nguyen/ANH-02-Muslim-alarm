import 'dart:async';

import 'package:flutter/material.dart';
import '../constants/app_icons.dart';
import 'package:intl/intl.dart';

import '../constants/app_colors.dart';
import '../services/analytics_service.dart';
import '../../language/generated/app_localizations.dart';
import 'prayer_alarm_controller.dart';
import 'prayer_alarm_model.dart';

class PrayerAlarmScreen extends StatefulWidget {
  const PrayerAlarmScreen({super.key, required this.alarm});

  final PrayerAlarmModel alarm;

  @override
  State<PrayerAlarmScreen> createState() => _PrayerAlarmScreenState();
}

class _PrayerAlarmScreenState extends State<PrayerAlarmScreen>
    with SingleTickerProviderStateMixin {
  late final PrayerAlarmController _controller;
  late final AnimationController _pulseController;
  late final Animation<double> _pulse;

  @override
  void initState() {
    super.initState();
    _controller = PrayerAlarmController(alarm: widget.alarm);
    _pulseController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _pulse = Tween<double>(begin: .95, end: 1.08).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
    AnalyticsService().trackScreenView(
      'prayer_alarm',
      source: 'native_alarm',
      params: {
        'prayer': widget.alarm.prayerName,
        'sound_asset': widget.alarm.soundAsset,
      },
    );
    unawaited(
      _controller.startSound().catchError((
        Object error,
        StackTrace stackTrace,
      ) {
        debugPrint('Could not start prayer alarm sound: $error');
      }),
    );
  }

  @override
  void didUpdateWidget(covariant PrayerAlarmScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.alarm.id != widget.alarm.id ||
        oldWidget.alarm.prayerName != widget.alarm.prayerName) {
      _controller.update(widget.alarm);
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _controller.dispose();
    super.dispose();
  }

  Future<void> _dismiss() async {
    AnalyticsService().trackButtonTap(
      'prayer_alarm',
      'dismiss',
      params: {'prayer': _controller.alarm.prayerName},
    );
    await _controller.dismiss();
    if (mounted) Navigator.of(context).maybePop();
  }

  Future<void> _dismissBySwipe() async {
    AnalyticsService().trackButtonTap(
      'prayer_alarm',
      'dismiss_swipe',
      params: {'prayer': _controller.alarm.prayerName},
    );
    await _dismiss();
  }

  Future<void> _snooze() async {
    AnalyticsService().trackButtonTap(
      'prayer_alarm',
      'snooze',
      params: {'prayer': _controller.alarm.prayerName},
    );
    await _controller.snooze();
    if (mounted) Navigator.of(context).maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    return Scaffold(
      backgroundColor: AppColors.midnight,
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          final alarm = _controller.alarm;
          return GestureDetector(
            behavior: HitTestBehavior.translucent,
            onVerticalDragEnd: (details) {
              final velocity = details.primaryVelocity ?? 0;
              if (velocity.abs() > 220) {
                _dismissBySwipe();
              }
            },
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/images/img_background_noti.webp',
                  fit: BoxFit.cover,
                ),
                const DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColors.darkOverlay,
                        AppColors.shadowBlack,
                        AppColors.deepOverlay,
                      ],
                    ),
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(34, 18, 34, 10),
                    child: Column(
                      children: [
                        _StatusRow(now: now),
                        const SizedBox(height: 34),
                        ScaleTransition(
                          scale: _pulse,
                          child: const _PrayerIcon(),
                        ),
                        const SizedBox(height: 22),
                        Text(
                          AppLocalizations.of(
                            context,
                          ).prayerTimeArrived(alarm.prayerNameLocalized),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Spacer(flex: 5),
                        _QuoteCard(quote: alarm.quote),
                        const SizedBox(height: 16),
                        Text(
                          DateFormat('HH:mm').format(now),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 43,
                            height: .95,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '${_gregorianDateText(now)}\n(${_hijriDateText(now)})',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: .7),
                            fontSize: 11,
                            height: 1.35,
                          ),
                        ),
                        const SizedBox(height: 18),
                        _ActionButton(
                          label: AppLocalizations.of(context).adjustPosition,
                          icon: AppIcons.selfImprovement,
                          filled: true,
                          onPressed: _dismiss,
                        ),
                        const SizedBox(height: 12),
                        _ActionButton(
                          label: AppLocalizations.of(
                            context,
                          ).snoozeMinutes(alarm.snoozeMinutes),
                          icon: AppIcons.notificationsNone,
                          onPressed: _snooze,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          AppLocalizations.of(context).clickOrSwipeToCount,
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: .55),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String _hijriDateText(DateTime date) {
    final jd = _julianDay(date.year, date.month, date.day);
    final islamicYear = ((30 * (jd - 1948439.5) + 10646) / 10631).floor();
    final firstDayOfYear = _islamicToJulian(islamicYear, 1, 1);
    final islamicMonth = (((jd - 29 - firstDayOfYear) / 29.5).ceil() + 1).clamp(
      1,
      12,
    );
    final firstDayOfMonth = _islamicToJulian(islamicYear, islamicMonth, 1);
    final islamicDay = (jd - firstDayOfMonth + 1).floor().clamp(1, 30);
    final months = [
      'Muharram',
      'Safar',
      AppLocalizations.of(context).rabiAlAwwal,
      AppLocalizations.of(context).rabiAlThani,
      AppLocalizations.of(context).jumadaAlAwwal,
      AppLocalizations.of(context).jumadaAlThani,
      'Rajab',
      'Sha\'ban',
      'Ramadan',
      'Shawwal',
      AppLocalizations.of(context).dhuAlQadah,
      AppLocalizations.of(context).dhuAlHijjah,
    ];
    return '$islamicDay ${months[islamicMonth - 1]} $islamicYear';
  }

  String _gregorianDateText(DateTime date) {
    return DateFormat.yMMMMEEEEd(
      Localizations.localeOf(context).toString(),
    ).format(date);
  }

  double _julianDay(int year, int month, int day) {
    final adjustedYear = month <= 2 ? year - 1 : year;
    final adjustedMonth = month <= 2 ? month + 12 : month;
    final a = adjustedYear ~/ 100;
    final b = 2 - a + (a ~/ 4);
    return (365.25 * (adjustedYear + 4716)).floor() +
        (30.6001 * (adjustedMonth + 1)).floor() +
        day +
        b -
        1524.5;
  }

  double _islamicToJulian(int year, int month, int day) {
    return day +
        (29.5 * (month - 1)).ceil() +
        (year - 1) * 354 +
        ((3 + 11 * year) / 30).floor() +
        1948439.5 -
        1;
  }
}

class _StatusRow extends StatelessWidget {
  const _StatusRow({required this.now});

  final DateTime now;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          DateFormat('H:mm').format(now),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
        const Spacer(),
        const Icon(AppIcons.signalCellularAlt, color: Colors.white, size: 15),
        const SizedBox(width: 4),
        const Icon(AppIcons.wifi, color: Colors.white, size: 15),
        const SizedBox(width: 4),
        const Icon(AppIcons.batteryFull, color: Colors.white, size: 18),
      ],
    );
  }
}

class _PrayerIcon extends StatelessWidget {
  const _PrayerIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.forestGreen,
            AppColors.brightGreen,
            AppColors.darkForest,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lime.withValues(alpha: .35),
            blurRadius: 24,
            spreadRadius: 8,
          ),
        ],
      ),
      child: const Icon(AppIcons.mosque, color: Colors.white, size: 34),
    );
  }
}

class _QuoteCard extends StatelessWidget {
  const _QuoteCard({required this.quote});

  final String quote;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 124,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.deepTeal,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.borderGreen),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '❝',
            style: TextStyle(
              color: AppColors.lime,
              fontSize: 24,
              height: .8,
              fontWeight: FontWeight.w900,
            ),
          ),
          Text(
            quote,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              height: 1.35,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            AppLocalizations.of(context).surahAlBaqarah2238,
            style: const TextStyle(color: AppColors.lime, fontSize: 11),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.filled = false,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: filled ? 58 : 48,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(29),
          gradient: filled
              ? const LinearGradient(
                  colors: [AppColors.limeGreen, AppColors.leafGreen],
                )
              : null,
          color: filled ? null : AppColors.darkTeal,
          border: filled ? null : Border.all(color: AppColors.mutedTeal),
          boxShadow: filled
              ? [
                  BoxShadow(
                    color: AppColors.lime.withValues(alpha: .35),
                    blurRadius: 16,
                    offset: const Offset(0, 7),
                  ),
                ]
              : null,
        ),
        child: TextButton.icon(
          onPressed: onPressed,
          icon: Icon(icon, color: filled ? Colors.white : AppColors.lime),
          label: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
