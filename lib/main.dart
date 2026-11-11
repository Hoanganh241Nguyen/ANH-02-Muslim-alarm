import 'dart:async';
import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:provider/provider.dart';
import 'package:audio_service/audio_service.dart';

import 'app.dart';
import 'core/ads/ads_service.dart';
import 'core/ads/app_ads.dart';
import 'features/home/presentation/providers/prayer_time_provider.dart';
import 'features/qibla/presentation/providers/qibla_provider.dart';
import 'features/quran/presentation/provider/quran_provider.dart';
import 'features/quran/data/datasources/quran_local_data_source.dart';
import 'features/gamification/data/datasources/gamification_local_data_source.dart';
import 'features/gamification/presentation/providers/gamification_provider.dart';
import 'features/tasbih/presentation/providers/tasbih_provider.dart';
import 'features/quran/presentation/services/audio_handler.dart';
import 'core/services/analytics_service.dart';
import 'injection_container.dart' as di;

late QuranAudioHandler _audioHandler;

@pragma('vm:entry-point')
Future<void> alarmMain() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebase();
  await Hive.initFlutter();
  await initializeDateFormatting('vi_VN');
  await AnalyticsService().init();
  runApp(const PrayerAlarmApp());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeFirebase();
  await Hive.initFlutter();
  await initializeDateFormatting('vi_VN');
  await di.init();
  await AnalyticsService().init();
  await AnalyticsService().trackEvent('app_open');
  // The ads SDK can take seconds to start; nothing before the first frame
  // needs it, so let it finish in the background.
  unawaited(AdsService.instance.initialize());

  _audioHandler = await AudioService.init(
    builder: () => QuranAudioHandler(),
    config: const AudioServiceConfig(
      androidNotificationChannelId: 'com.h01.muslim_alarm.channel.audio',
      androidNotificationChannelName: 'Quran Playback',
      androidNotificationOngoing: true,
    ),
  );

  final prayerProvider = PrayerTimeProvider();
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
      child: const AppAds(child: MyApp()),
    ),
  );
}

Future<void> _initializeFirebase() async {
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp();
  }

  // Không gửi lỗi từ bản debug (emulator/máy test) lên Crashlytics.
  await FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(!kDebugMode);

  // Lỗi của framework Flutter (layout, rendering...) không làm app tắt,
  // nên ghi là non-fatal để dashboard chỉ còn crash thật.
  FlutterError.onError = (details) {
    FlutterError.presentError(details);
    FirebaseCrashlytics.instance.recordFlutterError(details);
  };
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
}
