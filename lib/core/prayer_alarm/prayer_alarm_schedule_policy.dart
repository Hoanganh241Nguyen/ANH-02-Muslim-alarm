/// When a prayer time may (still) get an athan alarm.
///
/// Alarms are rescheduled whenever prayer times are recomputed (app start or
/// resume, new GPS fix, calculation method picked after reverse geocoding...).
/// A prayer whose time is now or already passed must never be scheduled again,
/// otherwise its athan rings again right after the user stopped it. The native
/// side additionally refuses prayers that already rang today
/// (PrayerAlarmReceiver.shouldSchedule).
class PrayerAlarmSchedulePolicy {
  const PrayerAlarmSchedulePolicy._();

  /// Must match PrayerAlarmReceiver.MIN_SCHEDULE_LEAD_MS on Android.
  static const Duration minLead = Duration(seconds: 1);

  static bool isSchedulable(DateTime prayerTime, DateTime now) =>
      prayerTime.isAfter(now.add(minLead));
}
