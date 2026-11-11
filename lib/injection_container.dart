import 'package:get_it/get_it.dart';
import 'core/services/holy_message_service.dart';
import 'core/services/remote_config_service.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Features - Home
  // Features - Qibla
  // Features - Quran
  // Features - Gamification`

  // Core
  final remoteConfigService = await RemoteConfigService.getInstance();
  await remoteConfigService.initialize();
  sl.registerSingleton<RemoteConfigService>(remoteConfigService);

  await HolyMessageService.instance.init();

  // External
}
