import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'time_zone_locations.dart';

/// A location guessed without location permission, from the device time zone.
class EstimatedLocation {
  const EstimatedLocation({
    required this.latitude,
    required this.longitude,
    required this.countryCode,
    required this.cityName,
  });

  final double latitude;
  final double longitude;
  final String countryCode;

  /// Reference city of the time zone, e.g. "Kuala Lumpur".
  final String cityName;
}

/// Reads the device time zone (IANA id such as "Asia/Jakarta") from Android.
class DeviceLocationInfo {
  DeviceLocationInfo._();

  static const _channel = MethodChannel('com.noorquran.app/location');

  static Future<String?> timeZoneId() async {
    try {
      return await _channel.invokeMethod<String>('getTimeZoneId');
    } catch (e) {
      debugPrint('Could not read device time zone: $e');
      return null;
    }
  }

  /// The reference city of the device time zone, or null when the zone is
  /// not a geographic one (e.g. "UTC").
  static EstimatedLocation? estimateFromTimeZone(String? timeZoneId) {
    if (timeZoneId == null) return null;
    final entry = kTimeZoneLocations[timeZoneId];
    if (entry == null) return null;
    final (lat, lng, country, city) = entry;
    return EstimatedLocation(
      latitude: lat,
      longitude: lng,
      countryCode: country,
      cityName: city,
    );
  }

  /// Country of the device time zone, used to pick the calculation method
  /// when reverse geocoding gives none.
  static String? countryFromTimeZone(String? timeZoneId) =>
      timeZoneId == null ? null : kTimeZoneLocations[timeZoneId]?.$3;

  /// Name of the nearest time zone reference city within [maxDistanceKm],
  /// for showing a city while reverse geocoding is unavailable (offline, or
  /// no Geocoder on the device). Null when none is that close.
  static String? nearestCityName(
    double latitude,
    double longitude, {
    double maxDistanceKm = 100,
  }) {
    String? best;
    var bestKm = maxDistanceKm;
    kTimeZoneLocations.forEach((id, entry) {
      if (kTimeZoneAliases.contains(id)) return;
      final km = _distanceKm(latitude, longitude, entry.$1, entry.$2);
      if (km <= bestKm) {
        bestKm = km;
        best = entry.$4;
      }
    });
    return best;
  }

  static double _distanceKm(
    double lat1,
    double lng1,
    double lat2,
    double lng2,
  ) {
    const earthRadiusKm = 6371.0;
    double rad(double d) => d * math.pi / 180;
    final dLat = rad(lat2 - lat1);
    final dLng = rad(lng2 - lng1);
    final a =
        math.pow(math.sin(dLat / 2), 2) +
        math.cos(rad(lat1)) *
            math.cos(rad(lat2)) *
            math.pow(math.sin(dLng / 2), 2);
    return 2 * earthRadiusKm * math.asin(math.sqrt(a));
  }
}
