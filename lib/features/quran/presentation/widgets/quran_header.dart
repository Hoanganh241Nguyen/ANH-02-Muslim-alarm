import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/base_app_bar.dart';
import '../../../../core/widgets/app_settings_button.dart';

class QuranHeader extends StatelessWidget {
  const QuranHeader({
    super.key,
    required this.isSearching,
    required this.searchController,
    required this.tabIndex,
    required this.onSearchToggle,
    required this.onSearchChanged,
    required this.onBookmarkTap,
  });

  final bool isSearching;
  final TextEditingController searchController;
  final int tabIndex;
  final VoidCallback onSearchToggle;
  final Function(String) onSearchChanged;
  final VoidCallback onBookmarkTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    final textColor = AppColors.adaptiveText(context);
    final accent = AppColors.adaptiveAccent(context);
    final headerColor = isDark
        ? AppColors.darkSurface.withValues(alpha: .9)
        : AppColors.quranBg.withValues(alpha: .94);

    if (!isSearching) {
      return AppTopBar(
        title: AppLocalizations.of(context).quran,
        leadingIcon: AppIcons.menuBook,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        titleColor: textColor,
        iconColor: accent,
        actions: [
          AppTopBarIcon(
            icon: AppIcons.search,
            color: accent,
            backgroundColor: accent.withValues(alpha: 0.14),
            tooltip: AppLocalizations.of(context).searchSurah,
            onTap: onSearchToggle,
          ),
          AppTopBarIcon(
            icon: tabIndex == 2 ? AppIcons.bookmark : AppIcons.bookmarkOutline,
            color: tabIndex == 2 ? AppColors.emerald : accent,
            backgroundColor: (tabIndex == 2 ? AppColors.emerald : accent)
                .withValues(alpha: 0.14),
            tooltip: AppLocalizations.of(context).bookmarks,
            onTap: onBookmarkTap,
          ),
          const AppSettingsButton(),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 80),
        curve: Curves.easeOut,
        constraints: const BoxConstraints(minHeight: 58),
        padding: const EdgeInsets.fromLTRB(18, 8, 10, 8),
        decoration: BoxDecoration(
          color: headerColor,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: isDark
                ? AppColors.softGold.withValues(alpha: .3)
                : Colors.white.withValues(alpha: .8),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? .25 : .11),
              blurRadius: 22,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: searchController,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context).searchSurah,
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: AppColors.adaptiveSecondaryText(
                      context,
                    ).withValues(alpha: .75),
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: textColor,
                ),
                onChanged: onSearchChanged,
              ),
            ),
            const SizedBox(width: 8),
            _HeaderIcon(icon: AppIcons.close, onTap: onSearchToggle),
          ],
        ),
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppTopBarIcon(
      icon: icon,
      onTap: onTap,
      backgroundColor: Colors.transparent,
    );
  }
}
