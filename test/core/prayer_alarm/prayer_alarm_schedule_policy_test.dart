import 'package:flutter_test/flutter_test.dart';
import 'package:h01_muslim_alarm/core/prayer_alarm/prayer_alarm_schedule_policy.dart';

void main() {
  // Asia/Riyadh has no DST; a fixed local time is enough here.
  final now = DateTime(2026, 11, 12, 12, 0, 0);

  group('PrayerAlarmSchedulePolicy.isSchedulable', () {
    test('future prayer is scheduled', () {
      expect(
        PrayerAlarmSchedulePolicy.isSchedulable(
          now.add(const Duration(minutes: 30)),
          now,
        ),
        isTrue,
      );
    });

    test('prayer exactly now is not rescheduled', () {
      expect(PrayerAlarmSchedulePolicy.isSchedulable(now, now), isFalse);
    });

    test('prayer within the lead time is not rescheduled', () {
      expect(
        PrayerAlarmSchedulePolicy.isSchedulable(
          now.add(const Duration(milliseconds: 500)),
          now,
        ),
        isFalse,
      );
    });

    test('prayer that just passed (athan ringing / stopped) is skipped', () {
      expect(
        PrayerAlarmSchedulePolicy.isSchedulable(
          now.subtract(const Duration(seconds: 20)),
          now,
        ),
        isFalse,
      );
    });

    test('filters a day of prayer times when recomputed mid-day', () {
      final times = [
        DateTime(2026, 11, 12, 5, 6), // Fajr
        DateTime(2026, 11, 12, 11, 59, 40), // Dhuhr, just rang
        DateTime(2026, 11, 12, 15, 4), // Asr
        DateTime(2026, 11, 12, 17, 32), // Maghrib
        DateTime(2026, 11, 12, 19, 2), // Isha
      ];
      final scheduled = times
          .where((t) => PrayerAlarmSchedulePolicy.isSchedulable(t, now))
          .toList();
      expect(scheduled, times.sublist(2));
    });
  });
}
