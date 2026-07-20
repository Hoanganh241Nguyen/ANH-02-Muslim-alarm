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
            ACTION_DISMISS_ALARM -> dismiss(context, intent.getIntExtra(EXTRA_ID, DEFAULT_ID))
            ACTION_SNOOZE_ALARM -> snooze(context, PrayerAlarmData.fromIntent(intent))
            else -> fire(context, PrayerAlarmData.fromIntent(intent))
        }
    }

    private fun fire(context: Context, alarm: PrayerAlarmData) {
        if (PrayerAlarmStore.wasRecentlyOpened(context, alarm.id)) {
            Log.d(TAG, "Skipping fallback receiver; alarm activity is already open: id=${alarm.id}")
            return
        }
        Log.d(TAG, "Prayer alarm fired: id=${alarm.id} prayer=${alarm.prayerName}")
        createChannel(context)
        PrayerAlarmStore.delete(context, alarm.id)
        PrayerAlarmSoundService.start(context, alarm)

        try {
            NotificationManagerCompat.from(context).notify(alarm.id, buildAlarmNotification(context, alarm))
        } catch (e: SecurityException) {
            Log.w(TAG, "POST_NOTIFICATIONS is not granted; full-screen intent may still open", e)
        }

        try {
            context.startActivity(activityIntent(context, alarm))
        } catch (e: Exception) {
            Log.e(TAG, "Fallback failed to start PrayerAlarmActivity", e)
        }
    }

    companion object {
        const val CHANNEL_ID = "prayer_alarm_channel_app_sound_v2"
        const val ACTION_OPEN_ALARM = "com.noorquran.app.action.OPEN_ALARM"
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
        private const val TAG = "PrayerAlarmReceiver"
        private const val REQUEST_OPEN_OFFSET = 10_000
        private const val REQUEST_DISMISS_OFFSET = 20_000
        private const val REQUEST_SNOOZE_OFFSET = 30_000
        private const val REQUEST_FALLBACK_OFFSET = 40_000

        fun schedule(context: Context, alarm: PrayerAlarmData) {
            if (!alarm.enabled) return
            createChannel(context)
            PrayerAlarmStore.save(context, alarm)

            val alarmManager = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
            val openIntent = activityIntent(context, alarm)
            val operation = PendingIntent.getActivity(
                context,
                alarm.id,
                openIntent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )

            val showOperation = PendingIntent.getActivity(
                context,
                alarm.id + REQUEST_OPEN_OFFSET,
                openIntent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )

            Log.d(TAG, "Scheduling direct activity prayer alarm: id=${alarm.id} triggerAt=${alarm.scheduledTime}")
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                alarmManager.setAlarmClock(
                    AlarmManager.AlarmClockInfo(alarm.scheduledTime, showOperation),
                    operation,
                )
            } else {
                alarmManager.setExact(AlarmManager.RTC_WAKEUP, alarm.scheduledTime, operation)
            }

            scheduleBroadcastFallback(context, alarm, alarmManager)
        }

        fun cancel(context: Context, id: Int) {
            val alarm = PrayerAlarmStore.get(context, id) ?: PrayerAlarmData.fromMap(mapOf("id" to id))
            val alarmManager = context.getSystemService(Context.ALARM_SERVICE) as AlarmManager
            val operation = PendingIntent.getActivity(
                context,
                id,
                activityIntent(context, alarm),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
            alarmManager.cancel(operation)
            alarmManager.cancel(fallbackPendingIntent(context, alarm))
            PrayerAlarmStore.delete(context, id)
            NotificationManagerCompat.from(context).cancel(id)
        }

        fun dismiss(context: Context, id: Int) {
            Log.d(TAG, "Dismissing prayer alarm: id=$id")
            PrayerAlarmStore.delete(context, id)
            PrayerAlarmSoundService.stop(context)
            NotificationManagerCompat.from(context).cancel(id)
        }

        fun snooze(context: Context, alarm: PrayerAlarmData) {
            dismiss(context, alarm.id)
            val snoozed = alarm.copy(
                id = alarm.id + 1,
                scheduledTime = System.currentTimeMillis() + alarm.snoozeMinutes * 60_000L,
                body = "Nhắc lại: đã đến giờ ${alarm.prayerName}",
            )
            schedule(context, snoozed)
        }

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

        private fun scheduleBroadcastFallback(
            context: Context,
            alarm: PrayerAlarmData,
            alarmManager: AlarmManager,
        ) {
            val fallback = fallbackPendingIntent(context, alarm)
            val fallbackAt = alarm.scheduledTime + 2_000L
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                if (Build.VERSION.SDK_INT < Build.VERSION_CODES.S || alarmManager.canScheduleExactAlarms()) {
                    alarmManager.setExactAndAllowWhileIdle(
                        AlarmManager.RTC_WAKEUP,
                        fallbackAt,
                        fallback,
                    )
                } else {
                    alarmManager.setAndAllowWhileIdle(
                        AlarmManager.RTC_WAKEUP,
                        fallbackAt,
                        fallback,
                    )
                }
            } else {
                alarmManager.setExact(AlarmManager.RTC_WAKEUP, fallbackAt, fallback)
            }
        }

        private fun fallbackPendingIntent(context: Context, alarm: PrayerAlarmData): PendingIntent =
            PendingIntent.getBroadcast(
                context,
                alarm.id + REQUEST_FALLBACK_OFFSET,
                Intent(context, PrayerAlarmReceiver::class.java).apply {
                    alarm.putInto(this)
                },
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
    }
}
