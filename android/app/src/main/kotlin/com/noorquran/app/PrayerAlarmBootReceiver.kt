package com.noorquran.app

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log

class PrayerAlarmBootReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        if (
            intent.action != Intent.ACTION_BOOT_COMPLETED &&
            intent.action != Intent.ACTION_MY_PACKAGE_REPLACED &&
            intent.action != "android.intent.action.QUICKBOOT_POWERON" &&
            intent.action != "com.htc.intent.action.QUICKBOOT_POWERON"
        ) return

        val now = System.currentTimeMillis()
        PrayerAlarmStore.all(context)
            .filter { it.enabled && it.scheduledTime > now }
            .forEach {
                Log.d(TAG, "Rescheduling prayer alarm after boot/package replace: id=${it.id}")
                PrayerAlarmReceiver.schedule(context, it)
            }
    }

    companion object {
        private const val TAG = "PrayerAlarmBootReceiver"
    }
}
