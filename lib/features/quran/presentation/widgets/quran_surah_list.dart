import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/ads/ad_unit_ids.dart';
import '../../../../core/ads/base_native_ad.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../domain/entities/surah.dart';
import '../pages/surah_detail_page.dart';
import '../provider/quran_provider.dart';

class QuranSurahList extends StatelessWidget {
  const QuranSurahList({
    super.key,
    required this.provider,
    required this.tabIndex,
  });

  final QuranProvider provider;
  final int tabIndex;

  static const int _nativeAdInterval = 8;
  static const int _maxNativeAds = 4;

  @override
  Widget build(BuildContext context) {
    if (tabIndex == 0) {
      if (provider.searchQuery.isNotEmpty) {
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final surah = provider.surahs[index];
              return _SurahItem(surah: surah, provider: provider);
            }, childCount: provider.surahs.length),
          ),
        );
      }

      final items = <Widget>[];
      var surahCardCount = 0;
      var nativeAdCount = 0;
      // A long surah spans several juz; list it once, under the juz it starts in.
      final listedSurahs = <int>{};
      for (int juz = 1; juz <= 30; juz++) {
        final surahs = provider
            .getSurahsForJuz(juz)
            .where((surah) => listedSurahs.add(surah.number))
            .toList();
        if (surahs.isEmpty) continue;
        items.add(_JuzHeader(juz: juz));
        for (final surah in surahs) {
          surahCardCount++;
          items.add(_SurahItem(surah: surah, provider: provider));
          if (surahCardCount % _nativeAdInterval == 0 &&
              nativeAdCount < _maxNativeAds) {
            nativeAdCount++;
            items.add(
              _SurahListNativeAd(
                key: ValueKey('quran-surah-list-native-$nativeAdCount'),
              ),
            );
          }
        }
      }

      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => items[index],
            childCount: items.length,
          ),
        ),
      );
    } else if (tabIndex == 1) {
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          delegate: SliverChildBuilderDelegate((context, index) {
            final juzNumber = index + 1;
            return _JuzItem(juzNumber: juzNumber, provider: provider);
          }, childCount: 30),
        ),
      );
    } else if (tabIndex == 2) {
      if (provider.bookmarks.isEmpty) {
        return SliverFillRemaining(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  AppIcons.bookmarkBorder,
                  size: 64,
                  color: AppColors.secondaryText,
                ),
                const SizedBox(height: 16),
                Text(
                  AppLocalizations.of(context).noBookmarksYet,
                  style: const TextStyle(color: AppColors.secondaryText),
                ),
              ],
            ),
          ),
        );
      }
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final ayah = provider.bookmarks[index];
            final surah = provider.surahs.firstWhere(
              (s) => s.number == ayah.surahNumber,
            );
            return _BookmarkItem(ayah: ayah, surah: surah, provider: provider);
          }, childCount: provider.bookmarks.length),
        ),
      );
    } else {
      final pages = provider.pageList;
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverLayoutBuilder(
          builder: (context, constraints) {
            final crossAxisCount = constraints.crossAxisExtent >= 420 ? 4 : 3;
            return SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                final page = pages[index];
                return _PageItem(page: page, provider: provider);
              }, childCount: pages.length),
            );
          },
        ),
      );
    }
  }
}

class _SurahListNativeAd extends StatelessWidget {
  const _SurahListNativeAd({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    return BaseNativeAd(
      type: ScreenAds.quranList,
      height: 94,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.8),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? .2 : 0.03),
            blurRadius: isDark ? 20 : 15,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
      ),
    );
  }
}

class _SurahItem extends StatelessWidget {
  const _SurahItem({required this.surah, required this.provider});

