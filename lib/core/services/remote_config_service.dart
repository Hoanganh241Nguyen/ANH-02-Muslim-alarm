import 'dart:async';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';

import '../ads/ad_unit_ids.dart';

class RemoteConfigService {
  final FirebaseRemoteConfig _remoteConfig;

  RemoteConfigService(this._remoteConfig);

  static Future<RemoteConfigService> getInstance() async {
    final FirebaseRemoteConfig remoteConfig = FirebaseRemoteConfig.instance;
    return RemoteConfigService(remoteConfig);
  }

  Future<void> initialize() async {
    try {
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: kDebugMode
              ? Duration.zero
              : const Duration(hours: 12),
        ),
      );

      await _remoteConfig.setDefaults(const {
        'ads_inter_inapp': false,
        'ads_inter_splash': false,
        'ads_open_app': false,
        'ads_rewarded': false,
        'banner_home_on_off': false,
        'banner_pray_on_off': false,
        'banner_message_on_off': false,
        'banner_noti_on_off': false,
        'banner_quran_collap_on_off': false,
        'banner_quran_detail_collap_on_off': false,
        'banner_tasbih_on_off': false,
        'banner_calendar_on_off': false,
        'banner_qibla_on_off': false,
        'banner_splash_on_off': false,
        'native_home_on_off': false,
        'native_noti_on_off': false,
        'native_noti_setting_on_off': false,
        'native_location_1_on_off': false,
        'native_location_2_on_off': false,
        'native_country_on_off': false,
        'native_99_names_on_off': false,
        'native_bookmark_on_off': false,
        'native_quran_collap_on_off': false,
        'native_quran_detail_list_on_off': false,
        'native_quran_detail_collap_on_off': false,
        'native_tasbih_on_off': false,
        'native_qibla_on_off': false,
        'native_splash_on_off': false,
        'native_quran_list_on_off': false,
        'native_fullscreen_on_off': false,
      });

      // Start from the values fetched last time, then wait only briefly for
      // fresh ones so a slow network cannot hold the app on a blank screen
      // (fetchTimeout is a minute). A late fetch still activates on its own.
      await _remoteConfig.activate();
      await fetchAndActivate().timeout(
        const Duration(seconds: 3),
        onTimeout: () => debugPrint('Remote Config fetch still running'),
      );
    } catch (e) {
      debugPrint('RemoteConfig initialization failed: $e');
    }
  }

  Future<void> fetchAndActivate() async {
    bool activated = await _remoteConfig.fetchAndActivate();
    debugPrint('Remote Config activated: $activated');
  }

  bool get adsInterInApp => _remoteConfig.getBool('ads_inter_inapp');
  bool get adsInterSplash => _remoteConfig.getBool('ads_inter_splash');
  bool get adsOpenApp => _remoteConfig.getBool('ads_open_app');
  bool get adsRewarded => _remoteConfig.getBool('ads_rewarded');

  bool isNativeAdEnabled(ScreenAds type) {
    final key = type.nativeConfigKey;
    return key.isNotEmpty && _remoteConfig.getBool(key);
  }

  bool isBannerAdEnabled(ScreenAds type) {
    final key = type.bannerConfigKey;
    return key.isNotEmpty && _remoteConfig.getBool(key);
  }
}
