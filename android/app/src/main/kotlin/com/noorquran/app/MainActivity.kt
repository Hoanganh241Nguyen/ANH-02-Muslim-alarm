package com.noorquran.app

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.PowerManager
import android.provider.Settings
import com.ryanheise.audioservice.AudioServiceActivity
import com.noorquran.app.ads.NativeAdTemplateFactory
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin

class MainActivity : AudioServiceActivity() {
    private val CHANNEL = "com.noorquran.app/battery"
    private var initialAlarmPayload: String? = null
    private var alarmBridge: PrayerAlarmBridge? = null
    private var batteryChannel: MethodChannel? = null
    private val LOCATION_CHANNEL = "com.noorquran.app/location"
    private var locationChannel: MethodChannel? = null

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        captureAlarmPayload(intent)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        captureAlarmPayload(intent)
        // Only forward an alarm carried by THIS intent: re-dispatching an old payload on
        // every launcher tap reopened the alarm screen (and its athan) after it was stopped.
        intent.getStringExtra(PrayerAlarmReceiver.EXTRA_PAYLOAD)
            ?.takeIf { it.isNotBlank() }
            ?.let { payload -> alarmBridge?.dispatchAlarm(payload) }
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine,
            "native_temple_high",
            NativeAdTemplateFactory(this, R.layout.layout_native_template_high)
        )
        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine,
            "native_temple_small",
            NativeAdTemplateFactory(this, R.layout.layout_native_template_small)
        )
        GoogleMobileAdsPlugin.registerNativeAdFactory(
            flutterEngine,
            "native_fullscreen",
            NativeAdTemplateFactory(this, R.layout.layout_native_template_fullscreen)
        )

        batteryChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
        batteryChannel?.setMethodCallHandler { call, result ->
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

        // Device time zone (IANA id), used to estimate the location when
        // location permission is not granted.
        locationChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, LOCATION_CHANNEL)
        locationChannel?.setMethodCallHandler { call, result ->
            when (call.method) {
                "getTimeZoneId" -> result.success(java.util.TimeZone.getDefault().id)
                else -> result.notImplemented()
            }
        }

        alarmBridge = PrayerAlarmBridge(this, flutterEngine)
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        batteryChannel?.setMethodCallHandler(null)
        batteryChannel = null
        locationChannel?.setMethodCallHandler(null)
        locationChannel = null
        alarmBridge?.dispose()
        alarmBridge = null
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "native_temple_high")
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "native_temple_small")
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "native_fullscreen")
        super.cleanUpFlutterEngine(flutterEngine)
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
            try {
                val intent = Intent(Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS)
                intent.data = Uri.parse("package:$packageName")
                startActivity(intent)
            } catch (e: Exception) {
                openAppDetailsSettings()
            }
        }
    }

    private fun openAppDetailsSettings() {
        val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
        intent.data = Uri.parse("package:$packageName")
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        startActivity(intent)
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
            openAppDetailsSettings()
        }
    }
}
