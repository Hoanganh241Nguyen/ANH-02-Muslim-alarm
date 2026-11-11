import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../domain/entities/prayer_time.dart';
import '../providers/prayer_time_provider.dart';
import 'package:intl/intl.dart';

class PrayerCard extends StatelessWidget {
  final PrayerTime prayer;

  const PrayerCard({super.key, required this.prayer});

  @override
  Widget build(BuildContext context) {
    final bool isCurrent = prayer.isCurrent;
    final isDark = AppColors.isDark(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final accentColor = AppColors.adaptiveAccent(context);
    final l10n = AppLocalizations.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.7),
        borderRadius: BorderRadius.circular(16),
        border: isCurrent
            ? Border.all(color: accentColor, width: 1.5)
            : Border.all(color: AppColors.adaptiveBorder(context, alpha: .12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? 0.16 : 0.03),
            blurRadius: isDark ? 18 : 10,
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
                child: Container(width: 4, color: accentColor),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  _getIcon(prayer.type, isCurrent ? accentColor : mutedColor),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            _getPrayerName(l10n, prayer.type),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: textColor,
                            ),
                          ),
                          if (isCurrent) ...[
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? AppColors.softGold.withValues(alpha: .16)
                                    : AppColors.accentEmerald,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                l10n.current,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: isDark
                                      ? AppColors.softGold
                                      : AppColors.emerald,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      Text(
                        _getSubtitle(l10n, prayer.type),
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: mutedColor,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    DateFormat(l10n.hhMmA, l10n.localeName).format(prayer.time),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(width: 12),
                  _buildReminderButton(context, prayer.soundStatus, isCurrent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getPrayerName(AppLocalizations l10n, PrayerType type) {
    switch (type) {
      case PrayerType.fajr:
        return l10n.fajr;
      case PrayerType.dhuhr:
        return l10n.dhuhr;
      case PrayerType.asr:
        return l10n.asr;
      case PrayerType.maghrib:
        return l10n.maghrib;
      case PrayerType.isha:
        return l10n.isha;
    }
  }

  Widget _getIcon(PrayerType type, Color color) {
    final name = switch (type) {
      PrayerType.fajr => 'ic_fajr',
      PrayerType.dhuhr => 'ic_dhuhr',
      PrayerType.asr => 'ic_asr',
      PrayerType.maghrib => 'ic_maghrib',
      PrayerType.isha => 'ic_isha',
    };
    return SvgPicture.asset(
      'assets/images/icon/prayer/$name.svg',
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }

  String _getSubtitle(AppLocalizations l10n, PrayerType type) {
    switch (type) {
      case PrayerType.fajr:
        return l10n.dawn;
      case PrayerType.dhuhr:
        return l10n.noon;
      case PrayerType.asr:
        return l10n.afternoon;
      case PrayerType.maghrib:
        return l10n.sunset;
      case PrayerType.isha:
        return l10n.night;
    }
  }

  Widget _buildReminderButton(
    BuildContext context,
    SoundStatus status,
    bool isCurrent,
  ) {
    final l10n = AppLocalizations.of(context);
    IconData iconData;
    String label;
    Color color;
    Color backgroundColor;
    Color borderColor;
    final isDark = AppColors.isDark(context);
    switch (status) {
      case SoundStatus.ring:
        iconData = isCurrent
            ? AppIcons.notifications
            : AppIcons.notificationsNone;
        label = l10n.reminderRing;
        color = isDark ? AppColors.softGold : AppColors.emerald;
        backgroundColor = isDark
            ? AppColors.softGold.withValues(alpha: 0.16)
            : AppColors.accentEmerald;
        borderColor = color.withValues(alpha: 0.28);
        break;
      case SoundStatus.vibrate:
        iconData = AppIcons.vibration;
        label = l10n.reminderVibrate;
        color = AppColors.gold;
        backgroundColor = AppColors.streakBg.withValues(
          alpha: isDark ? 0.16 : 0.72,
        );
        borderColor = AppColors.gold.withValues(alpha: 0.32);
        break;
      case SoundStatus.silent:
        iconData = AppIcons.notificationsOff;
        label = l10n.reminderSilent;
        color = AppColors.adaptiveSecondaryText(context);
        backgroundColor = AppColors.adaptiveMutedSurface(context);
        borderColor = color.withValues(alpha: 0.16);
        break;
    }

    return Tooltip(
      message: label,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            AnalyticsService().trackButtonTap(
              'home',
              'prayer_reminder_toggle',
              params: {'prayer': prayer.name, 'from_status': status.name},
            );
            context.read<PrayerTimeProvider>().toggleSoundStatus(prayer.type);
            // The icons for the three modes look alike, so say which one is on.
            final nextLabel = switch (status) {
              SoundStatus.ring => l10n.reminderVibrate,
              SoundStatus.vibrate => l10n.reminderSilent,
              SoundStatus.silent => l10n.reminderRing,
            };
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(
                    '${_getPrayerName(l10n, prayer.type)}: $nextLabel',
                  ),
                  duration: const Duration(seconds: 2),
                  behavior: SnackBarBehavior.floating,
                ),
              );
          },
          borderRadius: BorderRadius.circular(18),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            height: 36,
            padding: const EdgeInsets.symmetric(horizontal: 9),
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: borderColor),
              boxShadow: [
                if (status != SoundStatus.silent)
                  BoxShadow(
                    color: color.withValues(alpha: 0.12),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(iconData, color: color, size: 17)],
            ),
          ),
        ),
      ),
    );
  }
}
