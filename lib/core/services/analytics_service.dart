import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class AnalyticsService {
  AnalyticsService._();

  static final AnalyticsService _instance = AnalyticsService._();

  factory AnalyticsService() => _instance;

  final Map<String, int> _counters = {};
  final List<Map<String, Object?>> _recentEvents = [];
  final FirebaseAnalytics _firebaseAnalytics = FirebaseAnalytics.instance;
  Future<void>? _initFuture;
  Timer? _saveDebounce;
  bool _initialized = false;

  Future<void> init() {
    return _initFuture ??= _load();
  }

  Future<void> trackScreenView(
    String screen, {
    String? source,
    Map<String, Object?> params = const {},
  }) async {
    await init();
    final count = _increment('screen:$screen');
    _record('screen_view', {
      'screen': screen,
      'source': source,
      'visit_count': count,
      'is_revisit': count > 1,
      ...params,
    });
  }

  Future<void> trackButtonTap(
    String screen,
    String button, {
    Map<String, Object?> params = const {},
  }) async {
    await init();
    final count = _increment('button:$screen:$button');
    _record('button_tap', {
      'screen': screen,
      'button': button,
      'tap_count': count,
      ...params,
    });
  }

  Future<void> trackEvent(
    String name, {
    Map<String, Object?> params = const {},
  }) async {
    await init();
    final count = _increment('event:$name');
    _record(name, {'event_count': count, ...params});
  }

  Future<Map<String, int>> countersSnapshot() async {
    await init();
    return Map.unmodifiable(_counters);
  }

  int counter(String key) => _counters[key] ?? 0;

  int _increment(String key) {
    final next = (_counters[key] ?? 0) + 1;
    _counters[key] = next;
    return next;
  }

  void _record(String name, Map<String, Object?> params) {
    final cleanParams = _cleanParams(params);
    final event = <String, Object?>{
      'name': name,
      'timestamp': DateTime.now().toIso8601String(),
      'params': cleanParams,
    };
    _recentEvents.add(event);
    if (_recentEvents.length > 200) {
      _recentEvents.removeRange(0, _recentEvents.length - 200);
    }
    if (kDebugMode) {
      debugPrint('[analytics] $name ${jsonEncode(event['params'])}');
    }
    unawaited(
      _firebaseAnalytics.logEvent(
        name: _firebaseEventName(name),
        parameters: _firebaseParams(cleanParams),
      ),
    );
    _scheduleSave();
  }

  Map<String, Object?> _cleanParams(Map<String, Object?> params) {
    final clean = <String, Object?>{};
    for (final entry in params.entries) {
      final value = entry.value;
      if (value == null || value is String || value is num || value is bool) {
        clean[entry.key] = value;
      } else {
        clean[entry.key] = value.toString();
      }
    }
    return clean;
  }

  String _firebaseEventName(String name) {
    final normalized = name
        .replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_')
        .replaceAll(RegExp(r'_+'), '_');
    final trimmed = normalized.length > 40
        ? normalized.substring(0, 40)
        : normalized;
    return trimmed.isEmpty ? 'app_event' : trimmed;
  }

  Map<String, Object> _firebaseParams(Map<String, Object?> params) {
    final firebaseParams = <String, Object>{};
    for (final entry in params.entries) {
      final value = entry.value;
      if (value == null) continue;
      final key = _firebaseEventName(entry.key);

      if (value is bool) {
        firebaseParams[key] = value ? 1 : 0;
      } else if (value is String || value is num) {
        firebaseParams[key] = value;
      } else {
        firebaseParams[key] = value.toString();
      }
    }
    return firebaseParams;
  }

  Future<void> _load() async {
    if (_initialized) return;
    try {
      final file = await _stateFile();
      if (await file.exists()) {
        final json = jsonDecode(await file.readAsString());
        if (json is Map<String, dynamic>) {
          final counters = json['counters'];
          if (counters is Map) {
            _counters
              ..clear()
              ..addAll(
                counters.map(
                  (key, value) => MapEntry(
                    key.toString(),
                    value is num ? value.toInt() : 0,
                  ),
                ),
              );
          }
          final recentEvents = json['recentEvents'];
          if (recentEvents is List) {
            _recentEvents
              ..clear()
              ..addAll(
                recentEvents.whereType<Map>().map((event) {
                  return event.map(
                    (key, value) => MapEntry(key.toString(), value),
                  );
                }),
              );
          }
        }
      }
    } catch (error) {
      debugPrint('Could not load analytics state: $error');
    }
    _initialized = true;
  }

  Future<void> _save() async {
    try {
      final file = await _stateFile();
      await file.writeAsString(
        jsonEncode({
          'counters': _counters,
          'recentEvents': _recentEvents,
          'updatedAt': DateTime.now().toIso8601String(),
        }),
      );
    } catch (error) {
      debugPrint('Could not save analytics state: $error');
    }
  }

  void _scheduleSave() {
    _saveDebounce?.cancel();
    _saveDebounce = Timer(const Duration(milliseconds: 1200), _save);
  }

  Future<void> flush() async {
    _saveDebounce?.cancel();
    _saveDebounce = null;
    await _save();
  }

  Future<File> _stateFile() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/analytics_counts.json');
  }
}
