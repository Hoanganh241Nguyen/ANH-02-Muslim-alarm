import 'package:flutter/material.dart';
import '../../domain/entities/user_stats.dart';
import '../../data/datasources/gamification_local_data_source.dart';

class GamificationProvider extends ChangeNotifier {
  final GamificationLocalDataSource localDataSource;

  GamificationProvider({required this.localDataSource}) {
    _loadStats();
  }

  UserStats? _stats;
  UserStats? get stats => _stats;

  Future<void> _loadStats() async {
    _stats = await localDataSource.getUserStats();
    _checkStreak();
    notifyListeners();
  }

  void _checkStreak() {
    if (_stats == null) return;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastActive = DateTime(
      _stats!.lastActiveDate.year,
      _stats!.lastActiveDate.month,
      _stats!.lastActiveDate.day,
    );

    final difference = today.difference(lastActive).inDays;

    if (difference == 1) {
      // Streak continues - but only increment when they perform an action
    } else if (difference > 1) {
      // Streak lost
      _stats = _stats!.copyWith(
        streakCount: 0,
        lastActiveDate: today.subtract(const Duration(days: 1)),
      );
      localDataSource.saveUserStats(_stats!);
    }
  }

  Future<void> recordAction() async {
    if (_stats == null) return;

    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final lastActive = DateTime(
      _stats!.lastActiveDate.year,
      _stats!.lastActiveDate.month,
      _stats!.lastActiveDate.day,
    );

    final difference = today.difference(lastActive).inDays;

    int newStreak = _stats!.streakCount;
    if (difference == 1) {
      newStreak += 1;
    } else if (difference > 1) {
      newStreak = 1;
    } else if (difference == 0 && newStreak == 0) {
      newStreak = 1;
    }

    _stats = _stats!.copyWith(
      streakCount: newStreak,
      lastActiveDate: now,
      hasanat: _stats!.hasanat + 10, // Default 10 hasanat per action
    );

    await localDataSource.saveUserStats(_stats!);
    notifyListeners();
  }

  Future<void> addHasanat(int amount) async {
    if (_stats == null) return;
    _stats = _stats!.copyWith(hasanat: _stats!.hasanat + amount);
    await localDataSource.saveUserStats(_stats!);
    notifyListeners();
  }
}
