import 'dart:async';

import 'package:flutter/material.dart';

import '../../features/home/domain/entities/prayer_time.dart';
import '../../features/home/presentation/pages/prayer_alarm_page.dart';
import '../prayer_alarm/prayer_alarm_model.dart';
import 'analytics_service.dart';

class InAppPrayerScheduler {
  InAppPrayerScheduler._();

  static final InAppPrayerScheduler instance = InAppPrayerScheduler._();
  static const alarmRouteName = '/in-app-prayer-alarm';

  final List<Timer> _timers = [];
  GlobalKey<NavigatorState>? _navigatorKey;

  void registerNavigator(GlobalKey<NavigatorState> key) {
    _navigatorKey = key;
  }

  void schedule(List<PrayerTime> prayerTimes) {
    cancelAll();
    final now = DateTime.now();
    for (final prayer in prayerTimes) {
      if (!prayer.time.isAfter(now)) continue;
      _timers.add(
        Timer(prayer.time.difference(now), () => _showPrayerAlarm(prayer)),
      );
    }
  }

  void cancelAll() {
    for (final timer in _timers) {
      timer.cancel();
    }
    _timers.clear();
  }

  void showNow({
    required String prayerName,
    DateTime? scheduledTime,
    int id = 9900,
  }) {
    _pushAlarm(
      id: id,
      prayerName: prayerName,
      scheduledTime: scheduledTime ?? DateTime.now(),
    );
  }

  void _showPrayerAlarm(PrayerTime prayer) {
    AnalyticsService().trackEvent(
      'in_app_prayer_alarm_show',
      params: {
        'prayer': prayer.name,
        'scheduled_time': prayer.time.toIso8601String(),
      },
    );
    _pushAlarm(
      id: prayer.type.index + 5000,
      prayerName: prayer.name,
      scheduledTime: prayer.time,
    );
  }

  void _pushAlarm({
    required int id,
    required String prayerName,
    required DateTime scheduledTime,
  }) {
    final navigator = _navigatorKey?.currentState;
    if (navigator == null) return;

    var alarmAlreadyOpen = false;
    navigator.popUntil((route) {
      alarmAlreadyOpen =
          route.settings.name == alarmRouteName ||
          route.settings.name == '/prayer-alarm';
      return true;
    });
    if (alarmAlreadyOpen) return;

    navigator.push(
      MaterialPageRoute(
        settings: const RouteSettings(name: alarmRouteName),
        builder: (_) => PrayerAlarmPage(
          id: id,
          prayerName: prayerName,
          scheduledTime: scheduledTime,
          quote: 'Hãy tạm dừng công việc và dành thời gian cho Allah.',
        ),
      ),
    );
  }

  PrayerAlarmModel alarmFromPayload(String payload) {
    return PrayerAlarmModel(
      id: 9900,
      prayerName: payload,
      prayerNameLocalized: PrayerAlarmModel.localizedName(payload),
      scheduledTime: DateTime.now(),
      quote: 'Hãy tạm dừng công việc và dành thời gian cho Allah.',
    );
  }
}
