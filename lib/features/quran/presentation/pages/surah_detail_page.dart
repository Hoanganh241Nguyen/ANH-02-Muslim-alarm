import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:provider/provider.dart';
import '../../../../core/ads/ad_unit_ids.dart';
import '../../../../core/ads/base_native_ad.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/base_app_bar.dart';
import '../../../../language/generated/app_localizations.dart';
import '../provider/quran_provider.dart';
import '../../domain/entities/ayah.dart';
import '../../domain/entities/surah.dart';

class SurahDetailPage extends StatefulWidget {
  final Surah surah;
  const SurahDetailPage({super.key, required this.surah});

  @override
  State<SurahDetailPage> createState() => _SurahDetailPageState();
}

class _SurahDetailPageState extends State<SurahDetailPage> {
  static const int _nativeAdInterval = 8;
  static const int _maxInlineNativeAds = 3;

  final Map<int, GlobalKey> _itemKeys = {};
  Ayah? _lastScrolledAyah;
  late final QuranProvider _quranProvider;

  @override
  void initState() {
    super.initState();
    _quranProvider = context.read<QuranProvider>();
    AnalyticsService().trackScreenView(
      'surah_detail',
      source: 'quran',
      params: {
        'surah_number': widget.surah.number,
        'surah_name': widget.surah.englishName,
      },
    );
    Future.microtask(() => _quranProvider.loadSurahDetail(widget.surah));
  }

  @override
  void dispose() {
    unawaited(_quranProvider.stopAudio());
    super.dispose();
  }

