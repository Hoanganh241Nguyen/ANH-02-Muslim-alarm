package com.noorquran.app

import android.content.Context
import org.json.JSONObject
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

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

    // ---- Handled / fired state -------------------------------------------------
    // Kept in its own prefs file so clear() (cancel all) never forgets that an
    // athan was already stopped, which is what stops it from coming back.
    private const val STATE_PREFS = "prayer_alarm_state"
    private const val KEY_PLAYING_TIME = "playing_time"
    private const val KEY_PLAYING_PRAYER = "playing_prayer"
    private const val HANDLED_PREFIX = "handled_"
    private const val FIRED_PREFIX = "fired_"
    private const val STATE_TTL_MS = 3L * 24 * 60 * 60 * 1000

    /** An alarm counts as the same athan when it is for the same minute. */
    private fun minuteKey(scheduledTime: Long) = (scheduledTime / 60_000L).toString()

    /** The user stopped (or snoozed) the athan for [scheduledTime]; never play it again. */
    fun markHandled(context: Context, scheduledTime: Long) {
        if (scheduledTime <= 0L) return
        state(context).edit()
            .putLong(HANDLED_PREFIX + minuteKey(scheduledTime), System.currentTimeMillis())
            .apply()
        prune(context)
    }

    fun isHandled(context: Context, scheduledTime: Long): Boolean =
        state(context).contains(HANDLED_PREFIX + minuteKey(scheduledTime))

    /** Records the athan the sound service is playing, so an id-only dismiss can mark it. */
    fun setPlaying(context: Context, alarm: PrayerAlarmData?) {
        val editor = state(context).edit()
        if (alarm == null) {
            editor.remove(KEY_PLAYING_TIME).remove(KEY_PLAYING_PRAYER)
        } else {
            editor.putLong(KEY_PLAYING_TIME, alarm.scheduledTime)
                .putString(KEY_PLAYING_PRAYER, alarm.prayerName)
        }
        editor.apply()
    }

    fun playingTime(context: Context): Long = state(context).getLong(KEY_PLAYING_TIME, 0L)

    /** The athan of [prayerName] on the local day of [scheduledTime] has already rung. */
    fun markFired(context: Context, prayerName: String, scheduledTime: Long) {
        state(context).edit()
            .putLong(FIRED_PREFIX + firedKey(prayerName, scheduledTime), System.currentTimeMillis())
            .apply()
        prune(context)
    }

    fun hasFired(context: Context, prayerName: String, scheduledTime: Long): Boolean =
        state(context).contains(FIRED_PREFIX + firedKey(prayerName, scheduledTime))

    private fun firedKey(prayerName: String, scheduledTime: Long): String =
        prayerName.trim().lowercase(Locale.ROOT) + "|" +
            SimpleDateFormat("yyyy-MM-dd", Locale.US).format(Date(scheduledTime))

    private fun prune(context: Context) {
        val prefs = state(context)
        val cutoff = System.currentTimeMillis() - STATE_TTL_MS
        val stale = prefs.all.filter { (k, v) ->
            (k.startsWith(HANDLED_PREFIX) || k.startsWith(FIRED_PREFIX)) && (v as? Long ?: 0L) < cutoff
        }.keys
        if (stale.isEmpty()) return
        val editor = prefs.edit()
        stale.forEach { editor.remove(it) }
        editor.apply()
    }

    private fun state(context: Context) =
        context.getSharedPreferences(STATE_PREFS, Context.MODE_PRIVATE)

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
            soundAsset = json.optString("soundAsset", "noti_adhan_al_afassi.mp3"),
            snoozeMinutes = json.optInt("snoozeMinutes", 10),
            enabled = json.optBoolean("enabled", true),
            body = json.optString("body", "Đã đến giờ cầu nguyện"),
        )
}
