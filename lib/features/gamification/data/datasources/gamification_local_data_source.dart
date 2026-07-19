import 'package:hive_flutter/hive_flutter.dart';
import '../../domain/entities/user_stats.dart';

abstract class GamificationLocalDataSource {
  Future<UserStats> getUserStats();
  Future<void> saveUserStats(UserStats stats);
}

class GamificationLocalDataSourceImpl implements GamificationLocalDataSource {
  static const String _boxName = 'gamification_box';
  static const String _statsKey = 'user_stats';

  @override
  Future<UserStats> getUserStats() async {
    final box = await Hive.openBox(_boxName);
    final data = box.get(_statsKey);

    if (data == null) {
      return UserStats(
        hasanat: 0,
        streakCount: 0,
        lastActiveDate: DateTime.now().subtract(const Duration(days: 1)),
      );
    }

    final Map<dynamic, dynamic> map = data as Map;
    return UserStats(
      hasanat: map['hasanat'] ?? 0,
      streakCount: map['streakCount'] ?? 0,
      lastActiveDate: DateTime.parse(map['lastActiveDate']),
    );
  }

  @override
  Future<void> saveUserStats(UserStats stats) async {
    final box = await Hive.openBox(_boxName);
    await box.put(_statsKey, {
      'hasanat': stats.hasanat,
      'streakCount': stats.streakCount,
      'lastActiveDate': stats.lastActiveDate.toIso8601String(),
    });
  }
}
