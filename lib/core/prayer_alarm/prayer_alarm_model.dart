class PrayerAlarmModel {
  const PrayerAlarmModel({
    required this.id,
    required this.prayerName,
    required this.prayerNameLocalized,
    required this.scheduledTime,
    required this.quote,
    this.soundAsset = 'noti_adhan_al_afassi.mp3',
    this.snoozeMinutes = 10,
    this.enabled = true,
  });

  final int id;
  final String prayerName;
  final String prayerNameLocalized;
  final DateTime scheduledTime;
  final String quote;
  final String soundAsset;
  final int snoozeMinutes;
  final bool enabled;

  PrayerAlarmModel copyWith({
    int? id,
    String? prayerName,
    String? prayerNameLocalized,
    DateTime? scheduledTime,
    String? quote,
    String? soundAsset,
    int? snoozeMinutes,
    bool? enabled,
  }) {
    return PrayerAlarmModel(
      id: id ?? this.id,
      prayerName: prayerName ?? this.prayerName,
      prayerNameLocalized: prayerNameLocalized ?? this.prayerNameLocalized,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      quote: quote ?? this.quote,
      soundAsset: soundAsset ?? this.soundAsset,
      snoozeMinutes: snoozeMinutes ?? this.snoozeMinutes,
      enabled: enabled ?? this.enabled,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'prayerName': prayerName,
      'prayerNameLocalized': prayerNameLocalized,
      'scheduledTime': scheduledTime.millisecondsSinceEpoch,
      'quote': quote,
      'soundAsset': soundAsset,
      'snoozeMinutes': snoozeMinutes,
      'enabled': enabled,
    };
  }

  factory PrayerAlarmModel.fromJson(Map<String, dynamic> json) {
    final prayerName = json['prayerName'] as String? ?? 'Prayer';
    return PrayerAlarmModel(
      id: (json['id'] as num?)?.toInt() ?? 9900,
      prayerName: prayerName,
      prayerNameLocalized:
          json['prayerNameLocalized'] as String? ?? prayerName,
      scheduledTime: DateTime.fromMillisecondsSinceEpoch(
        (json['scheduledTime'] as num?)?.toInt() ??
            DateTime.now().millisecondsSinceEpoch,
      ),
      quote:
          json['quote'] as String? ??
          'Take a pause from your work and make time for Allah.',
      soundAsset: json['soundAsset'] as String? ?? 'noti_adhan_al_afassi.mp3',
      snoozeMinutes: (json['snoozeMinutes'] as num?)?.toInt() ?? 10,
      enabled: json['enabled'] as bool? ?? true,
    );
  }

  static String localizedName(String prayerName) {
    switch (prayerName.toLowerCase()) {
      case 'fajr':
        return 'Fajr';
      case 'dhuhr':
        return 'Dhuhr';
      case 'asr':
        return 'Asr';
      case 'maghrib':
        return 'Maghrib';
      case 'isha':
        return 'Isha';
      default:
        return prayerName;
    }
  }
}
