import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:provider/provider.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../domain/entities/surah.dart';
import '../pages/surah_detail_page.dart';
import '../provider/quran_provider.dart';
import 'continue_reading_button.dart';

class ContinueReadingCard extends StatelessWidget {
  const ContinueReadingCard({super.key, required this.onShowSurahPicker});

  final Function(QuranProvider provider, Surah lastSurah) onShowSurahPicker;

  @override
  Widget build(BuildContext context) {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        final l10n = AppLocalizations.of(context);
        final lastSurah = provider.lastReadSurah ?? provider.surahs.firstOrNull;
        if (lastSurah == null) return const SizedBox.shrink();

        final int currentAyah = provider.lastReadAyah ?? 1;
        final double progress = currentAyah / lastSurah.numberOfAyahs;
        final int percentage = (progress * 100).toInt();

        return Container(
          height: 312,
          margin: const EdgeInsets.fromLTRB(24, 10, 24, 22),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            boxShadow: [
              BoxShadow(
                color: AppColors.deepEmerald.withValues(alpha: .26),
                blurRadius: 30,
                offset: const Offset(0, 18),
              ),
              BoxShadow(
                color: AppColors.gold.withValues(alpha: .14),
                blurRadius: 18,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(34),
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    'assets/images/img_quran_widget.webp',
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight,
                    cacheWidth: 900,
                    filterQuality: FilterQuality.medium,
                  ),
                ),
                Positioned.fill(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColors.quranDeepGreen.withValues(alpha: .18),
                          AppColors.quranLightGreen.withValues(alpha: .08),
                          AppColors.quranDarkGreen.withValues(alpha: .28),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 30,
                  child: GestureDetector(
                    onTap: () => onShowSurahPicker(provider, lastSurah),
                    behavior: HitTestBehavior.opaque,
                    child: const SizedBox(width: 54, height: 66),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 24,
                  child: Row(
                    children: [
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: .13),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withValues(alpha: .08),
                              blurRadius: 14,
                            ),
                          ],
                        ),
                        child: const Icon(
                          AppIcons.menuBook,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      const SizedBox(width: 14),
                      Text(
                        l10n.continueReading,
                        style: TextStyle(
                          color: Colors.white.withValues(alpha: .9),
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 24,
                  right: 92,
                  top: 88,
                  child: InkWell(
                    onTap: () => onShowSurahPicker(provider, lastSurah),
                    borderRadius: BorderRadius.circular(12),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            lastSurah.englishName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 31,
                              height: 1,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Icon(
                          AppIcons.keyboardArrowDown,
                          color: Colors.white.withValues(alpha: .82),
                          size: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  right: 96,
                  top: 122,
                  child: Text(
                    lastSurah.englishTranslate,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.gold,
                      fontSize: 15,
                      height: 1,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 149,
                  child: SizedBox(
                    width: 148,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.white.withValues(alpha: .2),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9),
                          child: Icon(
                            AppIcons.brightness7,
                            size: 13,
                            color: AppColors.gold.withValues(alpha: .9),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.white.withValues(alpha: .2),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  top: 174,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 7,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.quranMutedGreen.withValues(alpha: .54),
                      borderRadius: BorderRadius.circular(999),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: .08),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          AppIcons.article,
                          color: Colors.white,
                          size: 13,
                        ),
                        const SizedBox(width: 7),
                        Text(
                          l10n.ayahNo(currentAyah),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 24,
                  right: 24,
                  bottom: 88,
                  child: Divider(color: Colors.white.withValues(alpha: .18)),
                ),
                Positioned(
                  left: 24,
                  right: 24,
                  bottom: 28,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 52,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                l10n.yourProgress,
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: .72),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Row(
                                children: [
                                  Expanded(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(99),
                                      child: LinearProgressIndicator(
                                        value: progress.clamp(0.0, 1.0),
                                        backgroundColor: Colors.white
                                            .withValues(alpha: .18),
                                        valueColor:
                                            const AlwaysStoppedAnimation(
                                              AppColors.gold,
                                            ),
                                        minHeight: 6,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '$percentage%',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 4),
                              Text(
                                l10n.readingProgressAyahCount(
                                  currentAyah,
                                  lastSurah.numberOfAyahs,
                                ),
                                style: TextStyle(
                                  color: Colors.white.withValues(alpha: .72),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      ContinueReadingButton(
                        onPressed: () {
                          AnalyticsService().trackButtonTap(
                            'quran',
                            'continue_reading',
                            params: {
                              'surah_number': lastSurah.number,
                              'surah_name': lastSurah.englishName,
                              'ayah': currentAyah,
                            },
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  SurahDetailPage(surah: lastSurah),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
