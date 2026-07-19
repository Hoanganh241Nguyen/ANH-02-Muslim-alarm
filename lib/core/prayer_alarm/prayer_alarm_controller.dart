import 'package:flutter/foundation.dart';

import 'prayer_alarm_model.dart';
import 'prayer_alarm_service.dart';

class PrayerAlarmController extends ChangeNotifier {
  PrayerAlarmController({
    required PrayerAlarmModel alarm,
    PrayerAlarmService? service,
  }) : _alarm = alarm,
       _service = service ?? PrayerAlarmService();

  final PrayerAlarmService _service;
  PrayerAlarmModel _alarm;
  bool _isClosing = false;

  PrayerAlarmModel get alarm => _alarm;

  bool get isClosing => _isClosing;

  Future<void> dismiss() async {
    if (_isClosing) return;
    _isClosing = true;
    notifyListeners();
    await _service.dismissPrayerAlarm(_alarm.id);
    await _service.closeAlarmActivity();
  }

  Future<void> snooze() async {
    if (_isClosing) return;
    _isClosing = true;
    notifyListeners();
    await _service.snoozePrayerAlarm(_alarm);
    await _service.closeAlarmActivity();
  }

  void update(PrayerAlarmModel alarm) {
    _alarm = alarm;
    notifyListeners();
  }
}
