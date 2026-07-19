import 'package:equatable/equatable.dart';

class UserStats extends Equatable {
  final int hasanat;
  final int streakCount;
  final DateTime lastActiveDate;

  const UserStats({
    required this.hasanat,
    required this.streakCount,
    required this.lastActiveDate,
  });

  @override
  List<Object?> get props => [hasanat, streakCount, lastActiveDate];

  UserStats copyWith({
    int? hasanat,
    int? streakCount,
    DateTime? lastActiveDate,
  }) {
    return UserStats(
      hasanat: hasanat ?? this.hasanat,
      streakCount: streakCount ?? this.streakCount,
      lastActiveDate: lastActiveDate ?? this.lastActiveDate,
    );
  }
}
