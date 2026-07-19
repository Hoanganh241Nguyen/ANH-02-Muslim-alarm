import 'package:flutter/services.dart';

class BatteryService {
  static const _channel = MethodChannel('com.noorquran.app/battery');

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
