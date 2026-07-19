import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

import 'prayer_alarm_model.dart';

class PrayerAlarmStorage {
  static const String _fileName = 'prayer_alarms.json';

  Future<void> save(PrayerAlarmModel alarm) async {
    final alarms = await loadAll();
    alarms.removeWhere((item) => item.id == alarm.id);
    alarms.add(alarm);
    await _write(alarms);
  }

  Future<List<PrayerAlarmModel>> loadAll() async {
    final file = await _file();
    if (!await file.exists()) return const [];
    final raw = await file.readAsString();
    if (raw.trim().isEmpty) return const [];
    final items = jsonDecode(raw) as List<dynamic>;
    return items
        .whereType<Map<String, dynamic>>()
        .map(PrayerAlarmModel.fromJson)
        .toList();
  }

  Future<void> delete(int id) async {
    final alarms = await loadAll();
    alarms.removeWhere((item) => item.id == id);
    await _write(alarms);
  }

  Future<void> clear() => _write(const []);

  Future<void> _write(List<PrayerAlarmModel> alarms) async {
    final file = await _file();
    await file.writeAsString(
      jsonEncode(alarms.map((alarm) => alarm.toJson()).toList()),
    );
  }

  Future<File> _file() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/$_fileName');
  }
}
