import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:adhan/adhan.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../../../../core/location/device_location_info.dart';
import '../../../../core/location/prayer_calculation.dart';
import '../../../../core/prayer_alarm/prayer_alarm_schedule_policy.dart';
import '../../../../core/services/in_app_prayer_scheduler.dart';
import '../../../../core/services/notification_service.dart';
import '../../../onboarding/presentation/pages/onboarding_gate.dart';
import '../../domain/entities/prayer_time.dart';

/// Why the device location could not be used, so the UI can say so and offer
/// the right fix instead of silently showing some other city.
enum LocationIssue { none, serviceDisabled, denied, deniedForever, unavailable }

/// Where the coordinates behind the prayer times came from.
enum LocationSource {
  /// Nothing known yet: no prayer times.
  none,

  /// A fresh fix from the device.
  device,

  /// The last device fix saved on an earlier run.
  saved,

  /// Guessed from the device time zone, without location permission.
  estimated,
}

class PrayerTimeProvider extends ChangeNotifier with WidgetsBindingObserver {
  PrayerTimeProvider({@visibleForTesting bool scheduleAlarms = true})
    : _scheduleAlarms = scheduleAlarms {
    WidgetsBinding.instance.addObserver(this);
  }

  // Off in tests, where the notification and alarm plugins are absent.
  final bool _scheduleAlarms;

  // Last location that came from the device, so a later failure (GPS timeout,
  // permission revoked) keeps the user's own city instead of a hardcoded one.
  static const _locationBoxName = 'last_location';

  // A device fix older than this is refreshed when the app comes back.
  static const _refreshAfter = Duration(hours: 3);

  // The OS's last known position is only trusted this long: an older one may
  // be from before the user travelled.
  static const _maxLastKnownAge = Duration(hours: 24);

  List<PrayerTime> _prayerTimes = [];
  bool _isLoading = false;
  Timer? _timer;
  Duration _timeRemaining = Duration.zero;

  /// The countdown text, updated every second on its own so that only the
  /// countdown repaints, not every listener of this provider.
  final ValueNotifier<String> countdown = ValueNotifier('00:00:00');
  PrayerTime? _nextPrayer;
  // Empty until a location is known; the UI shows "Locating..." meanwhile, or
  // why the location is unavailable.
  String _currentAddress = '';
  // Coordinates the prayer times were computed for. Alarms use these too.
  Coordinates? _coordinates;
  // Country of [_coordinates]; picks the calculation method and madhab.
  String? _countryCode;
  bool _hasLoadedOnce = false;
  LocationSource _locationSource = LocationSource.none;
  LocationIssue _locationIssue = LocationIssue.none;
  DateTime? _lastFetchAt;
  String? _timeZoneAtFetch;

  List<PrayerTime> get prayerTimes => _prayerTimes;

  bool get isLoading => _isLoading;

  Duration get timeRemaining => _timeRemaining;

  PrayerTime? get nextPrayer => _nextPrayer;

  String get currentAddress => _currentAddress;

  bool get hasLoadedOnce => _hasLoadedOnce;

  LocationSource get locationSource => _locationSource;

  /// Set when the last attempt to read the device location failed. Prayer
  /// times may still come from a saved or estimated location in that case.
  LocationIssue get locationIssue => _locationIssue;

  String get timeRemainingString {
    if (_timeRemaining.isNegative) return "00:00:00";
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String hours = twoDigits(_timeRemaining.inHours);
    String minutes = twoDigits(_timeRemaining.inMinutes.remainder(60));
    String seconds = twoDigits(_timeRemaining.inSeconds.remainder(60));
    return "$hours:$minutes:$seconds";
  }

