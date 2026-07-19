package com.noorquran.app

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.PowerManager
import android.provider.Settings
import com.ryanheise.audioservice.AudioServiceActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : AudioServiceActivity() {
    private val CHANNEL = "com.noorquran.app/battery"
    private var initialAlarmPayload: String? = null
    private var alarmBridge: PrayerAlarmBridge? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        captureAlarmPayload(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        captureAlarmPayload(intent)
        initialAlarmPayload?.let { payload ->
            alarmBridge?.dispatchAlarm(payload)
        }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "isBatteryOptimizationIgnored" -> {
                    result.success(isBatteryOptimizationIgnored())
                }
                "requestIgnoreBatteryOptimizations" -> {
                    requestIgnoreBatteryOptimizations()
                    result.success(true)
                }
                "openAutostartSettings" -> {
                    openAutostartSettings()
                    result.success(true)
                }
                else -> {
                    result.notImplemented()
                }
            }
        }

        alarmBridge = PrayerAlarmBridge(this, flutterEngine)
    }

    private fun captureAlarmPayload(intent: Intent?) {
        val payload = intent?.getStringExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD)
        if (!payload.isNullOrBlank()) {
            initialAlarmPayload = payload
        }
    }

    private fun isBatteryOptimizationIgnored(): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            val pm = getSystemService(Context.POWER_SERVICE) as PowerManager
            return pm.isIgnoringBatteryOptimizations(packageName)
        }
        return true
    }

    private fun requestIgnoreBatteryOptimizations() {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            val intent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
            intent.data = Uri.parse("package:$packageName")
            startActivity(intent)
        }
    }

    private fun openAutostartSettings() {
        val intent = Intent()
        val manufacturer = Build.MANUFACTURER.lowercase()
        try {
            when {
                manufacturer.contains("xiaomi") -> intent.setClassName("com.miui.securitycenter", "com.miui.permcenter.autostart.AutoStartManagementActivity")
                manufacturer.contains("oppo") -> intent.setClassName("com.coloros.safecenter", "com.coloros.safecenter.permission.startup.StartupAppListActivity")
                manufacturer.contains("vivo") -> intent.setClassName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.BgStartUpManagerActivity")
                manufacturer.contains("huawei") -> intent.setClassName("com.huawei.systemmanager", "com.huawei.systemmanager.optimize.process.ProtectActivity")
                else -> {
                    intent.action = Settings.ACTION_SETTINGS
                }
            }
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            startActivity(intent)
        } catch (e: Exception) {
            val defaultIntent = Intent(Settings.ACTION_SETTINGS)
            defaultIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            startActivity(defaultIntent)
        }
    }
}
