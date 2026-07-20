package com.noorquran.app

import android.app.Service
import android.content.Context
import android.content.Intent
import android.media.AudioAttributes
import android.media.AudioFocusRequest
import android.media.AudioManager
import android.media.MediaPlayer
import android.net.Uri
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager
import android.util.Log
import androidx.core.content.ContextCompat
import java.io.File

class PrayerAlarmSoundService : Service() {
    private var mediaPlayer: MediaPlayer? = null
    private var audioManager: AudioManager? = null
    private var audioFocusRequest: AudioFocusRequest? = null
    private val handler = Handler(Looper.getMainLooper())
    private val timeoutRunnable = Runnable { stopSelf() }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        if (intent == null) {
            stopSelf(startId)
            return START_NOT_STICKY
        }

        if (intent?.action == ACTION_STOP) {
            stopSelf()
            return START_NOT_STICKY
        }

        val alarm = PrayerAlarmData.fromIntent(intent)
        PrayerAlarmReceiver.createChannel(this)
        startForeground(alarm.id, PrayerAlarmReceiver.buildAlarmNotification(this, alarm))
        startAudio(alarm)
        startVibration()
        handler.removeCallbacks(timeoutRunnable)
        handler.postDelayed(timeoutRunnable, MAX_ALARM_DURATION_MS)
        return START_NOT_STICKY
    }

    override fun onDestroy() {
        handler.removeCallbacks(timeoutRunnable)
        stopAudio()
        stopVibration()
        super.onDestroy()
    }

    override fun onBind(intent: Intent?): IBinder? = null

    private fun startAudio(alarm: PrayerAlarmData) {
        if (mediaPlayer != null) return
        audioManager = getSystemService(Context.AUDIO_SERVICE) as AudioManager

        val focusGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val request = AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE)
                .setAudioAttributes(alarmAudioAttributes())
                .setOnAudioFocusChangeListener { }
                .build()
            audioFocusRequest = request
            audioManager?.requestAudioFocus(request) == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        } else {
            @Suppress("DEPRECATION")
            audioManager?.requestAudioFocus(
                null,
                AudioManager.STREAM_ALARM,
                AudioManager.AUDIOFOCUS_GAIN_TRANSIENT,
            ) == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
        }

        if (!focusGranted) {
            Log.w(TAG, "Audio focus was not granted; trying to play alarm anyway")
        }

        mediaPlayer = MediaPlayer().apply {
            setAudioAttributes(alarmAudioAttributes())
            val localFile = resolveDownloadedSoundFile(alarm.soundAsset)
            val flutterAsset = if (localFile == null) openFlutterAudioAsset(alarm.soundAsset) else null
            if (localFile != null) {
                Log.d(TAG, "Playing downloaded prayer alarm sound: ${localFile.absolutePath}")
                setDataSource(localFile.absolutePath)
            } else if (flutterAsset != null) {
                Log.d(TAG, "Playing bundled Flutter prayer alarm sound: ${alarm.soundAsset}")
                setDataSource(
                    flutterAsset.fileDescriptor,
                    flutterAsset.startOffset,
                    flutterAsset.length,
                )
                flutterAsset.close()
            } else {
                val rawUri = resolveSoundUri(alarm.soundAsset)
                if (rawUri != null) {
                    Log.d(TAG, "Playing raw prayer alarm sound: $rawUri")
                    setDataSource(this@PrayerAlarmSoundService, rawUri)
                } else {
                    val remoteUrl = remoteSoundUrl(alarm.soundAsset)
                    if (remoteUrl != null) {
                        Log.w(TAG, "Prayer alarm sound is not local; streaming fallback: $remoteUrl")
                        setDataSource(remoteUrl)
                    } else {
                        Log.w(TAG, "Prayer alarm sound not found; using fallback tone")
                        setDataSource(this@PrayerAlarmSoundService, fallbackSoundUri())
                    }
                }
            }
            isLooping = true
            setOnPreparedListener { it.start() }
            setOnErrorListener { player, _, _ ->
                player.release()
                mediaPlayer = null
                true
            }
            prepareAsync()
        }
    }

    private fun stopAudio() {
        mediaPlayer?.let {
            if (it.isPlaying) it.stop()
            it.release()
        }
        mediaPlayer = null

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            audioFocusRequest?.let { audioManager?.abandonAudioFocusRequest(it) }
        } else {
            @Suppress("DEPRECATION")
            audioManager?.abandonAudioFocus(null)
        }
        audioFocusRequest = null
    }

    private fun startVibration() {
        val pattern = longArrayOf(0, 700, 350, 700, 900)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val manager = getSystemService(Context.VIBRATOR_MANAGER_SERVICE) as VibratorManager
            manager.defaultVibrator.vibrate(VibrationEffect.createWaveform(pattern, 0))
        } else {
            @Suppress("DEPRECATION")
            val vibrator = getSystemService(Context.VIBRATOR_SERVICE) as Vibrator
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                vibrator.vibrate(VibrationEffect.createWaveform(pattern, 0))
            } else {
                @Suppress("DEPRECATION")
                vibrator.vibrate(pattern, 0)
            }
        }
    }

    private fun stopVibration() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            val manager = getSystemService(Context.VIBRATOR_MANAGER_SERVICE) as VibratorManager
            manager.defaultVibrator.cancel()
        } else {
            @Suppress("DEPRECATION")
            (getSystemService(Context.VIBRATOR_SERVICE) as Vibrator).cancel()
        }
    }

    private fun resolveSoundUri(soundAsset: String): Uri? {
        val resourceName = normalizeSoundName(soundAsset)
        val resId = resources.getIdentifier(resourceName, "raw", packageName)
        return if (resId != 0) Uri.parse("android.resource://$packageName/$resId") else null
    }

    private fun fallbackSoundUri(): Uri =
        Uri.parse("android.resource://$packageName/${R.raw.prayer_alarm_tone}")

    private fun resolveDownloadedSoundFile(soundAsset: String): File? {
        val name = normalizeSoundName(soundAsset)
        val candidates = listOf(
            File(getDir("flutter", Context.MODE_PRIVATE), "$name.mp3"),
            File(getDir("flutter", Context.MODE_PRIVATE), "$name.wav"),
            File(getDir("flutter", Context.MODE_PRIVATE), "$name.ogg"),
            File(filesDir, "$name.mp3"),
            File(filesDir, "$name.wav"),
            File(filesDir, "$name.ogg"),
            File(cacheDir, "$name.mp3"),
            File(cacheDir, "$name.wav"),
            File(cacheDir, "$name.ogg"),
        )
        return candidates.firstOrNull { it.exists() && it.length() > 0L }
    }

    private fun openFlutterAudioAsset(soundAsset: String) =
        normalizeSoundName(soundAsset).let { name ->
        listOf(
            "flutter_assets/assets/audio/$name",
            "flutter_assets/assets/audio/$name.mp3",
            "flutter_assets/assets/audio/$name.wav",
            "flutter_assets/assets/audio/$name.ogg",
        ).firstNotNullOfOrNull { path ->
            try {
                assets.openFd(path)
            } catch (_: Exception) {
                null
            }
        }
    }

    private fun normalizeSoundName(soundAsset: String): String =
        soundAsset.substringAfterLast('/').substringBeforeLast(".")

    private fun remoteSoundUrl(soundAsset: String): String? =
        when (normalizeSoundName(soundAsset)) {
            "adhan_fajr" -> "https://www.islamcan.com/common/adhan/adhan2.mp3"
            "adhan" -> "https://www.islamcan.com/common/adhan/adhan1.mp3"
            else -> null
        }

    private fun alarmAudioAttributes(): AudioAttributes =
        AudioAttributes.Builder()
            .setUsage(AudioAttributes.USAGE_ALARM)
            .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC)
            .build()

    companion object {
        private const val TAG = "PrayerAlarmSoundService"
        private const val ACTION_STOP = "com.noorquran.app.action.STOP_SOUND"
        private const val MAX_ALARM_DURATION_MS = 10 * 60 * 1000L

        fun start(context: Context, alarm: PrayerAlarmData) {
            val intent = Intent(context, PrayerAlarmSoundService::class.java).also { alarm.putInto(it) }
            ContextCompat.startForegroundService(context, intent)
        }

        fun stop(context: Context) {
            val intent = Intent(context, PrayerAlarmSoundService::class.java).apply {
                action = ACTION_STOP
            }
            try {
                context.startService(intent)
            } catch (e: IllegalStateException) {
                Log.w(TAG, "Could not send stop action to alarm service; stopping service directly", e)
            }
            context.stopService(Intent(context, PrayerAlarmSoundService::class.java))
        }
    }
}