  /// Loads the location and computes prayer times. With [askPermission]
  /// false the permission dialog is never shown, for refreshes the user did
  /// not ask for.
  Future<void> fetchPrayerTimes({bool askPermission = true}) async {
    if (_isLoading) return;
    _isLoading = true;
    notifyListeners();

    final timeZone = await DeviceLocationInfo.timeZoneId();
    try {
      final position = await _determinePosition(askPermission: askPermission);
      await _useDevicePosition(position, timeZone);
    } on _LocationException catch (e) {
      debugPrint('Location unavailable: ${e.issue}');
      _locationIssue = e.issue;
      await _useFallbackLocation(timeZone);
    } catch (e) {
      debugPrint('Error fetching prayer times: $e');
      _locationIssue = LocationIssue.unavailable;
      await _useFallbackLocation(timeZone);
    } finally {
      _timeZoneAtFetch = timeZone;
      _lastFetchAt = DateTime.now();
      _hasLoadedOnce = true;
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Opens the system screen that fixes [locationIssue]: location settings
  /// when location is off, app settings when permission is permanently
  /// denied, otherwise asks again.
  Future<void> resolveLocationIssue() async {
    switch (_locationIssue) {
      case LocationIssue.serviceDisabled:
        await Geolocator.openLocationSettings();
        break;
      case LocationIssue.deniedForever:
        await Geolocator.openAppSettings();
        break;
      case LocationIssue.none:
      case LocationIssue.denied:
      case LocationIssue.unavailable:
        await fetchPrayerTimes();
        break;
    }
    // Coming back from Settings is handled in didChangeAppLifecycleState.
  }

  Future<void> _useDevicePosition(Position position, String? timeZone) async {
    _locationIssue = LocationIssue.none;
    _locationSource = LocationSource.device;
    final saved = await _loadSavedLocation();
    final nearSaved =
        saved != null &&
        Geolocator.distanceBetween(
              saved.latitude,
              saved.longitude,
              position.latitude,
              position.longitude,
            ) <
            10000;
    _countryCode =
        (nearSaved ? saved.countryCode : null) ??
        DeviceLocationInfo.countryFromTimeZone(timeZone);
    _setPrayerTimesForCoordinates(
      Coordinates(position.latitude, position.longitude),
    );
    // Until reverse geocoding answers (or when offline), the saved name is
    // right if the user has not moved far.
    // Until reverse geocoding answers (or when it cannot, e.g. offline), the
    // saved name is right if the user has not moved far; else the nearest
    // known city; else nothing, which the UI shows as a dash. Never raw
    // coordinates.
    _currentAddress = nearSaved && saved.address != null
        ? saved.address!
        : DeviceLocationInfo.nearestCityName(
                position.latitude,
                position.longitude,
              ) ??
              '';
    await _saveLocation(
      _SavedLocation(
        latitude: position.latitude,
        longitude: position.longitude,
        address: nearSaved ? saved.address : null,
        countryCode: _countryCode,
        timeZone: timeZone,
      ),
    );
    unawaited(
      _reverseGeocode(position.latitude, position.longitude, save: true),
    );
  }

  /// Without a device fix: keep this session's fix, else the saved one if the
  /// user is still in the same time zone, else estimate from the time zone.
  /// Times for a hardcoded city would be wrong for most users, and alarms
  /// would ring at the wrong times.
  Future<void> _useFallbackLocation(String? timeZone) async {
    if (_locationSource == LocationSource.device &&
        _coordinates != null &&
        (timeZone == null || timeZone == _timeZoneAtFetch)) {
      return;
    }

    final saved = await _loadSavedLocation();
    final estimate = DeviceLocationInfo.estimateFromTimeZone(timeZone);
    final savedStillValid =
        saved != null &&
        (saved.timeZone == null ||
            timeZone == null ||
            saved.timeZone == timeZone);

    if (saved != null && (savedStillValid || estimate == null)) {
      _locationSource = LocationSource.saved;
      _countryCode =
          saved.countryCode ?? DeviceLocationInfo.countryFromTimeZone(timeZone);
      _setPrayerTimesForCoordinates(
        Coordinates(saved.latitude, saved.longitude),
      );
      _currentAddress =
          saved.address ??
          DeviceLocationInfo.nearestCityName(saved.latitude, saved.longitude) ??
          '';
      if (saved.address == null) {
        unawaited(_reverseGeocode(saved.latitude, saved.longitude, save: true));
      }
      return;
    }

    if (estimate != null) {
      _locationSource = LocationSource.estimated;
      _countryCode = estimate.countryCode;
      _setPrayerTimesForCoordinates(
        Coordinates(estimate.latitude, estimate.longitude),
      );
      _currentAddress = estimate.cityName;
      // A localized "City, Country" when the network allows; never saved, so
      // it does not pass for a real fix later.
      unawaited(
        _reverseGeocode(estimate.latitude, estimate.longitude, save: false),
      );
      return;
    }

    if (_locationSource != LocationSource.device) {
      _locationSource = LocationSource.none;
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed) return;
    if (_isLoading || !_hasLoadedOnce) return;
    unawaited(_refreshOnResume());
  }

  /// Back in the app: refresh when the user may have moved (time zone
  /// changed, or the fix is hours old), when the day changed, or when
  /// location may have been turned on in Settings. Never prompts: a
  /// permission dialog itself pauses and resumes the app, which would loop.
  Future<void> _refreshOnResume() async {
    final timeZone = await DeviceLocationInfo.timeZoneId();
    final lastFetch = _lastFetchAt;
    final now = DateTime.now();
    final timeZoneChanged = timeZone != null && timeZone != _timeZoneAtFetch;
    final dayChanged =
        lastFetch == null || !DateUtils.isSameDay(lastFetch, now);
    final stale =
        lastFetch == null || now.difference(lastFetch) > _refreshAfter;

    if (timeZoneChanged || dayChanged || stale) {
      await fetchPrayerTimes(askPermission: false);
      return;
    }
    // The place name failed earlier (e.g. offline): try again.
    final coordinates = _coordinates;
    if (_currentAddress.isEmpty && coordinates != null) {
      unawaited(
        _reverseGeocode(
          coordinates.latitude,
          coordinates.longitude,
          save: _locationSource != LocationSource.estimated,
        ),
      );
    }
    if (_locationSource != LocationSource.device &&
        await _canReadLocationWithoutPrompt()) {
      await fetchPrayerTimes(askPermission: false);
    }
  }

  Future<bool> _canReadLocationWithoutPrompt() async {
    if (!await Geolocator.isLocationServiceEnabled()) return false;
    final permission = await Geolocator.checkPermission();
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  void _setPrayerTimesForCoordinates(Coordinates coordinates) {
    _coordinates = coordinates;
    final params = prayerParametersFor(coordinates, _countryCode);

    final date = DateComponents.from(DateTime.now());
    final prayerTimesData = PrayerTimes(coordinates, date, params);

    // Keep the ring/vibrate/silent choice across recomputes.
    final previousStatus = {
      for (final p in _prayerTimes) p.type: p.soundStatus,
    };
    _prayerTimes = [
      for (final p in _convertToList(prayerTimesData))
        PrayerTime(
          type: p.type,
          time: p.time,
          soundStatus: previousStatus[p.type] ?? p.soundStatus,
        ),
    ];

    _updateCurrentAndNextPrayer();
    if (_scheduleAlarms) {
      InAppPrayerScheduler.instance.schedule(_prayerTimes);
    }
    _scheduleMultiDayNotifications(); // Lập lịch cho nhiều ngày
    _startTimer();
  }

  List<PrayerTime> _convertToList(PrayerTimes data) {
    return [
      PrayerTime(
        type: PrayerType.fajr,
        time: data.fajr,
        soundStatus: SoundStatus.ring,
      ),
      PrayerTime(
        type: PrayerType.dhuhr,
        time: data.dhuhr,
        soundStatus: SoundStatus.ring,
      ),
      PrayerTime(
        type: PrayerType.asr,
        time: data.asr,
        soundStatus: SoundStatus.ring,
      ),
      PrayerTime(
        type: PrayerType.maghrib,
        time: data.maghrib,
        soundStatus: SoundStatus.ring,
      ),
      PrayerTime(
        type: PrayerType.isha,
        time: data.isha,
        soundStatus: SoundStatus.ring,
      ),
    ];
  }

  void _updateCurrentAndNextPrayer() {
    final now = DateTime.now();
    try {
      _nextPrayer = _prayerTimes.firstWhere((p) => p.time.isAfter(now));
    } catch (_) {
      _nextPrayer = _calculateTomorrowFajr();
    }
    if (_nextPrayer != null) {
      _timeRemaining = _nextPrayer!.time.difference(now);
      countdown.value = timeRemainingString;
    }

    for (int i = 0; i < _prayerTimes.length; i++) {
      final p = _prayerTimes[i];
      final nextP = (i < _prayerTimes.length - 1) ? _prayerTimes[i + 1] : null;
      bool isCurrent = false;
      if (nextP != null) {
        isCurrent = now.isAfter(p.time) && now.isBefore(nextP.time);
      } else {
        isCurrent = now.isAfter(p.time);
      }
      _prayerTimes[i] = PrayerTime(
        type: p.type,
        time: p.time,
        isCurrent: isCurrent,
        soundStatus: p.soundStatus,
      );
    }
  }

  PrayerTime _calculateTomorrowFajr() {
    final coordinates = _coordinates;
    if (coordinates == null) {
      return PrayerTime(
        type: PrayerType.fajr,
        time: DateTime.now().add(const Duration(hours: 5)), // Fallback
        soundStatus: SoundStatus.ring,
      );
    }
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final params = prayerParametersFor(coordinates, _countryCode);
    final prayerTimesData = PrayerTimes(
      coordinates,
      DateComponents.from(tomorrow),
      params,
    );
    return PrayerTime(
      type: PrayerType.fajr,
      time: prayerTimesData.fajr,
      soundStatus: SoundStatus.ring,
    );
  }

  Future<void> _scheduleMultiDayNotifications() async {
    final coordinates = _coordinates;
    if (coordinates == null || !_scheduleAlarms) return;
    final notificationService = NotificationService();
    // Do not cancel all every time to avoid clearing pending alarms unnecessarily
    // await notificationService.cancelAllNotifications();

    final params = prayerParametersFor(coordinates, _countryCode);

    // Lập lịch cho 7 ngày tới để đảm bảo ngay cả khi kill app lâu ngày vẫn có báo thức
    for (int i = 0; i < 7; i++) {
      final date = DateTime.now().add(Duration(days: i));
      final prayerTimesData = PrayerTimes(
        coordinates,
        DateComponents.from(date),
        params,
      );
      final dailyPrayers = _convertToList(prayerTimesData);

      for (var prayer in dailyPrayers) {
        if (PrayerAlarmSchedulePolicy.isSchedulable(
          prayer.time,
          DateTime.now(),
        )) {
          await notificationService.scheduleNotification(
            id: prayer.type.index + (i * 10),
            // Unique ID cho mỗi ngày
            title: prayer.name,
            body: prayer.name,
            scheduledDate: prayer.time,
            payload: prayer.name,
          );
        }
      }
    }
  }

  void _startTimer() {
    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      if (_nextPrayer != null) {
        _timeRemaining = _nextPrayer!.time.difference(now);
        if (_timeRemaining.isNegative) {
          _updateCurrentAndNextPrayer();
          notifyListeners();
        }
        countdown.value = timeRemainingString;
      }
    });
  }

  void toggleSoundStatus(PrayerType type) {
    final index = _prayerTimes.indexWhere((p) => p.type == type);
    if (index != -1) {
      final currentStatus = _prayerTimes[index].soundStatus;
      SoundStatus nextStatus;
      switch (currentStatus) {
        case SoundStatus.ring:
          nextStatus = SoundStatus.vibrate;
          break;
        case SoundStatus.vibrate:
          nextStatus = SoundStatus.silent;
          break;
        case SoundStatus.silent:
          nextStatus = SoundStatus.ring;
          break;
      }

      _prayerTimes[index] = PrayerTime(
        type: _prayerTimes[index].type,
        time: _prayerTimes[index].time,
        isCurrent: _prayerTimes[index].isCurrent,
        soundStatus: nextStatus,
      );
      notifyListeners();

      // Update notifications after status change
      _scheduleMultiDayNotifications();
    }
  }

  Future<void> _reverseGeocode(
    double latitude,
    double longitude, {
    required bool save,
  }) async {
    try {
      await setLocaleIdentifier(_appLanguage());
      final placemarks = await placemarkFromCoordinates(latitude, longitude);
      if (placemarks.isEmpty) return;
      final place = placemarks[0];
      final city = [
        place.locality,
        place.subAdministrativeArea,
        place.administrativeArea,
      ].firstWhere((p) => p != null && p.trim().isNotEmpty, orElse: () => '');
      final address = [
        city,
        place.country,
      ].where((p) => p != null && p.trim().isNotEmpty).join(', ');
      // Ignore an answer for coordinates we have since moved away from.
      final current = _coordinates;
      if (current == null ||
          current.latitude != latitude ||
          current.longitude != longitude) {
        return;
      }
      if (address.isNotEmpty) _currentAddress = address;

      final country = place.isoCountryCode;
      if (country != null &&
          country.isNotEmpty &&
          country.toUpperCase() != _countryCode?.toUpperCase()) {
        // The time zone guessed the country wrong (e.g. a shared time zone):
        // recompute with this country's calculation method.
        _countryCode = country;
        _setPrayerTimesForCoordinates(current);
      }
      notifyListeners();

      if (save) {
        await _saveLocation(
          _SavedLocation(
            latitude: latitude,
            longitude: longitude,
            address: address.isEmpty ? null : address,
            countryCode: _countryCode,
            timeZone: _timeZoneAtFetch ?? await DeviceLocationInfo.timeZoneId(),
          ),
        );
      }
    } catch (e) {
      debugPrint('Reverse geocoding failed: $e');
    }
  }

  /// Place names in the app's language rather than the phone's.
  String _appLanguage() {
    try {
      if (Hive.isBoxOpen(OnboardingGate.boxName)) {
        final language = Hive.box(OnboardingGate.boxName).get('language');
        if (language is String && language.isNotEmpty) return language;
      }
    } catch (_) {}
    return WidgetsBinding.instance.platformDispatcher.locale.languageCode;
  }

  Future<_SavedLocation?> _loadSavedLocation() async {
    try {
      final box = await Hive.openBox(_locationBoxName);
      final lat = box.get('lat');
      final lng = box.get('lng');
      if (lat is! double || lng is! double) return null;
      String? text(String key) {
        final value = box.get(key);
        return value is String && value.isNotEmpty ? value : null;
      }

      return _SavedLocation(
        latitude: lat,
        longitude: lng,
        address: text('address'),
        countryCode: text('country'),
        timeZone: text('timeZone'),
      );
    } catch (e) {
      debugPrint('Could not read saved location: $e');
      return null;
    }
  }

  Future<void> _saveLocation(_SavedLocation location) async {
    try {
      final box = await Hive.openBox(_locationBoxName);
      await box.putAll({
        'lat': location.latitude,
        'lng': location.longitude,
        'address': location.address,
        'country': location.countryCode,
        'timeZone': location.timeZone,
        'savedAt': DateTime.now().millisecondsSinceEpoch,
      });
    } catch (e) {
      debugPrint('Could not save location: $e');
    }
  }

  Future<Position> _determinePosition({required bool askPermission}) async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw const _LocationException(LocationIssue.serviceDisabled);
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied && askPermission) {
      permission = await Geolocator.requestPermission();
    }
    if (permission == LocationPermission.denied) {
      throw const _LocationException(LocationIssue.denied);
    }
    if (permission == LocationPermission.deniedForever) {
      throw const _LocationException(LocationIssue.deniedForever);
    }
    try {
      // City-level accuracy is enough for prayer times, and unlike high
      // accuracy it does not make Google prompt for "Location Accuracy" on
      // every request. Geolocator falls back to Android's LocationManager on
      // devices without Google Play services.
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        timeLimit: const Duration(seconds: 15),
      );
    } catch (e) {
      // No fresh fix in time (indoors, flaky network location): the position
      // the OS last saw is still the user's city, unless it is old enough
      // that they may have travelled since.
      final last = await Geolocator.getLastKnownPosition();
      if (last != null &&
          DateTime.now().difference(last.timestamp) < _maxLastKnownAge) {
        return last;
      }
      debugPrint('No current or recent last known position: $e');
      throw const _LocationException(LocationIssue.unavailable);
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    countdown.dispose();
    if (_scheduleAlarms) InAppPrayerScheduler.instance.cancelAll();
    super.dispose();
  }
}

class _SavedLocation {
  const _SavedLocation({
    required this.latitude,
    required this.longitude,
    this.address,
    this.countryCode,
    this.timeZone,
  });

  final double latitude;
  final double longitude;
  final String? address;
  final String? countryCode;
  final String? timeZone;
}

class _LocationException implements Exception {
  const _LocationException(this.issue);

  final LocationIssue issue;
}
