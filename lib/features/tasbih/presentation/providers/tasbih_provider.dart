import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

enum TasbihMode {
  free('Free', 0),
  count33('33', 33),
  count99('99', 99),
  count100('100', 100),
  custom('Custom', 500);

  const TasbihMode(this.label, this.defaultGoal);

  final String label;
  final int defaultGoal;
}

class TasbihStats {
  const TasbihStats({
    this.today = 0,
    this.week = 0,
    this.month = 0,
    this.lifetime = 0,
    this.currentStreak = 1,
    this.longestStreak = 1,
  });

  final int today;
  final int week;
  final int month;
  final int lifetime;
  final int currentStreak;
  final int longestStreak;

  Map<String, Object?> toJson() => {
    'today': today,
    'week': week,
    'month': month,
    'lifetime': lifetime,
    'currentStreak': currentStreak,
    'longestStreak': longestStreak,
  };

  factory TasbihStats.fromJson(Map<String, dynamic> json) => TasbihStats(
    today: (json['today'] as num?)?.toInt() ?? 0,
    week: (json['week'] as num?)?.toInt() ?? 0,
    month: (json['month'] as num?)?.toInt() ?? 0,
    lifetime: (json['lifetime'] as num?)?.toInt() ?? 0,
    currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 1,
    longestStreak: (json['longestStreak'] as num?)?.toInt() ?? 1,
  );

  TasbihStats increment() => TasbihStats(
    today: today + 1,
    week: week + 1,
    month: month + 1,
    lifetime: lifetime + 1,
    currentStreak: currentStreak,
    longestStreak: longestStreak,
  );

  TasbihStats decrement() => TasbihStats(
    today: today > 0 ? today - 1 : 0,
    week: week > 0 ? week - 1 : 0,
    month: month > 0 ? month - 1 : 0,
    lifetime: lifetime > 0 ? lifetime - 1 : 0,
    currentStreak: currentStreak,
    longestStreak: longestStreak,
  );
}

class TasbihProvider extends ChangeNotifier {
  TasbihProvider() {
    _load();
  }

  int _count = 0;
  int get count => _count;

  int _lastCount = 0;
  int get lastCount => _lastCount;

  String _currentDhikr = 'SubhanAllah';
  String get currentDhikr => _currentDhikr;

  TasbihMode _mode = TasbihMode.count99;
  TasbihMode get mode => _mode;

  int _customGoal = 500;
  int get customGoal => _customGoal;

  int get goal => _mode == TasbihMode.free
      ? 0
      : _mode == TasbihMode.custom
      ? _customGoal
      : _mode.defaultGoal;

  bool get hasGoal => goal > 0;

  bool _isVibrationEnabled = true;
  bool get isVibrationEnabled => _isVibrationEnabled;

  bool _isSoundEnabled = true;
  bool get isSoundEnabled => _isSoundEnabled;

  bool _autoSave = true;
  bool get autoSave => _autoSave;

  TasbihStats _stats = const TasbihStats();
  TasbihStats get stats => _stats;

  final List<String> _dhikrs = [
    'SubhanAllah',
    'Alhamdulillah',
    'Allahu Akbar',
    'La ilaha illallah',
    'Astaghfirullah',
  ];
  List<String> get dhikrs => List.unmodifiable(_dhikrs);

  double get progress {
    if (!hasGoal) return 0;
    return (_count / goal).clamp(0.0, 1.0);
  }

  String get progressText => hasGoal ? '$_count / $goal' : '$_count';

  void toggleVibration() {
    _isVibrationEnabled = !_isVibrationEnabled;
    _saveAndNotify();
  }

  void toggleSound() {
    _isSoundEnabled = !_isSoundEnabled;
    _saveAndNotify();
  }

  void toggleAutoSave() {
    _autoSave = !_autoSave;
    _saveAndNotify();
  }

  void increment() {
    _lastCount = _count;
    _count++;
    _stats = _stats.increment();
    _saveAndNotify();
  }

  void undo() {
    if (_count <= 0) return;
    _count--;
    _stats = _stats.decrement();
    _saveAndNotify();
  }

  void reset() {
    _lastCount = _count;
    _count = 0;
    _saveAndNotify();
  }

  void setDhikr(String dhikr) {
    _currentDhikr = dhikr;
    _count = 0;
    _saveAndNotify();
  }

  void addCustomDhikr(String dhikr) {
    final value = dhikr.trim();
    if (value.isEmpty || _dhikrs.contains(value)) return;
    _dhikrs.add(value);
    _currentDhikr = value;
    _count = 0;
    _saveAndNotify();
  }

  void setMode(TasbihMode mode, {int? customGoal}) {
    _mode = mode;
    if (customGoal != null && customGoal > 0) {
      _customGoal = customGoal;
    }
    _count = 0;
    _saveAndNotify();
  }

  Future<void> _load() async {
    try {
      final file = await _stateFile();
      if (!await file.exists()) return;
      final json =
          jsonDecode(await file.readAsString()) as Map<String, dynamic>;
      _count = (json['count'] as num?)?.toInt() ?? 0;
      _lastCount = (json['lastCount'] as num?)?.toInt() ?? 0;
      _currentDhikr = json['currentDhikr'] as String? ?? _currentDhikr;
      _mode = TasbihMode.values.firstWhere(
        (mode) => mode.name == json['mode'],
        orElse: () => TasbihMode.count99,
      );
      _customGoal = (json['customGoal'] as num?)?.toInt() ?? 500;
      _isVibrationEnabled = json['isVibrationEnabled'] as bool? ?? true;
      _isSoundEnabled = json['isSoundEnabled'] as bool? ?? true;
      _autoSave = json['autoSave'] as bool? ?? true;
      final customDhikrs = (json['dhikrs'] as List<dynamic>?)
          ?.whereType<String>()
          .toList();
      if (customDhikrs != null) {
        for (final dhikr in customDhikrs) {
          if (!_dhikrs.contains(dhikr)) _dhikrs.add(dhikr);
        }
      }
      _stats = TasbihStats.fromJson(
        (json['stats'] as Map?)?.cast<String, dynamic>() ?? const {},
      );
      notifyListeners();
    } catch (_) {
      // Keep defaults when local state is unavailable.
    }
  }

  Future<void> _save() async {
    if (!_autoSave) return;
    final file = await _stateFile();
    await file.writeAsString(
      jsonEncode({
        'count': _count,
        'lastCount': _lastCount,
        'currentDhikr': _currentDhikr,
        'mode': _mode.name,
        'customGoal': _customGoal,
        'isVibrationEnabled': _isVibrationEnabled,
        'isSoundEnabled': _isSoundEnabled,
        'autoSave': _autoSave,
        'dhikrs': _dhikrs,
        'stats': _stats.toJson(),
      }),
    );
  }

  void _saveAndNotify() {
    notifyListeners();
    _save();
  }

  Future<File> _stateFile() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/tasbih_state.json');
  }
}
