import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_colors.dart';

class QuranQuickAccess extends StatelessWidget {
  const QuranQuickAccess({
    super.key,
    required this.onOpenTab,
  });

  final Function(int) onOpenTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1.6,
        children: [
          _QuickAccessItem(
            title: AppLocalizations.of(context).surah,
            icon: AppIcons.formatListBulleted,
            color: AppColors.emerald,
            onTap: () => onOpenTab(0),
          ),
          _QuickAccessItem(
            title: AppLocalizations.of(context).juz2,
            icon: AppIcons.gridView,
            color: Colors.orange,
            onTap: () => onOpenTab(1),
          ),
          _QuickAccessItem(
            title: AppLocalizations.of(context).bookmarks,
            icon: AppIcons.bookmark,
            color: Colors.redAccent,
            onTap: () => onOpenTab(2),
          ),
          _QuickAccessItem(
            title: AppLocalizations.of(context).recent,
            icon: AppIcons.history,
            color: Colors.blueAccent,
            onTap: () => onOpenTab(0),
          ),
        ],
      ),
    );
  }
}

class _QuickAccessItem extends StatelessWidget {
  const _QuickAccessItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = AppColors.isDark(context);
    final accent = isDark ? AppColors.softGold : color;
    return Container(
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.8),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: isDark ? .16 : 0.02),
            blurRadius: isDark ? 16 : 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: accent, size: 24),
                const SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.adaptiveText(context),
                    fontSize: 15,
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
