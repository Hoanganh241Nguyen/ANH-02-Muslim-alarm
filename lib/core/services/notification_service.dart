import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest.dart' as tz;
import '../constants/app_colors.dart';

class NotificationService {
  static final NotificationService _instance = NotificationService._internal();

  factory NotificationService() => _instance;

  NotificationService._internal();

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();
  static const MethodChannel _nativeAlarmChannel = MethodChannel(
    'com.h01.muslim_alarm/alarm',
  );
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
          color: AppColors.emerald,
        ),
        iOS: const DarwinNotificationDetails(
          presentAlert: true,
          presentSound: true,
          presentBanner: true,
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
    // Channel cho giờ Fajr
    await androidPlugin.createNotificationChannel(
      const AndroidNotificationChannel(
        'prayer_fajr_channel',
        'Fajr Prayer Alarms',
        description: 'Urgent notifications for Fajr prayer',
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound('adhan_fajr'),
        enableVibration: true,
        enableLights: true,
      ),
    );

    await androidPlugin.createNotificationChannel(
      const AndroidNotificationChannel(
        'prayer_regular_channel',
        'Regular Prayer Alarms',
        description: 'Notifications for Dhuhr, Asr, Maghrib, Isha',
        importance: Importance.max,
        playSound: true,
        sound: RawResourceAndroidNotificationSound('adhan'),
        enableVibration: true,
        enableLights: true,
      ),
    );
  }

  Future<void> requestPermissions({bool includeAlarmSettings = false}) async {
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

    if (scheduledDate.isBefore(DateTime.now())) return;

    if (defaultTargetPlatform == TargetPlatform.android) {
      await _nativeAlarmChannel.invokeMethod<bool>('scheduleNativeAlarm', {
        'id': id,
        'title': title,
        'body': body,
        'payload': payload ?? title,
        'triggerAtMillis': scheduledDate.millisecondsSinceEpoch,
      });
      debugPrint('Scheduled native prayer alarm "$title" at $scheduledDate');
      return;
    }

    final isFajr = (payload ?? title).toLowerCase().contains('fajr');
    final channelId = isFajr ? 'prayer_fajr_channel' : 'prayer_regular_channel';
    final soundFile = isFajr ? 'adhan_fajr' : 'adhan';

    try {
      await _notificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        tz.TZDateTime.from(scheduledDate, tz.local),
        NotificationDetails(
          android: AndroidNotificationDetails(
            channelId,
            isFajr ? 'Fajr Prayer Alarms' : 'Regular Prayer Alarms',
            channelDescription: 'Full-screen alerts for prayer times',
            importance: Importance.max,
            priority: Priority.max,
            fullScreenIntent: true,
            category: AndroidNotificationCategory.alarm,
            audioAttributesUsage: AudioAttributesUsage.alarm,
            playSound: true,
            sound: RawResourceAndroidNotificationSound(soundFile),
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
            sound: '$soundFile.wav',
            interruptionLevel: InterruptionLevel.critical,
          ),
        ),
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: payload ?? title,
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
    return _nativeAlarmChannel.invokeMethod<String>('getInitialAlarmPayload');
  }
}
