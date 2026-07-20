import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
    await _controller.dismiss();
    if (mounted) Navigator.of(context).maybePop();
  }

  Future<void> _snooze() async {
    await _controller.snooze();
    if (mounted) Navigator.of(context).maybePop();
  }

  @override
  Widget build(BuildContext context) {
    final alarm = widget.alarm;
    final now = DateTime.now();

    return Scaffold(
      backgroundColor: const Color(0xFF020F12),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onVerticalDragEnd: (details) {
          final velocity = details.primaryVelocity ?? 0;
          if (velocity.abs() > 220) {
            _dismiss();
          }
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/img_background_noti.png',
              fit: BoxFit.cover,
            ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xC800090C),
                    Color(0x26000000),
                    Color(0xE000080B),
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
                    ScaleTransition(scale: _pulse, child: const _PrayerIcon()),
                    const SizedBox(height: 22),
                    const Text(
                      'Đã đến giờ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      alarm.prayerName,
                      maxLines: 1,
                      style: const TextStyle(
                        color: Color(0xFF97D12D),
                        fontSize: 58,
                        height: .95,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '──  ${alarm.prayerNameLocalized}  ──',
                      style: const TextStyle(
                        color: Color(0xFF97D12D),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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
                      label: 'Hướng Qibla & Bắt đầu cầu nguyện',
                      icon: Icons.self_improvement,
                      filled: true,
                      onPressed: _dismiss,
                    ),
                    const SizedBox(height: 12),
                    _ActionButton(
                      label: 'Nhắc tôi sau ${alarm.snoozeMinutes} phút',
                      icon: Icons.notifications_none_rounded,
                      onPressed: _snooze,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Vuốt lên hoặc xuống để tắt',
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
    const months = [
      'Muharram',
      'Safar',
      'Rabi Al-Awwal',
      'Rabi Al-Thani',
      'Jumada Al-Awwal',
      'Jumada Al-Thani',
      'Rajab',
      'Sha\'ban',
      'Ramadan',
      'Shawwal',
      'Dhu Al-Qadah',
      'Dhu Al-Hijjah',
    ];
    return '$islamicDay ${months[islamicMonth - 1]} $islamicYear';
  }

  String _gregorianDateText(DateTime date) {
    const weekdays = [
      'Thứ Hai',
      'Thứ Ba',
      'Thứ Tư',
      'Thứ Năm',
      'Thứ Sáu',
      'Thứ Bảy',
      'Chủ Nhật',
    ];
    return '${weekdays[date.weekday - 1]}, ${date.day} Tháng ${date.month}, ${date.year}';
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
        const Icon(
          Icons.signal_cellular_alt_rounded,
          color: Colors.white,
          size: 15,
        ),
        const SizedBox(width: 4),
        const Icon(Icons.wifi_rounded, color: Colors.white, size: 15),
        const SizedBox(width: 4),
        const Icon(Icons.battery_full_rounded, color: Colors.white, size: 18),
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
          colors: [Color(0xFF1A6928), Color(0xFF5BB220), Color(0xFF083D23)],
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF97D12D).withValues(alpha: .35),
            blurRadius: 24,
            spreadRadius: 8,
          ),
        ],
      ),
      child: const Icon(Icons.mosque_rounded, color: Colors.white, size: 34),
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
        color: const Color(0x91001D1F),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: const Color(0x5076D559)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '❝',
            style: TextStyle(
              color: Color(0xFF97D12D),
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
          const Text(
            '(Surah Al-Baqarah 2:238)',
            style: TextStyle(color: Color(0xFF97D12D), fontSize: 11),
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
                  colors: [Color(0xFFBAE747), Color(0xFF52A31C)],
                )
              : null,
          color: filled ? null : const Color(0xBE052629),
          border: filled ? null : Border.all(color: const Color(0x5F3F8466)),
          boxShadow: filled
              ? [
                  BoxShadow(
                    color: const Color(0xFF97D12D).withValues(alpha: .35),
                    blurRadius: 16,
                    offset: const Offset(0, 7),
                  ),
                ]
              : null,
        ),
        child: TextButton.icon(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: filled ? Colors.white : const Color(0xFF97D12D),
          ),
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
