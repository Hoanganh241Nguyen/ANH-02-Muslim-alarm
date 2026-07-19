import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';
import 'package:adhan/adhan.dart';

class QiblaProvider extends ChangeNotifier {
  double? _direction;
  double? get direction => _direction;

  double? _qiblaDirection;
  double? get qiblaDirection => _qiblaDirection;

  double? _distanceToMecca;
  double? get distanceToMecca => _distanceToMecca;

  Position? _currentPosition;
  Position? get currentPosition => _currentPosition;

  StreamSubscription<CompassEvent>? _compassSubscription;
  StreamSubscription<Position>? _positionSubscription;
  bool _isPermissionGranted = false;
  bool get isPermissionGranted => _isPermissionGranted;

  String _errorMessage = '';
  String get errorMessage => _errorMessage;

  QiblaProvider() {
    init();
  }

  Future<void> init() async {
    await _checkPermissions();
    if (_isPermissionGranted) {
      _startListening();
      // Initial location fetch
      await _updateLocation();
    }
  }

  Future<void> _checkPermissions() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _errorMessage = 'Location services are disabled.';
      notifyListeners();
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _errorMessage = 'Location permissions are denied';
        notifyListeners();
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      _errorMessage = 'Location permissions are permanently denied.';
      notifyListeners();
      return;
    }

    _isPermissionGranted = true;
    notifyListeners();
  }

  void _startListening() {
    _compassSubscription = FlutterCompass.events?.listen((event) {
      double? heading = event.heading;
      if (heading == null) return;
      
      if (_direction == null) {
        _direction = heading;
      } else {
        // Hệ số 0.5: Tăng tốc độ phản hồi mà vẫn giữ được sự ổn định
        double diff = heading - _direction!;
        if (diff > 180) diff -= 360;
        if (diff < -180) diff += 360;
        _direction = _direction! + (diff * 0.5);
      }
      notifyListeners();
    });

    _positionSubscription = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    ).listen((Position position) {
      _currentPosition = position;
      _calculateQiblaData(position);
    });
  }

  Future<void> _updateLocation() async {
    try {
      _currentPosition = await Geolocator.getCurrentPosition();
      if (_currentPosition != null) {
        _calculateQiblaData(_currentPosition!);
      }
    } catch (e) {
      _errorMessage = 'Failed to get location: $e';
      notifyListeners();
    }
  }

  void _calculateQiblaData(Position position) {
    final coordinates = Coordinates(position.latitude, position.longitude);
    _qiblaDirection = Qibla(coordinates).direction;

    _distanceToMecca = Geolocator.distanceBetween(
      position.latitude,
      position.longitude,
      21.422487, // Precision Kaaba Latitude
      39.826206, // Precision Kaaba Longitude
    ) / 1000;

    notifyListeners();
  }

  @override
  void dispose() {
    _compassSubscription?.cancel();
    _positionSubscription?.cancel();
    super.dispose();
  }
}