  void _scrollToCurrentAyah(Ayah? currentAyah, List<Ayah> ayahs) {
    if (currentAyah == null || ayahs.isEmpty) return;
    if (_lastScrolledAyah?.number == currentAyah.number &&
        _lastScrolledAyah?.surahNumber == currentAyah.surahNumber) {
      return;
    }

    final index = ayahs.indexWhere(
      (a) =>
          a.number == currentAyah.number &&
          a.surahNumber == currentAyah.surahNumber,
    );

    if (index != -1) {
      _lastScrolledAyah = currentAyah;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final key = _itemKeys[index];
        if (key?.currentContext != null) {
          Scrollable.ensureVisible(
            key!.currentContext!,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOutCubic,
            alignment: 0.3,
          );
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QuranProvider>(
      builder: (context, provider, child) {
        final ayahs = provider.ayahs;
        final isDark = AppColors.isDark(context);
        final textColor = AppColors.adaptiveText(context);
        final mutedColor = AppColors.adaptiveSecondaryText(context);
        final showAudioPlayer =
            provider.hasActiveAudioSession && provider.currentAyah != null;
        _scrollToCurrentAyah(provider.currentAyah, ayahs);

        return Scaffold(
          backgroundColor: isDark ? AppColors.darkBackground : AppColors.ivory,
          appBar: AppBaseAppBar(
            backgroundColor: isDark ? AppColors.darkSurface : Colors.white,
            leading: IconButton(
              icon: Icon(
                AppIcons.arrowBackIosNew,
                color: textColor,
                size: 20,
              ),
              onPressed: () {
                AnalyticsService().trackButtonTap(
                  'surah_detail',
                  'back',
                  params: {'surah_number': widget.surah.number},
                );
                Navigator.pop(context);
              },
            ),
            title: widget.surah.englishName,
            subtitle: [
              widget.surah.englishTranslate,
              if (widget.surah.onJuz != null)
                AppLocalizations.of(context).juzNumber(widget.surah.onJuz!),
              if (widget.surah.firstPage != null)
                AppLocalizations.of(
                  context,
                ).pageNumber(widget.surah.firstPage!),
            ].join(' • '),
            actions: [
              IconButton(
                icon: Icon(AppIcons.search, color: textColor),
                onPressed: () {
                  AnalyticsService().trackButtonTap(
                    'surah_detail',
                    'search',
                    params: {'surah_number': widget.surah.number},
                  );
                },
              ),
            ],
          ),
          body: provider.isLoading
              ? const Center(
                  child: CircularProgressIndicator(color: AppColors.emerald),
                )
              : Stack(
                  children: [
                    ListView.builder(
                      padding: EdgeInsets.fromLTRB(
                        20,
                        20,
                        20,
                        showAudioPlayer ? 152 : 20,
                      ),
                      itemCount:
                          ayahs.length + 1 + _nativeAdCount(ayahs.length),
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return _buildBismillah();
                        }
                        final contentIndex = index - 1;
                        if (_isNativeAdSlot(contentIndex, ayahs.length)) {
                          return _buildInlineNativeAd(isDark);
                        }

                        final ayahIndex = _ayahIndexForContentIndex(
                          contentIndex,
                          ayahs.length,
                        );
                        final ayah = ayahs[ayahIndex];
                        final isPlaying =
                            provider.currentAyah?.number == ayah.number &&
                            provider.currentAyah?.surahNumber ==
                                ayah.surahNumber;

                        _itemKeys[ayahIndex] ??= GlobalKey();

                        return Container(
                          key: _itemKeys[ayahIndex],
                          margin: const EdgeInsets.only(bottom: 24),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.adaptiveAccent(
                                    context,
                                  ).withValues(alpha: isDark ? .16 : .12),
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                    color: AppColors.adaptiveBorder(
                                      context,
                                      alpha: .14,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 28,
                                      height: 28,
                                      decoration: BoxDecoration(
                                        color: AppColors.adaptiveAccent(
                                          context,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '${ayah.number}',
                                          style: TextStyle(
                                            color: isDark
                                                ? AppColors.darkBackground
                                                : Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Flexible(
                                      child: Text(
                                        [
                                          AppLocalizations.of(
                                            context,
                                          ).juzNumber(ayah.juz),
                                          if (ayah.page != null)
                                            AppLocalizations.of(
                                              context,
                                            ).pageNumber(ayah.page!),
                                        ].join(' • '),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: mutedColor.withValues(
                                            alpha: 0.82,
                                          ),
                                          fontSize: 11,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      icon: Icon(
                                        provider.isBookmarked(ayah)
                                            ? AppIcons.bookmark
                                            : AppIcons.bookmarkBorder,
                                        color: AppColors.emerald,
                                        size: 20,
                                      ),
                                      onPressed: () {
                                        AnalyticsService().trackButtonTap(
                                          'surah_detail',
                                          provider.isBookmarked(ayah)
                                              ? 'ayah_bookmark_remove'
                                              : 'ayah_bookmark_add',
                                          params: {
                                            'surah_number': widget.surah.number,
                                            'ayah': ayah.number,
                                          },
                                        );
                                        provider.toggleBookmark(ayah);
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        isPlaying && provider.isPlaying
                                            ? AppIcons.pauseCircleFilled
                                            : AppIcons.playCircleFill,
                                        color: AppColors.emerald,
                                        size: 24,
                                      ),
                                      onPressed: () {
                                        AnalyticsService().trackButtonTap(
                                          'surah_detail',
                                          isPlaying && provider.isPlaying
                                              ? 'ayah_audio_pause'
                                              : 'ayah_audio_play',
                                          params: {
                                            'surah_number': widget.surah.number,
                                            'ayah': ayah.number,
                                          },
                                        );
                                        provider.saveLastRead(
                                          widget.surah,
                                          ayah.number,
                                        );
                                        if (isPlaying) {
                                          provider.togglePlay();
                                        } else {
                                          provider.playAyah(ayah);
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Text(
                                ayah.text,
                                textAlign: TextAlign.right,
                                style: AppTypography.arabic(
                                  color: textColor,
                                  size: 28,
                                  height: 2.2,
                                ),
                              ),
                              if (ayah.transliteration.isNotEmpty) ...[
                                const SizedBox(height: 14),
                                Text(
                                  ayah.transliteration,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: textColor,
                                    fontWeight: FontWeight.w700,
                                    height: 1.45,
                                  ),
                                ),
                              ],
                              const SizedBox(height: 16),
                              Text(
                                ayah.translation,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: mutedColor,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Divider(
                                color: isDark
                                    ? AppColors.softGold.withValues(alpha: .16)
                                    : Colors.black12,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    if (showAudioPlayer)
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 12,
                        child: _buildAudioPlayer(
                          provider,
                          isDark,
                          textColor,
                          mutedColor,
                        ),
                      ),
                  ],
                ),
        );
      },
    );
  }

  Widget _buildAudioPlayer(
    QuranProvider provider,
    bool isDark,
    Color textColor,
    Color mutedColor,
  ) {
    final ayah = provider.currentAyah!;
    final duration = provider.duration;
    final position = provider.position;
    final hasDuration = duration > Duration.zero;
    final sliderMax = hasDuration ? duration.inMilliseconds.toDouble() : 1.0;
    final sliderValue = hasDuration
        ? math.min(position.inMilliseconds.toDouble(), sliderMax)
        : 0.0;
    final surface = isDark ? AppColors.darkSurface : Colors.white;
    final accent = AppColors.adaptiveAccent(context);

    return SafeArea(
      top: false,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: surface.withValues(alpha: .96),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(color: AppColors.adaptiveBorder(context)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? .32 : .12),
              blurRadius: 26,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 12, 14, 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: accent.withValues(alpha: isDark ? .18 : .10),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(AppIcons.graphicEq, color: accent),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${widget.surah.englishName} • Ayah ${ayah.number}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTypography.body(
                            context,
                            color: textColor,
                            size: 13,
                            weight: FontWeight.w800,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          ayah.text,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          style: AppTypography.arabic(
                            color: mutedColor,
                            size: 16,
                            height: 1.25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    tooltip: AppLocalizations.of(context).stopAudio,
                    onPressed: () {
                      AnalyticsService().trackButtonTap(
                        'surah_detail',
                        'audio_player_stop',
                        params: {
                          'surah_number': widget.surah.number,
                          'ayah': ayah.number,
                        },
                      );
                      unawaited(provider.stopAudio());
                    },
                    icon: Icon(
                      AppIcons.close,
                      color: mutedColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    _formatDuration(position),
                    style: AppTypography.caption(
                      context,
                      color: mutedColor,
                      size: 10,
                    ),
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 3,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 6,
                        ),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 14,
                        ),
                        activeTrackColor: accent,
                        inactiveTrackColor: accent.withValues(alpha: .16),
                        thumbColor: accent,
                        overlayColor: accent.withValues(alpha: .12),
                      ),
                      child: Slider(
                        value: sliderValue,
                        min: 0,
                        max: sliderMax,
                        onChanged: hasDuration
                            ? (value) => provider.seek(
                                Duration(milliseconds: value.round()),
                              )
                            : null,
                      ),
                    ),
                  ),
                  Text(
                    _formatDuration(duration),
                    style: AppTypography.caption(
                      context,
                      color: mutedColor,
                      size: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildPlayerIconButton(
                    icon: AppIcons.skipPrevious,
                    tooltip: AppLocalizations.of(context).previousAyah,
                    onPressed: provider.audioPlayer.hasPrevious
                        ? () {
                            AnalyticsService().trackButtonTap(
                              'surah_detail',
                              'audio_player_previous',
                              params: {'surah_number': widget.surah.number},
                            );
                            unawaited(provider.playPrevious());
                          }
                        : null,
                  ),
                  const SizedBox(width: 10),
                  Material(
                    color: accent,
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () {
                        AnalyticsService().trackButtonTap(
                          'surah_detail',
                          provider.isPlaying
                              ? 'audio_player_pause'
                              : 'audio_player_play',
                          params: {
                            'surah_number': widget.surah.number,
                            'ayah': ayah.number,
                          },
                        );
                        provider.togglePlay();
                      },
                      child: SizedBox(
                        width: 48,
                        height: 48,
                        child: Icon(
                          provider.isPlaying
                              ? AppIcons.pause
                              : AppIcons.playArrow,
                          color: isDark
                              ? AppColors.darkBackground
                              : Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  _buildPlayerIconButton(
                    icon: AppIcons.skipNext,
                    tooltip: AppLocalizations.of(context).nextAyah,
                    onPressed: provider.audioPlayer.hasNext
                        ? () {
                            AnalyticsService().trackButtonTap(
                              'surah_detail',
                              'audio_player_next',
                              params: {'surah_number': widget.surah.number},
                            );
                            unawaited(provider.playNext());
                          }
                        : null,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlayerIconButton({
    required IconData icon,
    required String tooltip,
    required VoidCallback? onPressed,
  }) {
    return IconButton(
      tooltip: tooltip,
      onPressed: onPressed,
      icon: Icon(icon, size: 26),
      color: AppColors.adaptiveAccent(context),
      disabledColor: AppColors.adaptiveSecondaryText(
        context,
      ).withValues(alpha: .34),
    );
  }

  String _formatDuration(Duration duration) {
    final totalSeconds = duration.inSeconds;
    final minutes = totalSeconds ~/ 60;
    final seconds = totalSeconds % 60;
    return '$minutes:${seconds.toString().padLeft(2, '0')}';
  }

  Widget _buildBismillah() {
    if (widget.surah.number == 1 || widget.surah.number == 9) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      child: Text(
        'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ',
        textAlign: TextAlign.center,
        style: AppTypography.arabic(
          color: AppColors.adaptiveAccent(context),
          size: 32,
        ),
      ),
    );
  }

  int _nativeAdCount(int ayahCount) {
    if (ayahCount <= _nativeAdInterval) return 0;
    return math.min(_maxInlineNativeAds, (ayahCount - 1) ~/ _nativeAdInterval);
  }

  bool _isNativeAdSlot(int contentIndex, int ayahCount) {
    final adCount = _nativeAdCount(ayahCount);
    for (var adNumber = 1; adNumber <= adCount; adNumber++) {
      if (contentIndex == adNumber * _nativeAdInterval + adNumber - 1) {
        return true;
      }
    }
    return false;
  }

  int _ayahIndexForContentIndex(int contentIndex, int ayahCount) {
    final adsBefore = math.min(
      _nativeAdCount(ayahCount),
      contentIndex ~/ (_nativeAdInterval + 1),
    );
    return contentIndex - adsBefore;
  }

  Widget _buildInlineNativeAd(bool isDark) {
    return BaseNativeAd(
      type: ScreenAds.quranDetailList,
      height: 116,
      margin: const EdgeInsets.only(bottom: 24),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.darkSurface.withValues(alpha: .88)
            : Colors.white.withValues(alpha: .96),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? .20 : .05),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
    );
  }
}
