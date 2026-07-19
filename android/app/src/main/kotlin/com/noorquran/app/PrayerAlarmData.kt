package com.noorquran.app

import android.content.Intent

data class PrayerAlarmData(
    val id: Int,
    val prayerName: String,
    val prayerNameLocalized: String,
    val scheduledTime: Long,
    val quote: String,
    val soundAsset: String,
    val snoozeMinutes: Int,
    val enabled: Boolean,
    val body: String,
) {
    fun putInto(intent: Intent): Intent =
        intent.apply {
            putExtra(PrayerAlarmReceiver.EXTRA_ID, id)
            putExtra(PrayerAlarmReceiver.EXTRA_PRAYER_NAME, prayerName)
            putExtra(PrayerAlarmReceiver.EXTRA_PRAYER_NAME_LOCALIZED, prayerNameLocalized)
            putExtra(PrayerAlarmReceiver.EXTRA_SCHEDULED_TIME, scheduledTime)
            putExtra(PrayerAlarmReceiver.EXTRA_QUOTE, quote)
            putExtra(PrayerAlarmReceiver.EXTRA_SOUND_ASSET, soundAsset)
            putExtra(PrayerAlarmReceiver.EXTRA_SNOOZE_MINUTES, snoozeMinutes)
            putExtra(PrayerAlarmReceiver.EXTRA_ENABLED, enabled)
            putExtra(PrayerAlarmReceiver.EXTRA_BODY, body)
            putExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD, prayerName)
        }

    companion object {
        fun fromIntent(intent: Intent): PrayerAlarmData =
            PrayerAlarmData(
                id = intent.getIntExtra(PrayerAlarmReceiver.EXTRA_ID, PrayerAlarmReceiver.DEFAULT_ID),
                prayerName = intent.getStringExtra(PrayerAlarmReceiver.EXTRA_PRAYER_NAME)
                    ?: intent.getStringExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD)
                    ?: "Prayer",
                prayerNameLocalized = intent.getStringExtra(PrayerAlarmReceiver.EXTRA_PRAYER_NAME_LOCALIZED)
                    ?: localizedName(intent.getStringExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD) ?: "Prayer"),
                scheduledTime = intent.getLongExtra(
                    PrayerAlarmReceiver.EXTRA_SCHEDULED_TIME,
                    System.currentTimeMillis(),
                ),
                quote = intent.getStringExtra(PrayerAlarmReceiver.EXTRA_QUOTE)
                    ?: "Hãy tạm dừng công việc và dành thời gian cho Allah.",
                soundAsset = intent.getStringExtra(PrayerAlarmReceiver.EXTRA_SOUND_ASSET) ?: "adhan",
                snoozeMinutes = intent.getIntExtra(PrayerAlarmReceiver.EXTRA_SNOOZE_MINUTES, 10),
                enabled = intent.getBooleanExtra(PrayerAlarmReceiver.EXTRA_ENABLED, true),
                body = intent.getStringExtra(PrayerAlarmReceiver.EXTRA_BODY) ?: "Đã đến giờ cầu nguyện",
            )

        fun fromMap(map: Map<*, *>?): PrayerAlarmData {
            val prayerName = map?.get("prayerName") as? String
                ?: map?.get("payload") as? String
                ?: map?.get("title") as? String
                ?: "Prayer"
            return PrayerAlarmData(
                id = (map?.get("id") as? Number)?.toInt() ?: PrayerAlarmReceiver.DEFAULT_ID,
                prayerName = prayerName,
                prayerNameLocalized = map?.get("prayerNameLocalized") as? String ?: localizedName(prayerName),
                scheduledTime = (map?.get("scheduledTime") as? Number)?.toLong()
                    ?: (map?.get("triggerAtMillis") as? Number)?.toLong()
                    ?: System.currentTimeMillis(),
                quote = map?.get("quote") as? String
                    ?: "Hãy tạm dừng công việc và dành thời gian cho Allah.",
                soundAsset = map?.get("soundAsset") as? String ?: "adhan",
                snoozeMinutes = (map?.get("snoozeMinutes") as? Number)?.toInt() ?: 10,
                enabled = map?.get("enabled") as? Boolean ?: true,
                body = map?.get("body") as? String ?: "Đã đến giờ $prayerName",
            )
        }

        fun localizedName(prayerName: String): String =
            when (prayerName.lowercase()) {
                "fajr" -> "Bình minh"
                "dhuhr" -> "Giữa trưa"
                "asr" -> "Chiều"
                "maghrib" -> "Hoàng hôn"
                "isha" -> "Buổi tối"
                else -> "Giờ cầu nguyện"
            }
    }
}
