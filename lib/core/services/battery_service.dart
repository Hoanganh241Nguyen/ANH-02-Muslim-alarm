import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BatteryService {
  static const _channel = MethodChannel('com.noorquran.app/battery');
  static const _boxName = 'battery_prompt_box';
  static const _snoozedUntilKey = 'snoozed_until';
  static const _snoozeDuration = Duration(days: 3);

  /// Whether the battery optimization prompt may be shown now. It stays
  /// quiet for a few days after each time it is shown, so it does not
  /// reappear on every launch or every rebuild of the home page.
  static Future<bool> shouldShowPrompt() async {
    final box = await Hive.openBox(_boxName);
    final snoozedUntil = box.get(_snoozedUntilKey) as int?;
    if (snoozedUntil != null &&
        DateTime.now().millisecondsSinceEpoch < snoozedUntil) {
      return false;
    }
    return !await isBatteryOptimizationIgnored();
  }

  static Future<void> snoozePrompt() async {
    final box = await Hive.openBox(_boxName);
    await box.put(
      _snoozedUntilKey,
      DateTime.now().add(_snoozeDuration).millisecondsSinceEpoch,
    );
  }

  static Future<bool> isBatteryOptimizationIgnored() async {
    try {
      return await _channel.invokeMethod('isBatteryOptimizationIgnored');
    } on PlatformException catch (_) {
      return true;
    }
  }

  static Future<void> requestIgnoreBatteryOptimizations() async {
    try {
      await _channel.invokeMethod('requestIgnoreBatteryOptimizations');
    } on PlatformException catch (_) {
      // Handle error
    }
  }

  static Future<void> openAutostartSettings() async {
    try {
      await _channel.invokeMethod('openAutostartSettings');
    } on PlatformException catch (_) {
      // Handle error
    }
  }
}
