import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../constants/app_colors.dart';
import 'analytics_service.dart';
import '../prayer_alarm/prayer_alarm_model.dart';
import '../prayer_alarm/prayer_alarm_schedule_policy.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() => _instance;

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static const MethodChannel _nativeAlarmChannel = MethodChannel(
    'com.h01.muslim_alarm/alarm',
  );
  static const String _m27DefaultNotificationSound = 'noti_default';
  static const String _m27DefaultPrayerSound = 'noti_adhan_al_afassi.mp3';
  bool _isInitialized = false;
  Function(String?)? _onNotificationTap;

  @pragma('vm:entry-point')
  static void notificationTapBackground(
    NotificationResponse notificationResponse,
  ) {
    // Xử lý logic nền nếu cần ở đây
  }

  /// Hiển thị thông báo ngay lập tức
  Future<void> showNotification({
    required int id,
    required String title,
    required String body,
    String? payload,
  }) async {
    await _notificationsPlugin.show(
      id,
      title,
      body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          'prayer_alarms_high_priority_v4',
          'Prayer Alarms',
          channelDescription: 'Immediate alerts',
          importance: Importance.max,
          priority: Priority.max,
          playSound: true,
          sound: const RawResourceAndroidNotificationSound(
            _m27DefaultNotificationSound,
          ),
          color: AppColors.emerald,
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentSound: true,
          presentBanner: true,
          sound: 'noti_default.mp3',
        ),
      ),
      payload: payload,
    );
  }

  Future<void> cancelNotification(int id) async {
    await _notificationsPlugin.cancel(id);
  }

  Future<String?> getLaunchPayload() async {
    final details = await _notificationsPlugin
        .getNotificationAppLaunchDetails();
    if (details != null && details.didNotificationLaunchApp) {
      return details.notificationResponse?.payload;
    }
    return null;
  }

  Future<void> init(Function(String?) onNotificationTap) async {
    _onNotificationTap = onNotificationTap;
    if (_isInitialized) return;

    tz.initializeTimeZones();

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        );

    const InitializationSettings initializationSettings =
        InitializationSettings(
          android: initializationSettingsAndroid,
          iOS: initializationSettingsIOS,
        );

    await _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (details) {
        _onNotificationTap?.call(details.payload);
      },
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );

    if (defaultTargetPlatform == TargetPlatform.android) {
      _nativeAlarmChannel.setMethodCallHandler((call) async {
        if (call.method == 'onNativeAlarm') {
          _onNotificationTap?.call(call.arguments as String?);
        }
      });
    }

    final androidPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (androidPlugin != null) {
      // Create notification channels
      await _createNotificationChannels(androidPlugin);
    }

    _isInitialized = true;
  }

  Future<void> _createNotificationChannels(
    AndroidFlutterLocalNotificationsPlugin androidPlugin,
  ) async {
    await androidPlugin.createNotificationChannel(
      const AndroidNotificationChannel(
        'm27_prayer_channel',
        'Prayer Alarms',
        description: 'Notifications for prayer times',
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound(
          _m27DefaultNotificationSound,
        ),
        enableVibration: true,
        enableLights: true,
      ),
    );
  }

  Future<void> requestPermissions({bool includeAlarmSettings = false}) async {
    AnalyticsService().trackEvent(
      'notification_permission_request',
      params: {'include_alarm_settings': includeAlarmSettings},
    );
    final androidPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (androidPlugin != null) {
      await androidPlugin.requestNotificationsPermission();
      if (includeAlarmSettings) {
        await androidPlugin.requestExactAlarmsPermission();
        await androidPlugin.requestFullScreenIntentPermission();
        final canScheduleExactAlarm =
            await _nativeAlarmChannel.invokeMethod<bool>(
              'checkExactAlarmPermission',
            ) ??
            true;
        if (!canScheduleExactAlarm) {
          await _nativeAlarmChannel.invokeMethod<bool>(
            'requestExactAlarmPermission',
          );
        }

        final canUseFullScreenIntent =
            await _nativeAlarmChannel.invokeMethod<bool>(
              'checkFullScreenIntentPermission',
            ) ??
            true;
        if (!canUseFullScreenIntent) {
          await _nativeAlarmChannel.invokeMethod<bool>(
            'openFullScreenIntentSettings',
          );
        }
      }
    }

    final iosPlugin = _notificationsPlugin
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >();
    if (iosPlugin != null) {
      await iosPlugin.requestPermissions(alert: true, badge: true, sound: true);
    }
  }

  Future<void> scheduleNotification({
    required int id,
    required String title,
    required String body,
    required DateTime scheduledDate,
    String? payload,
  }) async {
    if (!_isInitialized) {
      await init((_) {});
    }

    if (!PrayerAlarmSchedulePolicy.isSchedulable(
      scheduledDate,
      DateTime.now(),
    )) {
      return;
    }

    final prayerName = payload ?? title;
    final soundAsset = _soundAssetForPrayer();
    final alarmPayload = _alarmPayload(
      id: id,
      prayerName: prayerName,
      scheduledDate: scheduledDate,
      soundAsset: soundAsset,
    );
    AnalyticsService().trackEvent(
      'prayer_alarm_schedule',
      params: {
        'id': id,
        'prayer': prayerName,
        'sound_asset': soundAsset,
        'seconds_until_fire': scheduledDate
            .difference(DateTime.now())
            .inSeconds,
      },
    );

    if (defaultTargetPlatform == TargetPlatform.android) {
      await _nativeAlarmChannel.invokeMethod<bool>('scheduleNativeAlarm', {
        'id': id,
        'title': title,
        'body': body,
        'payload': prayerName,
        'prayerName': prayerName,
        'soundAsset': soundAsset,
        'triggerAtMillis': scheduledDate.millisecondsSinceEpoch,
        'prayerNameLocalized': PrayerAlarmModel.localizedName(prayerName),
      });
      debugPrint('Scheduled native prayer alarm "$title" at $scheduledDate');
      return;
    }

    try {
      await _notificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(scheduledDate, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
            'm27_prayer_channel',
            'Prayer Alarms',
            channelDescription: 'Full-screen alerts for prayer times',
            importance: Importance.max,
            priority: Priority.max,
            fullScreenIntent: true,
            category: AndroidNotificationCategory.alarm,
            audioAttributesUsage: AudioAttributesUsage.alarm,
            playSound: true,
            sound: const RawResourceAndroidNotificationSound(
              _m27DefaultNotificationSound,
            ),
            visibility: NotificationVisibility.public,
            color: AppColors.emerald,
            ongoing: true,
            styleInformation: const BigTextStyleInformation(''),
            ticker: 'Prayer Time: $title',
          ),
          iOS: DarwinNotificationDetails(
            presentAlert: true,
            presentSound: true,
            presentBanner: true,
            sound: _m27DefaultPrayerSound,
            interruptionLevel: InterruptionLevel.critical,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: alarmPayload,
      );
      debugPrint('Scheduled prayer notification "$title" at $scheduledDate');
    } catch (e, stackTrace) {
      debugPrint('Failed to schedule prayer notification "$title": $e');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
  }

  Future<String?> getNativeLaunchPayload() async {
    if (defaultTargetPlatform != TargetPlatform.android) return null;
    try {
      return await _nativeAlarmChannel.invokeMethod<String>(
        'getInitialAlarmPayload',
      );
    } on MissingPluginException {
      // Engine chưa gắn PrayerAlarmBridge (vd. mở từ activity/engine khác).
      return null;
    } on PlatformException {
      return null;
    }
  }

  String _soundAssetForPrayer() {
    return _m27DefaultPrayerSound;
  }

  String _alarmPayload({
    required int id,
    required String prayerName,
    required DateTime scheduledDate,
    required String soundAsset,
  }) {
    return jsonEncode({
      'id': id,
      'prayerName': prayerName,
      'prayerNameLocalized': PrayerAlarmModel.localizedName(prayerName),
      'prayerTime': scheduledDate.toIso8601String(),
      'soundAsset': soundAsset,
      'quote': 'Take a pause from your work and make time for Allah.',
      'snoozeMinutes': 10,
    });
  }
}
