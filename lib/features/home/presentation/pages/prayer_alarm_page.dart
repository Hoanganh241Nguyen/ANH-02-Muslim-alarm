import 'package:flutter/material.dart';

import '../../../../core/prayer_alarm/prayer_alarm_model.dart';
import '../../../../core/prayer_alarm/prayer_alarm_screen.dart';

class PrayerAlarmPage extends StatelessWidget {
  const PrayerAlarmPage({
    super.key,
    required this.prayerName,
    this.id = 9900,
    this.scheduledTime,
    this.quote = 'Hãy tạm dừng công việc và dành thời gian cho Allah.',
  });

  final int id;
  final String prayerName;
  final DateTime? scheduledTime;
  final String quote;

  @override
  Widget build(BuildContext context) {
    final cleanPrayerName = prayerName.replaceFirst('Debug ', '').trim();
    return PrayerAlarmScreen(
      alarm: PrayerAlarmModel(
        id: id,
        prayerName: cleanPrayerName,
        prayerNameLocalized: PrayerAlarmModel.localizedName(cleanPrayerName),
        scheduledTime: scheduledTime ?? DateTime.now(),
        quote: quote,
      ),
    );
  }
}
