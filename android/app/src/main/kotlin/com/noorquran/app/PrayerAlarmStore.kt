package com.noorquran.app

import android.content.Context
import org.json.JSONObject

object PrayerAlarmStore {
    private const val PREFS = "prayer_alarm_store"
    private const val KEY_IDS = "ids"

    fun save(context: Context, alarm: PrayerAlarmData) {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val ids = prefs.getStringSet(KEY_IDS, emptySet()).orEmpty().toMutableSet()
        ids.add(alarm.id.toString())
        prefs.edit()
            .putStringSet(KEY_IDS, ids)
            .putString(key(alarm.id), toJson(alarm).toString())
            .apply()
    }

    fun get(context: Context, id: Int): PrayerAlarmData? {
        val raw = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).getString(key(id), null)
        return raw?.let { fromJson(JSONObject(it)) }
    }

    fun delete(context: Context, id: Int) {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        val ids = prefs.getStringSet(KEY_IDS, emptySet()).orEmpty().toMutableSet()
        ids.remove(id.toString())
        prefs.edit().putStringSet(KEY_IDS, ids).remove(key(id)).apply()
    }

    fun all(context: Context): List<PrayerAlarmData> {
        val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        return prefs.getStringSet(KEY_IDS, emptySet()).orEmpty().mapNotNull {
            prefs.getString(key(it.toInt()), null)?.let { raw -> fromJson(JSONObject(raw)) }
        }
    }

    fun clear(context: Context) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit().clear().apply()
    }

    fun markOpened(context: Context, id: Int) {
        context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .edit()
            .putLong(openedKey(id), System.currentTimeMillis())
            .apply()
    }

    fun wasRecentlyOpened(context: Context, id: Int, windowMillis: Long = 30_000L): Boolean {
        val openedAt = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            .getLong(openedKey(id), 0L)
        return openedAt > 0L && System.currentTimeMillis() - openedAt <= windowMillis
    }

    private fun key(id: Int) = "alarm_$id"

    private fun openedKey(id: Int) = "opened_$id"

    private fun toJson(alarm: PrayerAlarmData): JSONObject =
        JSONObject()
            .put("id", alarm.id)
            .put("prayerName", alarm.prayerName)
            .put("prayerNameLocalized", alarm.prayerNameLocalized)
            .put("scheduledTime", alarm.scheduledTime)
            .put("quote", alarm.quote)
            .put("soundAsset", alarm.soundAsset)
            .put("snoozeMinutes", alarm.snoozeMinutes)
            .put("enabled", alarm.enabled)
            .put("body", alarm.body)

    private fun fromJson(json: JSONObject): PrayerAlarmData =
        PrayerAlarmData(
            id = json.optInt("id", PrayerAlarmReceiver.DEFAULT_ID),
            prayerName = json.optString("prayerName", "Prayer"),
            prayerNameLocalized = json.optString("prayerNameLocalized", "Giờ cầu nguyện"),
            scheduledTime = json.optLong("scheduledTime", System.currentTimeMillis()),
            quote = json.optString("quote", "Hãy tạm dừng công việc và dành thời gian cho Allah."),
            soundAsset = json.optString("soundAsset", "adhan"),
            snoozeMinutes = json.optInt("snoozeMinutes", 10),
            enabled = json.optBoolean("enabled", true),
            body = json.optString("body", "Đã đến giờ cầu nguyện"),
        )
}
