// ignore_for_file: depend_on_referenced_packages
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
import 'package:geolocator_platform_interface/geolocator_platform_interface.dart';
import 'package:h01_muslim_alarm/features/home/presentation/providers/prayer_time_provider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class FakeGeolocator extends GeolocatorPlatform
    with MockPlatformInterfaceMixin {
  bool serviceEnabled = true;
  LocationPermission permission = LocationPermission.whileInUse;
  LocationPermission permissionAfterRequest = LocationPermission.denied;
  Position? current;
  Position? lastKnown;
  int requestCount = 0;

  @override
  Future<bool> isLocationServiceEnabled() async => serviceEnabled;

  @override
  Future<LocationPermission> checkPermission() async => permission;

  @override
  Future<LocationPermission> requestPermission() async {
    requestCount++;
    permission = permissionAfterRequest;
    return permission;
  }

  @override
  Future<Position> getCurrentPosition({
    LocationSettings? locationSettings,
  }) async {
    final p = current;
    if (p == null) throw TimeoutException('no fix');
    return p;
  }

  @override
  Future<Position?> getLastKnownPosition({
    bool forceLocationManager = false,
  }) async => lastKnown;
}

class TimeoutException implements Exception {
  TimeoutException(this.message);
  final String message;
}

class FakeGeocoding extends GeocodingPlatform with MockPlatformInterfaceMixin {
  final Map<String, Placemark> places = {};
  bool offline = false;
  String? locale;

  static String key(double lat, double lng) =>
      '${lat.toStringAsFixed(3)},${lng.toStringAsFixed(3)}';

  @override
  Future<void> setLocaleIdentifier(String localeIdentifier) async {
    locale = localeIdentifier;
  }

  @override
  Future<List<Placemark>> placemarkFromCoordinates(
    double latitude,
    double longitude,
  ) async {
    if (offline) throw PlatformException(code: 'IO_ERROR');
    final place = places[key(latitude, longitude)];
    return place == null ? [] : [place];
  }
}

