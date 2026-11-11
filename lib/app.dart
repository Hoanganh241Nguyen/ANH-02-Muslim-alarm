import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/prayer_alarm/prayer_alarm_model.dart';
import 'core/prayer_alarm/prayer_alarm_screen.dart';
import 'core/services/in_app_prayer_scheduler.dart';
import 'core/services/notification_service.dart';
import 'core/theme/app_theme.dart';
import 'features/home/presentation/pages/prayer_alarm_page.dart';
import 'features/onboarding/presentation/pages/onboarding_gate.dart';
import 'features/splash/presentation/pages/splash_page.dart';
import 'language/generated/app_localizations.dart';

class PrayerAlarmApp extends StatelessWidget {
  const PrayerAlarmApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Box>(
      future: Hive.openBox(OnboardingGate.boxName),
      builder: (context, snapshot) {
        final box = snapshot.data;
        return MaterialApp(
          onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: _localeFromBox(box),
          theme: AppTheme.light,
          darkTheme: AppTheme.dark,
          themeMode: _themeModeFromBox(box),
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              settings: settings,
              builder: (context) =>
                  PrayerAlarmScreen(alarm: _alarmFromRoute(context, settings)),
            );
          },
        );
      },
    );
  }

  PrayerAlarmModel _alarmFromRoute(
    BuildContext context,
    RouteSettings settings,
  ) {
    final uri = Uri.parse(settings.name ?? '');
    final query = uri.queryParameters;
    final prayerName = query['prayerName'] ?? 'Prayer';
    return PrayerAlarmModel(
      id: int.tryParse(query['id'] ?? '') ?? 9900,
      prayerName: prayerName,
      prayerNameLocalized:
          query['prayerNameLocalized'] ??
          AppLocalizations.of(context).prayerTimeArrived(prayerName),
      scheduledTime: DateTime.fromMillisecondsSinceEpoch(
        int.tryParse(query['scheduledTime'] ?? '') ??
            DateTime.now().millisecondsSinceEpoch,
      ),
      quote:
          query['quote'] ??
          AppLocalizations.of(context).prayerAlarmDefaultQuote,
      soundAsset: query['soundAsset'] ?? 'noti_adhan_al_afassi.mp3',
      snoozeMinutes: int.tryParse(query['snoozeMinutes'] ?? '') ?? 10,
    );
  }

  ThemeMode _themeModeFromBox(Box? box) {
    final theme =
        box?.get('theme', defaultValue: 'light') as String? ?? 'light';
    return theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  Locale? _localeFromBox(Box? box) {
    final language =
        box?.get('language', defaultValue: 'en') as String? ?? 'en';
    return AppLocalizations.supportedLocales.any(
          (locale) => locale.languageCode == language,
        )
        ? Locale(language)
        : const Locale('en');
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  late final Future<Box> _onboardingBoxFuture;

  @override
  void initState() {
    super.initState();
    _onboardingBoxFuture = Hive.openBox(OnboardingGate.boxName);
    InAppPrayerScheduler.instance.registerNavigator(_navigatorKey);
    _handleNotificationLaunch();
  }

  Future<void> _handleNotificationLaunch() async {
    await NotificationService().init((payload) {
      if (payload != null) {
        _navigateToAlarm(payload);
      }
    });

    NotificationAppLaunchDetails? notificationAppLaunchDetails;
    try {
      notificationAppLaunchDetails = await FlutterLocalNotificationsPlugin()
          .getNotificationAppLaunchDetails();
    } on MissingPluginException {
      notificationAppLaunchDetails = null;
    }

    if (notificationAppLaunchDetails?.didNotificationLaunchApp ?? false) {
      final String? payload =
          notificationAppLaunchDetails?.notificationResponse?.payload;
      if (payload != null) {
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_navigatorKey.currentState != null) {
        _navigateToAlarm(payload);
      } else {
        Future.delayed(
          const Duration(milliseconds: 100),
          () => _checkAndNavigate(payload),
        );
      }
    });
  }

  void _navigateToAlarm(String payload) {
    final alarm = _alarmFromPayload(_navigatorKey.currentContext!, payload);
    _navigatorKey.currentState?.push(
      MaterialPageRoute(
        settings: const RouteSettings(
          name: InAppPrayerScheduler.alarmRouteName,
        ),
        builder: (context) => PrayerAlarmPage(
          id: alarm.id,
          prayerName: alarm.prayerName,
          scheduledTime: alarm.scheduledTime,
          quote: alarm.quote,
          soundAsset: alarm.soundAsset,
        ),
      ),
    );
  }

  PrayerAlarmModel _alarmFromPayload(BuildContext context, String payload) {
    try {
      final decoded = jsonDecode(payload);
      if (decoded is Map<String, dynamic>) {
        final prayerName =
            decoded['prayerName'] as String? ??
            decoded['payload'] as String? ??
            'Prayer';
        final prayerTimeValue = decoded['prayerTime'];
        final prayerTime = prayerTimeValue is num
            ? DateTime.fromMillisecondsSinceEpoch(prayerTimeValue.toInt())
            : DateTime.tryParse(prayerTimeValue as String? ?? '');
        return PrayerAlarmModel(
          id: (decoded['id'] as num?)?.toInt() ?? 9900,
          prayerName: prayerName,
          prayerNameLocalized:
              decoded['prayerNameLocalized'] as String? ??
              AppLocalizations.of(context).prayerAlarmDefaultName,
          scheduledTime: prayerTime ?? DateTime.now(),
          quote:
              decoded['quote'] as String? ??
              AppLocalizations.of(context).prayerAlarmDefaultQuote,
          soundAsset:
              decoded['soundAsset'] as String? ?? 'noti_adhan_al_afassi.mp3',
          snoozeMinutes: (decoded['snoozeMinutes'] as num?)?.toInt() ?? 10,
        );
      }
    } catch (_) {}

    return PrayerAlarmModel(
      id: 9900,
      prayerName: payload,
      prayerNameLocalized: AppLocalizations.of(context).prayerAlarmDefaultName,
      scheduledTime: DateTime.now(),
      quote: AppLocalizations.of(context).prayerAlarmDefaultQuote,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Box>(
      future: _onboardingBoxFuture,
      builder: (context, snapshot) {
        final box = snapshot.data;
        if (box == null) {
          return _buildMaterialApp(
            themeMode: ThemeMode.light,
            locale: const Locale('en'),
          );
        }

        return ValueListenableBuilder<Box>(
          valueListenable: box.listenable(keys: const ['theme', 'language']),
          builder: (context, box, child) {
            return _buildMaterialApp(
              themeMode: _themeModeFromBox(box),
              locale: _localeFromBox(box),
            );
          },
        );
      },
    );
  }

  ThemeMode _themeModeFromBox(Box box) {
    final theme = box.get('theme', defaultValue: 'light') as String;
    return theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  Locale? _localeFromBox(Box box) {
    final language = box.get('language', defaultValue: 'en') as String;
    return AppLocalizations.supportedLocales.any(
          (locale) => locale.languageCode == language,
        )
        ? Locale(language)
        : const Locale('en');
  }

  Widget _buildMaterialApp({
    required ThemeMode themeMode,
    required Locale? locale,
  }) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: locale,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
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
                AppLocalizations.of(context).prayerAlarmDefaultName,
            scheduledTime: DateTime.fromMillisecondsSinceEpoch(
              int.tryParse(query['scheduledTime'] ?? '') ??
                  DateTime.now().millisecondsSinceEpoch,
            ),
            quote:
                query['quote'] ??
                AppLocalizations.of(context).prayerAlarmDefaultQuote,
            soundAsset: query['soundAsset'] ?? 'noti_adhan_al_afassi.mp3',
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
