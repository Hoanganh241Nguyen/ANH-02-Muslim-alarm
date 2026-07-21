import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:adhan/adhan.dart';
import '../../../../core/prayer_alarm/prayer_alarm_model.dart';
import '../../../../core/services/notification_service.dart';
import '../../domain/entities/prayer_time.dart';

class PrayerTimeProvider extends ChangeNotifier {
  List<PrayerTime> _prayerTimes = [];
  bool _isLoading = false;
  Timer? _timer;
  Duration _timeRemaining = Duration.zero;
  PrayerTime? _nextPrayer;
  String _currentAddress = 'Locating...';
  Position? _currentPosition;

  List<PrayerTime> get prayerTimes => _prayerTimes;

  bool get isLoading => _isLoading;

  Duration get timeRemaining => _timeRemaining;

  PrayerTime? get nextPrayer => _nextPrayer;

  String get currentAddress => _currentAddress;

  String get timeRemainingString {
    if (_timeRemaining.isNegative) return "00:00:00";
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String hours = twoDigits(_timeRemaining.inHours);
    String minutes = twoDigits(_timeRemaining.inMinutes.remainder(60));
    String seconds = twoDigits(_timeRemaining.inSeconds.remainder(60));
    return "$hours:$minutes:$seconds";
  }

  Future<void> fetchPrayerTimes() async {
    _isLoading = true;
    notifyListeners();

    try {
      _currentPosition = await _determinePosition();
      final pos = _currentPosition!;

      // Tính toán cho ngày hiện tại để hiển thị UI
      final coordinates = Coordinates(pos.latitude, pos.longitude);
      final params = CalculationMethod.muslim_world_league.getParameters();
      params.madhab = Madhab.shafi;

      final date = DateComponents.from(DateTime.now());
      final prayerTimesData = PrayerTimes(coordinates, date, params);

      _prayerTimes = _convertToList(prayerTimesData);
      _currentAddress =
          "${pos.latitude.toStringAsFixed(2)}, ${pos.longitude.toStringAsFixed(2)}";
      _getAddressFromLatLng(pos);

      _updateCurrentAndNextPrayer();
      _scheduleMultiDayNotifications(); // Lập lịch cho nhiều ngày
      _startTimer();
    } catch (e) {
      debugPrint('Error fetching prayer times: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
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
    if (_currentPosition == null) {
      return PrayerTime(
        type: PrayerType.fajr,
        time: DateTime.now().add(const Duration(hours: 5)), // Fallback
        soundStatus: SoundStatus.ring,
      );
    }
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final coordinates = Coordinates(
      _currentPosition!.latitude,
      _currentPosition!.longitude,
    );
    final params = CalculationMethod.muslim_world_league.getParameters();
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
    if (_currentPosition == null) return;
    final notificationService = NotificationService();
    // Do not cancel all every time to avoid clearing pending alarms unnecessarily
    // await notificationService.cancelAllNotifications();

    final coordinates = Coordinates(
      _currentPosition!.latitude,
      _currentPosition!.longitude,
    );
    final params = CalculationMethod.muslim_world_league.getParameters();

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
        if (prayer.time.isAfter(DateTime.now())) {
          final localizedName = PrayerAlarmModel.localizedName(prayer.name);
          await notificationService.scheduleNotification(
            id: prayer.type.index + (i * 10),
            // Unique ID cho mỗi ngày
            title: 'Đã đến giờ cầu nguyện $localizedName',
            body:
                'Đã đến giờ cầu nguyện $localizedName. Hãy dành thời gian cho Allah.',
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
        }
        notifyListeners();
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

  Future<void> _getAddressFromLatLng(Position position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        _currentAddress =
            "${place.subAdministrativeArea ?? place.locality ?? ''}, ${place.country ?? ''}";
        notifyListeners();
      }
    } catch (_) {}
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return Future.error('Location services are disabled.');
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied)
        return Future.error('Location permissions are denied');
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