Position position(double lat, double lng, {DateTime? at}) => Position(
  latitude: lat,
  longitude: lng,
  timestamp: at ?? DateTime.now(),
  accuracy: 1000,
  altitude: 0,
  altitudeAccuracy: 0,
  heading: 0,
  headingAccuracy: 0,
  speed: 0,
  speedAccuracy: 0,
);

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  late Directory hiveDir;
  late FakeGeolocator geolocator;
  late FakeGeocoding geocoding;
  String? timeZone;
  final providers = <PrayerTimeProvider>[];

  Future<PrayerTimeProvider> load({bool askPermission = true}) async {
    final provider = PrayerTimeProvider(scheduleAlarms: false);
    providers.add(provider);
    await provider.fetchPrayerTimes(askPermission: askPermission);
    // Let reverse geocoding (not awaited) finish.
    await pumpEventQueue();
    return provider;
  }

  setUp(() async {
    hiveDir = await Directory.systemTemp.createTemp('hive_location_test');
    Hive.init(hiveDir.path);
    geolocator = FakeGeolocator();
    geocoding = FakeGeocoding();
    GeolocatorPlatform.instance = geolocator;
    GeocodingPlatform.instance = geocoding;
    timeZone = 'Asia/Kuala_Lumpur';

    messenger.setMockMethodCallHandler(
      const MethodChannel('com.noorquran.app/location'),
      (call) async => call.method == 'getTimeZoneId' ? timeZone : null,
    );
    // Alarm scheduling is not under test.
    for (final name in [
      'com.h01.muslim_alarm/alarm',
      'dexterous.com/flutter/local_notifications',
    ]) {
      messenger.setMockMethodCallHandler(
        MethodChannel(name),
        (call) async => call.method == 'initialize' ? true : null,
      );
    }
  });

  tearDown(() async {
    for (final p in providers) {
      p.dispose();
    }
    providers.clear();
    await Hive.deleteFromDisk();
    await Hive.close();
  });

  test('GPS fix shows the geocoded city, never coordinates', () async {
    geolocator.current = position(3.139, 101.687);
    geocoding.places[FakeGeocoding.key(3.139, 101.687)] = Placemark(
      locality: 'Kuala Lumpur',
      country: 'Malaysia',
      isoCountryCode: 'MY',
    );

    final provider = await load();

    expect(provider.locationSource, LocationSource.device);
    expect(provider.locationIssue, LocationIssue.none);
    expect(provider.currentAddress, 'Kuala Lumpur, Malaysia');
    expect(provider.prayerTimes, hasLength(5));
  });

  test('GPS fix while offline shows the nearest known city', () async {
    geolocator.current = position(3.07, 101.52); // Shah Alam
    geocoding.offline = true;

    final provider = await load();

    expect(provider.locationSource, LocationSource.device);
    expect(provider.currentAddress, 'Kuala Lumpur');
  });

  test('GPS fix offline with no city nearby leaves the name empty', () async {
    timeZone = 'Asia/Ho_Chi_Minh';
    geolocator.current = position(21.03, 105.83); // Hà Nội
    geocoding.offline = true;

    final provider = await load();

    expect(provider.locationSource, LocationSource.device);
    expect(provider.currentAddress, isEmpty); // the UI shows "—"
    expect(provider.currentAddress, isNot(contains('21.')));
    expect(provider.prayerTimes, hasLength(5));
  });

  test('permission denied estimates the city from the time zone', () async {
    timeZone = 'Asia/Jakarta';
    geolocator.permission = LocationPermission.denied;
    geolocator.permissionAfterRequest = LocationPermission.denied;

    final provider = await load();

    expect(geolocator.requestCount, 1);
    expect(provider.locationIssue, LocationIssue.denied);
    expect(provider.locationSource, LocationSource.estimated);
    expect(provider.currentAddress, 'Jakarta');
    expect(provider.prayerTimes, hasLength(5));
  });

  test('estimate uses a localized name when geocoding works', () async {
    timeZone = 'Europe/Istanbul';
    geolocator.permission = LocationPermission.deniedForever;
    final istanbul = DeviceLocationKeys.istanbul;
    geocoding.places[istanbul] = Placemark(
      locality: 'İstanbul',
      country: 'Türkiye',
      isoCountryCode: 'TR',
    );

    final provider = await load();

    expect(provider.locationIssue, LocationIssue.deniedForever);
    expect(provider.locationSource, LocationSource.estimated);
    expect(provider.currentAddress, 'İstanbul, Türkiye');
  });

  test('no permission and no geographic time zone shows nothing', () async {
    timeZone = 'UTC';
    geolocator.serviceEnabled = false;

    final provider = await load();

    expect(provider.locationIssue, LocationIssue.serviceDisabled);
    expect(provider.locationSource, LocationSource.none);
    expect(provider.currentAddress, isEmpty); // the UI shows "—"
    expect(provider.prayerTimes, isEmpty);
  });

  test('a saved fix is reused in the same time zone', () async {
    geolocator.current = position(3.139, 101.687);
    geocoding.places[FakeGeocoding.key(3.139, 101.687)] = Placemark(
      locality: 'Kuala Lumpur',
      country: 'Malaysia',
      isoCountryCode: 'MY',
    );
    await load();

    // Next launch: GPS times out, no recent last known position.
    geolocator.current = null;
    geolocator.lastKnown = position(
      3.139,
      101.687,
      at: DateTime.now().subtract(const Duration(days: 3)),
    );
    final provider = await load();

    expect(provider.locationIssue, LocationIssue.unavailable);
    expect(provider.locationSource, LocationSource.saved);
    expect(provider.currentAddress, 'Kuala Lumpur, Malaysia');
  });

  test(
    'after travelling to another time zone the saved fix is dropped',
    () async {
      geolocator.current = position(3.139, 101.687);
      geocoding.places[FakeGeocoding.key(3.139, 101.687)] = Placemark(
        locality: 'Kuala Lumpur',
        country: 'Malaysia',
        isoCountryCode: 'MY',
      );
      await load();

      timeZone = 'Asia/Riyadh';
      geolocator.permission = LocationPermission.denied;
      final provider = await load(askPermission: false);

      expect(geolocator.requestCount, 0);
      expect(provider.locationSource, LocationSource.estimated);
      expect(provider.currentAddress, 'Riyadh');
    },
  );

  test('a recent last known position is used when GPS times out', () async {
    geolocator.current = null;
    geolocator.lastKnown = position(
      3.07,
      101.52,
      at: DateTime.now().subtract(const Duration(hours: 2)),
    );
    geocoding.offline = true;

    final provider = await load();

    expect(provider.locationSource, LocationSource.device);
    expect(provider.currentAddress, 'Kuala Lumpur');
  });

  test('place names follow the app language', () async {
    await Hive.openBox('onboarding_box').then((b) => b.put('language', 'vi'));
    geolocator.current = position(3.139, 101.687);

    await load();

    expect(geocoding.locale, 'vi');
  });
}

/// Coordinates the time zone table uses for estimates.
class DeviceLocationKeys {
  static final istanbul = FakeGeocoding.key(41.0167, 28.9667);
}
