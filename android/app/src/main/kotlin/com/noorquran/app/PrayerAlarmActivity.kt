package com.noorquran.app

import android.os.Build
import android.os.Bundle
import android.util.Log
import android.view.WindowManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import java.net.URLEncoder

class PrayerAlarmActivity : FlutterActivity() {
    private var alarmBridge: PrayerAlarmBridge? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        showOverLockScreen()
        super.onCreate(savedInstanceState)
        openAlarm(intent)
        Log.d(TAG, "Flutter prayer alarm activity opened")
    }

    override fun onNewIntent(intent: android.content.Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        openAlarm(intent)
        alarmBridge?.dispatchAlarm(intent.getStringExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD))
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        alarmBridge = PrayerAlarmBridge(this, flutterEngine)
    }

    override fun getInitialRoute(): String {
        val alarm = PrayerAlarmData.fromIntent(intent)
        return "/prayer-alarm" +
            "?id=${alarm.id}" +
            "&prayerName=${encode(alarm.prayerName)}" +
            "&prayerNameLocalized=${encode(alarm.prayerNameLocalized)}" +
            "&scheduledTime=${alarm.scheduledTime}" +
            "&quote=${encode(alarm.quote)}" +
            "&soundAsset=${encode(alarm.soundAsset)}" +
            "&snoozeMinutes=${alarm.snoozeMinutes}"
    }

    override fun getDartEntrypointFunctionName(): String = "alarmMain"

    private fun showOverLockScreen() {
        @Suppress("DEPRECATION")
        window.addFlags(
            WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON or
                WindowManager.LayoutParams.FLAG_ALLOW_LOCK_WHILE_SCREEN_ON or
                WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED or
                WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON,
        )

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O_MR1) {
            setShowWhenLocked(true)
            setTurnScreenOn(true)
        }
    }

    private fun openAlarm(intent: android.content.Intent?) {
        val alarm = PrayerAlarmData.fromIntent(intent ?: android.content.Intent())
        PrayerAlarmStore.markOpened(this, alarm.id)
        PrayerAlarmStore.delete(this, alarm.id)
        PrayerAlarmReceiver.createChannel(this)
        PrayerAlarmSoundService.start(this, alarm)
        try {
            androidx.core.app.NotificationManagerCompat.from(this)
                .notify(alarm.id, PrayerAlarmReceiver.buildAlarmNotification(this, alarm))
        } catch (_: SecurityException) {
        }
    }

    private fun encode(value: String): String = URLEncoder.encode(value, "UTF-8")

    companion object {
        private const val TAG = "PrayerAlarmActivity"
    }
}
