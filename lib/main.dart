import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'core/theme/app_theme.dart';
import 'features/splash/presentation/pages/splash_page.dart';
import 'features/home/presentation/providers/prayer_time_provider.dart';
import 'features/home/presentation/pages/prayer_alarm_page.dart';
import 'core/prayer_alarm/prayer_alarm_model.dart';
import 'core/prayer_alarm/prayer_alarm_screen.dart';
import 'features/qibla/presentation/providers/qibla_provider.dart';
import 'features/quran/presentation/provider/quran_provider.dart';
import 'features/quran/data/datasources/quran_local_data_source.dart';
import 'features/gamification/data/datasources/gamification_local_data_source.dart';
import 'features/gamification/presentation/providers/gamification_provider.dart';
import 'features/tasbih/presentation/providers/tasbih_provider.dart';
import 'features/quran/presentation/services/audio_handler.dart';
import 'core/services/notification_service.dart';
import 'injection_container.dart' as di;

late QuranAudioHandler _audioHandler;

@pragma('vm:entry-point')
void alarmMain() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const PrayerAlarmApp());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('vi_VN');
  await di.init();

  // NotificationService sẽ được init trong MyApp để có navigatorKey

  _audioHandler = await AudioService.init(
    builder: () => QuranAudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.h01.muslim_alarm.channel.audio',
      androidNotificationChannelName: 'Quran Playback',
      androidNotificationOngoing: true,
    ),
  );

  final prayerProvider = PrayerTimeProvider();
  prayerProvider.fetchPrayerTimes();

  final gamificationProvider = GamificationProvider(
    localDataSource: GamificationLocalDataSourceImpl(),
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: prayerProvider),
        ChangeNotifierProvider.value(value: gamificationProvider),
        ChangeNotifierProvider(create: (_) => QiblaProvider()),
        ChangeNotifierProvider(
          create: (_) => QuranProvider(
            localDataSource: QuranLocalDataSourceImpl(),
            audioHandler: _audioHandler,
            gamificationProvider: gamificationProvider,
          )..loadSurahs(),
        ),
        ChangeNotifierProvider(create: (_) => TasbihProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class PrayerAlarmApp extends StatelessWidget {
  const PrayerAlarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prayer Alarm',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => PrayerAlarmScreen(alarm: _alarmFromRoute(settings)),
        );
      },
    );
  }

  PrayerAlarmModel _alarmFromRoute(RouteSettings settings) {
    final uri = Uri.parse(settings.name ?? '');
    final query = uri.queryParameters;
    final prayerName = query['prayerName'] ?? 'Prayer';
    return PrayerAlarmModel(
      id: int.tryParse(query['id'] ?? '') ?? 9900,
      prayerName: prayerName,
      prayerNameLocalized:
          query['prayerNameLocalized'] ??
          PrayerAlarmModel.localizedName(prayerName),
      scheduledTime: DateTime.fromMillisecondsSinceEpoch(
        int.tryParse(query['scheduledTime'] ?? '') ??
            DateTime.now().millisecondsSinceEpoch,
      ),
      quote:
          query['quote'] ??
          'Hãy tạm dừng công việc và dành thời gian cho Allah.',
      soundAsset: query['soundAsset'] ?? 'adhan',
      snoozeMinutes: int.tryParse(query['snoozeMinutes'] ?? '') ?? 10,
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    _handleNotificationLaunch();
  }

  Future<void> _handleNotificationLaunch() async {
    // Khởi tạo NotificationService với callback điều hướng
    await NotificationService().init((payload) {
      if (payload != null) {
        _navigateToAlarm(payload);
      }
    });

    // Kiểm tra xem App có được mở từ trạng thái bị kill bởi thông báo không
    final NotificationAppLaunchDetails? notificationAppLaunchDetails =
        await FlutterLocalNotificationsPlugin()
            .getNotificationAppLaunchDetails();

    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      final String? payload =
          notificationAppLaunchDetails?.notificationResponse?.payload;
      if (payload != null) {
        // Sử dụng một vòng lặp nhỏ hoặc check liên tục cho đến khi Navigator sẵn sàng
        _checkAndNavigate(payload);
      }
    }

    final nativeAlarmPayload = await NotificationService()
        .getNativeLaunchPayload();
    if (nativeAlarmPayload != null) {
      _checkAndNavigate(nativeAlarmPayload);
    }
  }

  void _checkAndNavigate(String payload) {
    // Đảm bảo Navigator đã sẵn sàng trước khi push
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_navigatorKey.currentState != null) {
        _navigateToAlarm(payload);
      } else {
        // Thử lại sau 100ms nếu chưa sẵn sàng
        Future.delayed(
          const Duration(milliseconds: 100),
          () => _checkAndNavigate(payload),
        );
      }
    });
  }

  void _navigateToAlarm(String prayerName) {
    _navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => PrayerAlarmPage(prayerName: prayerName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      title: 'H01 Muslim Alarm',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      onGenerateRoute: (settings) {
        final uri = Uri.parse(settings.name ?? '');
        if (uri.path == '/prayer-alarm') {
          final query = uri.queryParameters;
          final prayerName = query['prayerName'] ?? 'Prayer';
          final alarm = PrayerAlarmModel(
            id: int.tryParse(query['id'] ?? '') ?? 9900,
            prayerName: prayerName,
            prayerNameLocalized:
                query['prayerNameLocalized'] ??
                PrayerAlarmModel.localizedName(prayerName),
            scheduledTime: DateTime.fromMillisecondsSinceEpoch(
              int.tryParse(query['scheduledTime'] ?? '') ??
                  DateTime.now().millisecondsSinceEpoch,
            ),
            quote:
                query['quote'] ??
                'Hãy tạm dừng công việc và dành thời gian cho Allah.',
            soundAsset: query['soundAsset'] ?? 'adhan',
            snoozeMinutes: int.tryParse(query['snoozeMinutes'] ?? '') ?? 10,
          );
          return MaterialPageRoute(
            settings: settings,
            builder: (_) => PrayerAlarmScreen(alarm: alarm),
          );
        }
        return null;
      },
      home: const SplashPage(),
    );
  }
}
