package com.noorquran.app

import android.os.Build
import android.os.Bundle
import android.util.Log
import android.view.WindowManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import java.lang.ref.WeakReference
import java.net.URLEncoder

class PrayerAlarmActivity : FlutterActivity() {
    private var alarmBridge: PrayerAlarmBridge? = null
    private var currentAlarmId: Int = PrayerAlarmReceiver.DEFAULT_ID
    private var currentAlarmTime: Long = 0L
    private var dismissedByFlutter = false

    // True only while this screen is showing an athan that is (allowed to be) ringing.
    private var ringing = false

    override fun onCreate(savedInstanceState: Bundle?) {
        showOverLockScreen()
        super.onCreate(savedInstanceState)
        current = WeakReference(this)
        if (!openAlarm(intent)) return
        Log.d(TAG, "Flutter prayer alarm activity opened")
    }

    override fun onNewIntent(intent: android.content.Intent) {
        super.onNewIntent(intent)
        val alarm = PrayerAlarmData.fromIntent(intent)
        if (ringing && alarm.id == currentAlarmId && alarm.scheduledTime == currentAlarmTime) {
            // Same athan re-delivered (alarm broadcast + full-screen intent both open us):
            // keep the screen that is already there instead of stacking a second one.
            return
        }
        setIntent(intent)
        if (!openAlarm(intent)) return
        flutterEngine?.navigationChannel?.pushRoute(getInitialRoute())
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

    /**
     * Starts the athan for the alarm in [intent], or closes this screen when that athan was
     * already stopped / is not due (activity recreated, reopened from the notification after
     * "Tắt", opened early from the status-bar alarm shortcut). Returns whether it rings.
     */
    private fun openAlarm(intent: android.content.Intent?): Boolean {
        val alarm = PrayerAlarmData.fromIntent(intent ?: android.content.Intent())
        if (!PrayerAlarmReceiver.canRing(this, alarm)) {
            Log.d(TAG, "Not ringing prayer alarm id=${alarm.id}: already stopped or not due")
            ringing = false
            dismissedByFlutter = true // nothing to dismiss; don't mark anything handled
            if (alarm.scheduledTime > System.currentTimeMillis()) {
                // Opened early from the system "next alarm" shortcut: show the app instead.
                try {
                    startActivity(
                        android.content.Intent(this, MainActivity::class.java)
                            .addFlags(android.content.Intent.FLAG_ACTIVITY_NEW_TASK),
                    )
                } catch (_: Exception) {
                }
            }
            finishAndRemoveTask()
            return false
        }
        currentAlarmId = alarm.id
        currentAlarmTime = alarm.scheduledTime
        ringing = true
        dismissedByFlutter = false
        PrayerAlarmStore.markOpened(this, alarm.id)
        PrayerAlarmStore.delete(this, alarm.id)
        PrayerAlarmReceiver.createChannel(this)
        PrayerAlarmSoundService.start(this, alarm)
        try {
            androidx.core.app.NotificationManagerCompat.from(this)
                .notify(alarm.id, PrayerAlarmReceiver.buildAlarmNotification(this, alarm))
        } catch (_: SecurityException) {
        }
        return true
    }

    fun markDismissedByFlutter() {
        dismissedByFlutter = true
    }

    override fun onDestroy() {
        if (current?.get() === this) current = null
        if (isFinishing && ringing && !dismissedByFlutter) {
            dismissedByFlutter = true
            PrayerAlarmReceiver.dismiss(this, currentAlarmId, currentAlarmTime)
        }
        super.onDestroy()
    }

    private fun encode(value: String): String = URLEncoder.encode(value, "UTF-8")

    companion object {
        private const val TAG = "PrayerAlarmActivity"
        private var current: WeakReference<PrayerAlarmActivity>? = null

        /** Closes the alarm screen after the athan was stopped elsewhere (notification "Tắt"). */
        fun finishCurrent() {
            val activity = current?.get() ?: return
            if (activity.isFinishing || activity.isDestroyed) return
            activity.dismissedByFlutter = true
            activity.ringing = false
            activity.finishAndRemoveTask()
        }
    }
}
