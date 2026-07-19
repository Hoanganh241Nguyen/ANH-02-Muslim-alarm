import 'package:equatable/equatable.dart';

enum PrayerType { fajr, dhuhr, asr, maghrib, isha }

enum SoundStatus { ring, vibrate, silent }

class PrayerTime extends Equatable {
  final PrayerType type;
  final DateTime time;
  final bool isCurrent;
  final SoundStatus soundStatus;

  const PrayerTime({
    required this.type,
    required this.time,
    this.isCurrent = false,
    this.soundStatus = SoundStatus.ring,
  });

  String get name {
    switch (type) {
      case PrayerType.fajr: return 'Fajr';
      case PrayerType.dhuhr: return 'Dhuhr';
      case PrayerType.asr: return 'Asr';
      case PrayerType.maghrib: return 'Maghrib';
      case PrayerType.isha: return 'Isha';
    }
  }

  String get subtitle {
    switch (type) {
      case PrayerType.fajr: return 'DAWN';
      case PrayerType.dhuhr: return 'NOON';
      case PrayerType.asr: return 'AFTERNOON';
      case PrayerType.maghrib: return 'SUNSET';
      case PrayerType.isha: return 'NIGHT';
    }
  }

  @override
  List<Object?> get props => [type, time, isCurrent, soundStatus];
}
