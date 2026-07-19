import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/prayer_time.dart';
import '../providers/prayer_time_provider.dart';
import 'package:intl/intl.dart';

class PrayerCard extends StatelessWidget {
  final PrayerTime prayer;

  const PrayerCard({super.key, required this.prayer});

  @override
  Widget build(BuildContext context) {
    final bool isCurrent = prayer.isCurrent;

    return GestureDetector(
      onTap: () {
        context.read<PrayerTimeProvider>().toggleSoundStatus(prayer.type);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(16),
          border: isCurrent ? Border.all(color: AppColors.emerald, width: 1.5) : null,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              if (isCurrent)
                Positioned(
                  left: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 4,
                    color: AppColors.gold,
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  children: [
                    _getIcon(prayer.type, isCurrent),
                    const SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              prayer.name,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: AppColors.primaryText,
                              ),
                            ),
                            if (isCurrent) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                                decoration: BoxDecoration(
                                  color: AppColors.accentEmerald,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(
                                  'CURRENT',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.emerald,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        Text(
                          _getSubtitle(prayer.type),
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: AppColors.secondaryText,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      DateFormat('hh:mm a').format(prayer.time),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: AppColors.primaryText,
                      ),
                    ),
                    const SizedBox(width: 12),
                    _getSoundIcon(prayer.soundStatus, isCurrent),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getIcon(PrayerType type, bool isCurrent) {
    IconData iconData;
    switch (type) {
      case PrayerType.fajr:
        iconData = Icons.wb_twilight_outlined;
        break;
      case PrayerType.dhuhr:
        iconData = Icons.wb_sunny_outlined;
        break;
      case PrayerType.asr:
        iconData = Icons.wb_cloudy_outlined;
        break;
      case PrayerType.maghrib:
        iconData = Icons.wb_sunny_outlined;
        break;
      case PrayerType.isha:
        iconData = Icons.nightlight_round_outlined;
        break;
    }
    return Icon(iconData, color: isCurrent ? AppColors.emerald : AppColors.secondaryText, size: 24);
  }

  String _getSubtitle(PrayerType type) {
    switch (type) {
      case PrayerType.fajr: return 'DAWN';
      case PrayerType.dhuhr: return 'NOON';
      case PrayerType.asr: return 'AFTERNOON';
      case PrayerType.maghrib: return 'SUNSET';
      case PrayerType.isha: return 'NIGHT';
    }
  }

  Widget _getSoundIcon(SoundStatus status, bool isCurrent) {
    IconData iconData;
    switch (status) {
      case SoundStatus.ring:
        iconData = isCurrent ? Icons.notifications : Icons.notifications_none;
        break;
      case SoundStatus.vibrate:
        iconData = Icons.vibration;
        break;
      case SoundStatus.silent:
        iconData = Icons.notifications_off_outlined;
        break;
    }
    return Icon(
      iconData,
      color: isCurrent ? AppColors.emerald : AppColors.secondaryText,
      size: 20,
    );
  }
}
