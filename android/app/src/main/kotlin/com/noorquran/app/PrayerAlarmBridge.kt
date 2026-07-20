package com.noorquran.app

import android.app.Activity
import android.app.AlarmManager
import android.app.NotificationManager
import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.provider.Settings
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class PrayerAlarmBridge(
    private val activity: Activity,
    flutterEngine: FlutterEngine,
) {
    private val channel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "scheduleNativeAlarm" -> {
                    val alarm = PrayerAlarmData.fromMap(call.arguments as? Map<*, *>)
                    PrayerAlarmReceiver.schedule(activity, alarm)
                    result.success(true)
                }
                "cancelNativeAlarm" -> {
                    val id = call.argument<Int>("id") ?: 0
                    PrayerAlarmReceiver.cancel(activity, id)
                    result.success(true)
                }
                "cancelAllNativeAlarms" -> {
                    PrayerAlarmStore.clear(activity)
                    PrayerAlarmSoundService.stop(activity)
                    result.success(true)
                }
                "snoozeNativeAlarm" -> {
                    val alarm = PrayerAlarmData.fromMap(call.arguments as? Map<*, *>)
                    PrayerAlarmReceiver.snooze(activity, alarm)
                    result.success(true)
                }
                "dismissAlarm" -> {
                    val id = call.argument<Int>("id") ?: PrayerAlarmReceiver.DEFAULT_ID
                    (activity as? PrayerAlarmActivity)?.markDismissedByFlutter()
                    PrayerAlarmReceiver.dismiss(activity, id)
                    result.success(true)
                }
                "closeAlarmActivity" -> {
                    (activity as? PrayerAlarmActivity)?.markDismissedByFlutter()
                    activity.finishAndRemoveTask()
                    result.success(true)
                }
                "getInitialAlarmPayload" -> {
                    result.success(activity.intent?.getStringExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD))
                }
                "checkExactAlarmPermission" -> {
                    result.success(canScheduleExactAlarms())
                }
                "requestExactAlarmPermission" -> {
                    requestExactAlarmPermission()
                    result.success(true)
                }
                "checkFullScreenIntentPermission" -> {
                    result.success(canUseFullScreenIntent())
                }
                "openFullScreenIntentSettings" -> {
                    openFullScreenIntentSettings()
                    result.success(true)
                }
                else -> result.notImplemented()
            }
        }
    }

    fun dispatchAlarm(payload: String?) {
        channel.invokeMethod("onNativeAlarm", payload)
    }

    private fun canScheduleExactAlarms(): Boolean {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.S) return true
        val alarmManager = activity.getSystemService(Context.ALARM_SERVICE) as AlarmManager
        return alarmManager.canScheduleExactAlarms()
    }

    private fun requestExactAlarmPermission() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.S || canScheduleExactAlarms()) return
        activity.startActivity(
            Intent(Settings.ACTION_REQUEST_SCHEDULE_EXACT_ALARM).apply {
                data = Uri.parse("package:${activity.packageName}")
            },
        )
    }

    private fun canUseFullScreenIntent(): Boolean {
        if (Build.VERSION.SDK_INT < 34) return true
        val manager = activity.getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        return manager.canUseFullScreenIntent()
    }

    private fun openFullScreenIntentSettings() {
        if (Build.VERSION.SDK_INT < 34 || canUseFullScreenIntent()) return
        activity.startActivity(
            Intent("android.settings.MANAGE_APP_USE_FULL_SCREEN_INTENT").apply {
                data = Uri.parse("package:${activity.packageName}")
            },
        )
    }

    companion object {
        const val CHANNEL = "com.h01.muslim_alarm/alarm"
    }
}
