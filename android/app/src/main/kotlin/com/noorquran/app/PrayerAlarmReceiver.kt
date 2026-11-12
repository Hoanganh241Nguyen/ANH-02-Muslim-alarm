package com.noorquran.app

import android.app.AlarmManager
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.os.Build
import android.util.Log
import androidx.core.app.NotificationCompat
import androidx.core.app.NotificationManagerCompat

class PrayerAlarmReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        when (intent.action) {
            ACTION_DISMISS_ALARM -> dismiss(
                context,
                intent.getIntExtra(EXTRA_ID, DEFAULT_ID),
                intent.getLongExtra(EXTRA_SCHEDULED_TIME, 0L),
            )
            ACTION_SNOOZE_ALARM -> snooze(context, PrayerAlarmData.fromIntent(intent))
            else -> fire(context, PrayerAlarmData.fromIntent(intent))
        }
    }

    private fun fire(context: Context, alarm: PrayerAlarmData) {
        if (PrayerAlarmStore.wasRecentlyOpened(context, alarm.id)) {
            Log.d(TAG, "Skipping fallback receiver; alarm activity is already open: id=${alarm.id}")
            return
        }
        if (PrayerAlarmStore.isHandled(context, alarm.scheduledTime)) {
            // The user already stopped this athan (e.g. a duplicate alarm for the same
            // prayer, or the in-app screen); never start it again.
            Log.d(TAG, "Skipping prayer alarm that was already stopped: id=${alarm.id}")
            PrayerAlarmStore.delete(context, alarm.id)
            return
        }
        Log.d(TAG, "Prayer alarm fired: id=${alarm.id} prayer=${alarm.prayerName}")
        createChannel(context)
        PrayerAlarmStore.delete(context, alarm.id)
        if (!isSnoozeId(alarm.id)) {
            PrayerAlarmStore.markFired(context, alarm.prayerName, alarm.scheduledTime)
        }
        PrayerAlarmSoundService.start(context, alarm)

        try {
            NotificationManagerCompat.from(context).notify(alarm.id, buildAlarmNotification(context, alarm))
        } catch (e: SecurityException) {
            Log.w(TAG, "POST_NOTIFICATIONS is not granted; full-screen intent may still open", e)
        }

        launchAlarmActivity(context, alarm)
    }

    companion object {
        const val CHANNEL_ID = "m27_prayer_alarm_fullscreen_v1"
        const val ACTION_OPEN_ALARM = "com.noorquran.app.action.OPEN_ALARM"
        const val ACTION_FIRE_ALARM = "com.noorquran.app.action.FIRE_ALARM"
        const val ACTION_DISMISS_ALARM = "com.noorquran.app.action.DISMISS_ALARM"
        const val ACTION_SNOOZE_ALARM = "com.noorquran.app.action.SNOOZE_ALARM"
        const val EXTRA_ID = "extra_id"
        const val EXTRA_TITLE = "extra_title"
        const val EXTRA_BODY = "extra_body"
        const val EXTRA_PAYLOAD = "extra_payload"
        const val EXTRA_PRAYER_NAME = "extra_prayer_name"
        const val EXTRA_PRAYER_NAME_LOCALIZED = "extra_prayer_name_localized"
        const val EXTRA_SCHEDULED_TIME = "extra_scheduled_time"
        const val EXTRA_QUOTE = "extra_quote"
        const val EXTRA_SOUND_ASSET = "extra_sound_asset"
        const val EXTRA_SNOOZE_MINUTES = "extra_snooze_minutes"
        const val EXTRA_ENABLED = "extra_enabled"
        const val DEFAULT_ID = 9900
        private const val SNOOZE_ID_BASE = 5000
        private const val TAG = "PrayerAlarmReceiver"
        private const val REQUEST_OPEN_OFFSET = 10_000
        private const val REQUEST_DISMISS_OFFSET = 20_000
        private const val REQUEST_SNOOZE_OFFSET = 30_000
        private const val REQUEST_FALLBACK_OFFSET = 40_000

        /** A screen or Dart call may not start the athan more than this long after its time. */
        private const val MAX_RING_DELAY_MS = 60 * 60 * 1000L

        /** ...nor more than this long before it (e.g. the status-bar "next alarm" shortcut). */
        private const val MAX_RING_EARLY_MS = 60 * 1000L

        /** Never schedule an alarm this close to (or before) now. */
        private const val MIN_SCHEDULE_LEAD_MS = 1_000L

        fun isSnoozeId(id: Int): Boolean = id >= SNOOZE_ID_BASE

        /**
         * Whether the athan for [alarm] may start playing now from anything other than the
         * AlarmManager broadcast (alarm activity being (re)created, Dart asking for sound):
         * not stopped by the user already, and not long before/after its time.
         */
        fun canRing(context: Context, alarm: PrayerAlarmData, now: Long = System.currentTimeMillis()): Boolean =
            !PrayerAlarmStore.isHandled(context, alarm.scheduledTime) &&
                isWithinRingWindow(alarm.scheduledTime, now)

        fun isWithinRingWindow(scheduledTime: Long, now: Long): Boolean =
            scheduledTime - now <= MAX_RING_EARLY_MS && now - scheduledTime <= MAX_RING_DELAY_MS

        /**
         * Pure check used by [schedule]: an alarm must be in the future, and a prayer that
         * already rang today must not be scheduled again when prayer times are recomputed
         * (new GPS fix, Umm al-Qura method picked after reverse geocoding, app resume...),
         * otherwise the athan the user just stopped comes back a few minutes later.
         */
        fun shouldSchedule(
            alarm: PrayerAlarmData,
            now: Long,
            alreadyFired: Boolean,
        ): Boolean =
            alarm.enabled &&
                alarm.scheduledTime > now + MIN_SCHEDULE_LEAD_MS &&
                (isSnoozeId(alarm.id) || !alreadyFired)

        fun schedule(context: Context, alarm: PrayerAlarmData) {
            if (!alarm.enabled) return
            val alreadyFired = !isSnoozeId(alarm.id) &&
                PrayerAlarmStore.hasFired(context, alarm.prayerName, alarm.scheduledTime)
            if (!shouldSchedule(alarm, System.currentTimeMillis(), alreadyFired)) {
                Log.d(
                    TAG,
                    "Not scheduling prayer alarm id=${alarm.id} prayer=${alarm.prayerName} " +
                        "at=${alarm.scheduledTime}: past or already rang today",
                )
                if (alreadyFired) {
                    // Drop a stale copy of the same prayer still pending under this id.
                    val alarmManager = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
                    alarmManager.cancel(firePendingIntent(context, alarm))
                    PrayerAlarmStore.delete(context, alarm.id)
                }
                return
            }
            createChannel(context)
            PrayerAlarmStore.save(context, alarm)

            val alarmManager = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
            // The alarm fires this receiver rather than the activity: Android 14+ blocks
            // activity PendingIntents fired by AlarmManager while the app process is dead
            // ("Background activity launch blocked"). The receiver may start the sound
            // service and post the full-screen notification, which opens
            // PrayerAlarmActivity over the lock screen.
            val operation = firePendingIntent(context, alarm)
            val showOperation = PendingIntent.getActivity(
                context,
                alarm.id + REQUEST_OPEN_OFFSET,
                activityIntent(context, alarm),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )

            // Alarms scheduled by older builds targeted the activity directly; drop them.
            cancelLegacyActivityAlarms(context, alarm, alarmManager)

            Log.d(TAG, "Scheduling prayer alarm broadcast: id=${alarm.id} triggerAt=${alarm.scheduledTime}")
            try {
                if (canScheduleExactAlarms(alarmManager)) {
                    alarmManager.setAlarmClock(
                        AlarmManager.AlarmClockInfo(alarm.scheduledTime, showOperation),
                        operation,
                    )
                } else {
                    scheduleInexactAlarm(alarmManager, alarm, operation)
                }
            } catch (e: SecurityException) {
                Log.w(TAG, "Exact alarm permission missing; scheduling inexact alarm for id=${alarm.id}", e)
                scheduleInexactAlarm(alarmManager, alarm, operation)
            }
        }

        fun cancel(context: Context, id: Int) {
            val alarm = PrayerAlarmStore.get(context, id) ?: PrayerAlarmData.fromMap(mapOf("id" to id))
            val alarmManager = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
            alarmManager.cancel(firePendingIntent(context, alarm))
            cancelLegacyActivityAlarms(context, alarm, alarmManager)
            PrayerAlarmStore.delete(context, id)
            NotificationManagerCompat.from(context).cancel(id)
        }

        /**
         * The single stop path (notification "Tắt", alarm screen, back key, timeout): remembers
         * the athan as handled so nothing can restart it, stops the sound service, removes the
         * notification and closes the alarm screen if it is still open.
         */
        fun dismiss(context: Context, id: Int, scheduledTime: Long = 0L) {
            Log.d(TAG, "Dismissing prayer alarm: id=$id")
            val stored = PrayerAlarmStore.get(context, id)?.scheduledTime ?: 0L
            listOf(scheduledTime, stored, PrayerAlarmStore.playingTime(context))
                .filter { it > 0L }
                .distinct()
                .forEach { PrayerAlarmStore.markHandled(context, it) }
            PrayerAlarmStore.delete(context, id)
            PrayerAlarmSoundService.stop(context)
            NotificationManagerCompat.from(context).cancel(id)
            PrayerAlarmActivity.finishCurrent()
        }

        fun snooze(context: Context, alarm: PrayerAlarmData) {
            dismiss(context, alarm.id, alarm.scheduledTime)
            val snoozed = alarm.copy(
                id = snoozeId(alarm.id),
                scheduledTime = System.currentTimeMillis() + alarm.snoozeMinutes * 60_000L,
                body = "Nhắc lại: đã đến giờ ${alarm.prayerName}",
            )
            schedule(context, snoozed)
        }

        /**
         * Prayer alarm ids are consecutive (prayer index + day * 10), so `id + 1` would
         * replace the next prayer's alarm. Snoozes use their own range; a snoozed alarm
         * keeps its id when snoozed again. Must match PrayerAlarmService.snoozeIdFor.
         */
        fun snoozeId(id: Int): Int = if (isSnoozeId(id)) id else SNOOZE_ID_BASE + id

        fun createChannel(context: Context) {
            if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
            val channel = NotificationChannel(
                CHANNEL_ID,
                "Prayer alarms",
                NotificationManager.IMPORTANCE_HIGH,
            ).apply {
                description = "Full-screen alerts for prayer times"
                lockscreenVisibility = Notification.VISIBILITY_PUBLIC
                enableVibration(true)
                enableLights(true)
                setSound(null, null)
            }
            val manager = context.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            manager.createNotificationChannel(channel)
        }

        fun buildAlarmNotification(context: Context, alarm: PrayerAlarmData): Notification {
            val openPendingIntent = PendingIntent.getActivity(
                context,
                alarm.id + REQUEST_OPEN_OFFSET,
                activityIntent(context, alarm),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
            val dismissPendingIntent = PendingIntent.getBroadcast(
                context,
                alarm.id + REQUEST_DISMISS_OFFSET,
                Intent(context, PrayerAlarmReceiver::class.java).apply {
                    action = ACTION_DISMISS_ALARM
                    alarm.putInto(this)
                },
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
            val snoozePendingIntent = PendingIntent.getBroadcast(
                context,
                alarm.id + REQUEST_SNOOZE_OFFSET,
                Intent(context, PrayerAlarmReceiver::class.java).apply {
                    action = ACTION_SNOOZE_ALARM
                    alarm.putInto(this)
                },
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )

            return NotificationCompat.Builder(context, CHANNEL_ID)
                .setSmallIcon(android.R.drawable.ic_lock_idle_alarm)
                .setContentTitle("Đã đến giờ ${alarm.prayerName}")
                .setContentText(alarm.prayerNameLocalized)
                .setStyle(NotificationCompat.BigTextStyle().bigText(alarm.body))
                .setPriority(NotificationCompat.PRIORITY_MAX)
                .setCategory(NotificationCompat.CATEGORY_ALARM)
                .setVisibility(NotificationCompat.VISIBILITY_PUBLIC)
                .setOngoing(true)
                .setAutoCancel(false)
                .setFullScreenIntent(openPendingIntent, true)
                .setContentIntent(openPendingIntent)
                .addAction(android.R.drawable.ic_menu_close_clear_cancel, "Tắt", dismissPendingIntent)
                .addAction(android.R.drawable.ic_popup_sync, "Nhắc lại 10 phút", snoozePendingIntent)
                .build()
        }

        private fun activityIntent(context: Context, alarm: PrayerAlarmData): Intent =
            Intent(context, PrayerAlarmActivity::class.java).apply {
                action = ACTION_OPEN_ALARM
                flags = Intent.FLAG_ACTIVITY_NEW_TASK or
                    Intent.FLAG_ACTIVITY_CLEAR_TOP or
                    Intent.FLAG_ACTIVITY_SINGLE_TOP or
                    Intent.FLAG_ACTIVITY_NO_USER_ACTION
                alarm.putInto(this)
            }

        private fun firePendingIntent(context: Context, alarm: PrayerAlarmData): PendingIntent =
            PendingIntent.getBroadcast(
                context,
                alarm.id,
                Intent(context, PrayerAlarmReceiver::class.java).apply {
                    action = ACTION_FIRE_ALARM
                    alarm.putInto(this)
                },
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )

        private fun cancelLegacyActivityAlarms(
            context: Context,
            alarm: PrayerAlarmData,
            alarmManager: AlarmManager,
        ) {
            listOf(alarm.id, alarm.id + REQUEST_FALLBACK_OFFSET).forEach { requestCode ->
                PendingIntent.getActivity(
                    context,
                    requestCode,
                    activityIntent(context, alarm),
                    PendingIntent.FLAG_NO_CREATE or PendingIntent.FLAG_IMMUTABLE,
                )?.let {
                    alarmManager.cancel(it)
                    it.cancel()
                }
            }
        }

        private fun launchAlarmActivity(context: Context, alarm: PrayerAlarmData) {
            val openPendingIntent = PendingIntent.getActivity(
                context,
                alarm.id + REQUEST_OPEN_OFFSET,
                activityIntent(context, alarm),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
            try {
                openPendingIntent.send()
            } catch (e: PendingIntent.CanceledException) {
                Log.w(TAG, "PendingIntent failed to open PrayerAlarmActivity; trying direct start", e)
                try {
                    context.startActivity(activityIntent(context, alarm))
                } catch (startError: Exception) {
                    Log.e(TAG, "Fallback failed to start PrayerAlarmActivity", startError)
                }
            }
        }

        private fun canScheduleExactAlarms(alarmManager: AlarmManager): Boolean =
            Build.VERSION.SDK_INT < Build.VERSION_CODES.S || alarmManager.canScheduleExactAlarms()

        private fun scheduleInexactAlarm(
            alarmManager: AlarmManager,
            alarm: PrayerAlarmData,
            operation: PendingIntent,
        ) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                alarmManager.setAndAllowWhileIdle(
                    AlarmManager.RTC_WAKEUP,
                    alarm.scheduledTime,
                    operation,
                )
            } else {
                alarmManager.set(
                    AlarmManager.RTC_WAKEUP,
                    alarm.scheduledTime,
                    operation,
                )
            }
        }
    }
}
