import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'prayer_alarm_method_channel.dart';
import 'prayer_alarm_model.dart';
import 'prayer_alarm_storage.dart';

class PrayerAlarmService {
  PrayerAlarmService({
    PrayerAlarmMethodChannel? methodChannel,
    PrayerAlarmStorage? storage,
  }) : _methodChannel = methodChannel ?? PrayerAlarmMethodChannel(),
       _storage = storage ?? PrayerAlarmStorage();

  final PrayerAlarmMethodChannel _methodChannel;
  final PrayerAlarmStorage _storage;
  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> schedulePrayerAlarm({
    required int id,
    required String prayerName,
    required DateTime scheduledTime,
    String? prayerNameLocalized,
    String quote = 'Hãy tạm dừng công việc và dành thời gian cho Allah.',
    String soundAsset = 'adhan',
    int snoozeMinutes = 10,
    bool enabled = true,
    String? body,
  }) async {
    if (scheduledTime.isBefore(DateTime.now()) || !enabled) return;
    final alarm = PrayerAlarmModel(
      id: id,
      prayerName: prayerName,
      prayerNameLocalized:
          prayerNameLocalized ?? PrayerAlarmModel.localizedName(prayerName),
      scheduledTime: scheduledTime,
      quote: quote,
      soundAsset: soundAsset,
      snoozeMinutes: snoozeMinutes,
      enabled: enabled,
    );
    await _storage.save(alarm);
    await _methodChannel.schedule(alarm, body: body);
  }

  Future<void> cancelPrayerAlarm(int id) async {
    await _storage.delete(id);
    await _methodChannel.cancel(id);
    await _notificationsPlugin.cancel(id);
  }

  Future<void> cancelAllPrayerAlarms() async {
    await _storage.clear();
    await _methodChannel.cancelAll();
    await _notificationsPlugin.cancelAll();
  }

  Future<void> snoozePrayerAlarm(PrayerAlarmModel alarm) async {
    final snoozed = alarm.copyWith(
      id: alarm.id + 1,
      scheduledTime: DateTime.now().add(Duration(minutes: alarm.snoozeMinutes)),
    );
    await _storage.save(snoozed);
    await _methodChannel.snooze(alarm);
  }

  Future<void> dismissPrayerAlarm(int id) => _methodChannel.dismiss(id);

  Future<void> closeAlarmActivity() => _methodChannel.closeAlarmActivity();

  Future<bool> checkExactAlarmPermission() {
    return _methodChannel.checkExactAlarmPermission();
  }

  Future<void> requestExactAlarmPermission() {
    return _methodChannel.requestExactAlarmPermission();
  }

  Future<bool> checkFullScreenIntentPermission() {
    return _methodChannel.checkFullScreenIntentPermission();
  }

  Future<void> openFullScreenIntentSettings() {
    return _methodChannel.openFullScreenIntentSettings();
  }
}