  final Surah surah;
  final QuranProvider provider;

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    final accent = AppColors.adaptiveAccent(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.8),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? .2 : 0.03),
            blurRadius: isDark ? 20 : 15,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            AnalyticsService().trackButtonTap(
              'quran',
              'surah_open',
              params: {
                'surah_number': surah.number,
                'surah_name': surah.englishName,
                'source': provider.searchQuery.isEmpty ? 'list' : 'search',
              },
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurahDetailPage(surah: surah),
              ),
            );
          },
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: isDark ? .16 : .12),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: _HighlightedText(
                      text: '${surah.number}',
                      query: provider.searchQuery,
                      baseStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: accent,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _HighlightedText(
                        text: surah.englishName,
                        query: provider.searchQuery,
                        baseStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Text(
                            _localizedRevelationType(
                              l10n,
                              surah.revelationType,
                            ),
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: mutedColor.withValues(alpha: 0.72),
                              letterSpacing: 0.8,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '• ${l10n.surahAyahCount(surah.numberOfAyahs)}',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: mutedColor.withValues(alpha: 0.72),
                            ),
                          ),
                          if (surah.onJuz != null) ...[
                            const SizedBox(width: 8),
                            Text(
                              '• ${l10n.juzNumber(surah.onJuz!)}',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w600,
                                color: mutedColor.withValues(alpha: 0.72),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
                Text(
                  surah.name,
                  style: AppTypography.arabic(color: accent, size: 24),
                ),
                const SizedBox(width: 10),
                Text(
                  surah.firstPage?.toString() ?? '',
                  style: TextStyle(
                    color: mutedColor.withValues(alpha: 0.72),
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _JuzHeader extends StatelessWidget {
  const _JuzHeader({required this.juz});
  final int juz;

  @override
  Widget build(BuildContext context) {
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);
    return Container(
      height: 38,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(bottom: 10, top: 4),
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Text(
            l10n.juzNumber(juz),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w800,
              color: mutedColor.withValues(alpha: 0.82),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Divider(color: mutedColor.withValues(alpha: 0.14))),
        ],
      ),
    );
  }
}

class _JuzItem extends StatelessWidget {
  const _JuzItem({required this.juzNumber, required this.provider});
  final int juzNumber;
  final QuranProvider provider;

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    final accent = AppColors.adaptiveAccent(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);
    return Container(
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.8),
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: accent.withValues(alpha: isDark ? .14 : 0.05),
            blurRadius: isDark ? 20 : 15,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () async {
            final surah = provider.firstSurahForJuz(juzNumber);
            if (surah == null) return;
            AnalyticsService().trackButtonTap(
              'quran',
              'juz_open',
              params: {'juz': juzNumber, 'surah_number': surah.number},
            );
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SurahDetailPage(surah: surah),
              ),
            );
          },
          borderRadius: BorderRadius.circular(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [accent, accent.withValues(alpha: 0.72)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: accent.withValues(alpha: 0.3),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    '$juzNumber',
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.juz,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: textColor,
                  fontSize: 13,
                  letterSpacing: 1.5,
                ),
              ),
              Text(
                l10n.surahAyahCount(provider.getAyahsByJuz(juzNumber).length),
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: mutedColor.withValues(alpha: 0.72),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _PageItem extends StatelessWidget {
  const _PageItem({required this.page, required this.provider});
  final int page;
  final QuranProvider provider;

  @override
  Widget build(BuildContext context) {
    final surah = provider.firstSurahForPage(page);
    final ayahCount = provider.getAyahsByPage(page).length;
    final isDark = AppColors.isDark(context);
    final accent = AppColors.adaptiveAccent(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.8),
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: accent.withValues(alpha: isDark ? .14 : 0.05),
            blurRadius: isDark ? 16 : 12,
            offset: const Offset(0, 5),
          ),
        ],
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: surah == null
              ? null
              : () {
                  AnalyticsService().trackButtonTap(
                    'quran',
                    'page_open',
                    params: {'page': page, 'surah_number': surah.number},
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SurahDetailPage(surah: surah),
                    ),
                  );
                },
          borderRadius: BorderRadius.circular(22),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$page',
                  style: TextStyle(
                    color: accent,
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  l10n.page,
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 10,
                  ),
                ),
                Text(
                  l10n.surahAyahCount(ayahCount),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: mutedColor.withValues(alpha: 0.72),
                    fontWeight: FontWeight.w600,
                    fontSize: 9,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BookmarkItem extends StatelessWidget {
  const _BookmarkItem({
    required this.ayah,
    required this.surah,
    required this.provider,
  });
  final dynamic ayah;
  final Surah surah;
  final QuranProvider provider;

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    final accent = AppColors.adaptiveAccent(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.8),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? .2 : 0.03),
            blurRadius: isDark ? 20 : 15,
            offset: const Offset(0, 8),
          ),
        ],
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
      ),
      child: Material(
 type: MaterialType.transparency,
 child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        leading: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: accent.withValues(alpha: isDark ? .16 : .12),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Icon(AppIcons.bookmark, color: accent, size: 22),
        ),
        title: Text(
          l10n.surahVerse(surah.englishName, ayah.number),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.w800,
            color: textColor,
            fontSize: 16,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            ayah.text,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTypography.arabic(color: mutedColor, size: 18),
          ),
        ),
        onTap: () {
          AnalyticsService().trackButtonTap(
            'quran',
            'bookmark_item_open',
            params: {
              'surah_number': surah.number,
              'surah_name': surah.englishName,
              'ayah': ayah.number,
            },
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SurahDetailPage(surah: surah),
            ),
          );
        },
      ),
),
    );
  }
}

String _localizedRevelationType(AppLocalizations l10n, String type) {
  return switch (type.toLowerCase()) {
    'meccan' => l10n.meccan,
    'medinan' => l10n.medinan,
    _ => type,
  };
}

class _HighlightedText extends StatelessWidget {
  const _HighlightedText({
    required this.text,
    required this.query,
    required this.baseStyle,
  });
  final String text;
  final String query;
  final TextStyle baseStyle;

  @override
  Widget build(BuildContext context) {
    if (query.isEmpty || !text.toLowerCase().contains(query.toLowerCase())) {
      return Text(text, style: baseStyle);
    }

    final String lowerText = text.toLowerCase();
    final String lowerQuery = query.toLowerCase();

    final List<TextSpan> spans = [];
    int start = 0;
    int indexOfMatch;

    while ((indexOfMatch = lowerText.indexOf(lowerQuery, start)) != -1) {
      if (indexOfMatch > start) {
        spans.add(
          TextSpan(text: text.substring(start, indexOfMatch), style: baseStyle),
        );
      }
      spans.add(
        TextSpan(
          text: text.substring(indexOfMatch, indexOfMatch + query.length),
          style: baseStyle.copyWith(
            color: AppColors.emerald,
            fontWeight: FontWeight.w900,
          ),
        ),
      );
      start = indexOfMatch + query.length;
    }

    if (start < text.length) {
      spans.add(TextSpan(text: text.substring(start), style: baseStyle));
    }

    return RichText(
      text: TextSpan(children: spans),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
