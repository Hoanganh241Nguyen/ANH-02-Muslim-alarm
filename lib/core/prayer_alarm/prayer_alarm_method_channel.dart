import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'prayer_alarm_model.dart';

class PrayerAlarmMethodChannel {
  static const MethodChannel _channel = MethodChannel(
    'com.h01.muslim_alarm/alarm',
  );

  Future<void> schedule(PrayerAlarmModel alarm, {String? body}) async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('scheduleNativeAlarm', {
      ...alarm.toJson(),
      'body': body ?? 'Đã đến giờ ${alarm.prayerName}',
      'payload': alarm.prayerName,
      'triggerAtMillis': alarm.scheduledTime.millisecondsSinceEpoch,
    });
  }

  Future<void> cancel(int id) async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('cancelNativeAlarm', {'id': id});
  }

  Future<void> cancelAll() async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('cancelAllNativeAlarms');
  }

  Future<void> snooze(PrayerAlarmModel alarm) async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('snoozeNativeAlarm', alarm.toJson());
  }

  Future<void> dismiss(int id) async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('dismissAlarm', {'id': id});
  }

  Future<void> closeAlarmActivity() async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('closeAlarmActivity');
  }

  Future<bool> checkExactAlarmPermission() async {
    if (defaultTargetPlatform != TargetPlatform.android) return true;
    return await _channel.invokeMethod<bool>('checkExactAlarmPermission') ??
        false;
  }

  Future<void> requestExactAlarmPermission() async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('requestExactAlarmPermission');
  }

  Future<bool> checkFullScreenIntentPermission() async {
    if (defaultTargetPlatform != TargetPlatform.android) return true;
    return await _channel.invokeMethod<bool>(
          'checkFullScreenIntentPermission',
        ) ??
        false;
  }

  Future<void> openFullScreenIntentSettings() async {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    await _channel.invokeMethod<bool>('openFullScreenIntentSettings');
  }

  Future<String?> getInitialAlarmPayload() async {
    if (defaultTargetPlatform != TargetPlatform.android) return null;
    return _channel.invokeMethod<String>('getInitialAlarmPayload');
  }

  void setAlarmCallback(ValueChanged<String?> callback) {
    if (defaultTargetPlatform != TargetPlatform.android) return;
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'onNativeAlarm') {
        callback(call.arguments as String?);
      }
    });
  }
}
