import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/entities/surah.dart';

class SurahPickerSheet extends StatefulWidget {
  const SurahPickerSheet({
    super.key,
    required this.surahs,
    required this.selectedSurah,
  });

  final List<Surah> surahs;
  final Surah selectedSurah;

  @override
  State<SurahPickerSheet> createState() => _SurahPickerSheetState();
}

class _SurahPickerSheetState extends State<SurahPickerSheet> {
  final TextEditingController _controller = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final filtered = widget.surahs.where((surah) {
      final query = _query.trim().toLowerCase();
      if (query.isEmpty) return true;
      return surah.englishName.toLowerCase().contains(query) ||
          surah.englishTranslate.toLowerCase().contains(query) ||
          surah.name.contains(_query.trim()) ||
          surah.number.toString() == query;
    }).toList();

    return DraggableScrollableSheet(
      initialChildSize: .72,
      minChildSize: .42,
      maxChildSize: .9,
      builder: (context, scrollController) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        final bg = isDark ? AppColors.quranDarkBg : AppColors.quranBg;
        final cardBg = isDark
            ? Colors.white.withValues(alpha: .06)
            : Colors.white;
        final text = isDark ? Colors.white : AppColors.primaryText;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                width: 42,
                height: 4,
                decoration: BoxDecoration(
                  color: text.withValues(alpha: .14),
                  borderRadius: BorderRadius.circular(99),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 18, 22, 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context).selectSurah,
                        style: TextStyle(
                          color: text,
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(AppIcons.close, color: text),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: TextField(
                  controller: _controller,
                  onChanged: (value) => setState(() => _query = value),
                  style: TextStyle(color: text),
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(
                      context,
                    ).searchSurahNumberArabic,
                    hintStyle: TextStyle(color: text.withValues(alpha: .5)),
                    prefixIcon: Icon(
                      AppIcons.search,
                      color: text.withValues(alpha: .5),
                    ),
                    filled: true,
                    fillColor: cardBg,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.separated(
                  controller: scrollController,
                  padding: const EdgeInsets.fromLTRB(22, 0, 22, 24),
                  itemCount: filtered.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    final surah = filtered[index];
                    final selected =
                        surah.number == widget.selectedSurah.number;
                    return Material(
                      color: selected
                          ? AppColors.emerald.withValues(alpha: .12)
                          : cardBg.withValues(alpha: .82),
                      borderRadius: BorderRadius.circular(18),
                      child: InkWell(
                        onTap: () => Navigator.pop(context, surah),
                        borderRadius: BorderRadius.circular(18),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  color: selected
                                      ? AppColors.emerald
                                      : AppColors.accentEmerald.withValues(
                                          alpha: .6,
                                        ),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Center(
                                  child: Text(
                                    '${surah.number}',
                                    style: TextStyle(
                                      color: selected
                                          ? Colors.white
                                          : AppColors.emerald,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 13),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      surah.englishName,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: text,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(height: 3),
                                    Text(
                                      '${surah.englishTranslate} • ${AppLocalizations.of(context).surahAyahCount(surah.numberOfAyahs)}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: text.withValues(alpha: .6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                surah.name,
                                style: AppTypography.arabic(
                                  color: selected ? AppColors.emerald : text,
                                  size: 20,
                                ),
                              ),
                              if (selected) ...[
                                const SizedBox(width: 8),
                                const Icon(
                                  AppIcons.checkCircle,
                                  color: AppColors.emerald,
                                  size: 20,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
