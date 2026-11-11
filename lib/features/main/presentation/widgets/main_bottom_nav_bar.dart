import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/constants/app_colors.dart';

class MainBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MainBottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      decoration: BoxDecoration(
        color: isDark
            ? AppColors.mainDarkBg.withValues(alpha: 0.92)
            : Colors.white.withValues(alpha: 0.96),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? AppColors.emerald.withValues(alpha: 0.18)
                : Colors.black.withValues(alpha: 0.05),
            blurRadius: isDark ? 26 : 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          child: Row(
            children: [
              _buildNavItem(context, 0, 'assets/images/icon/nav/ic_home.svg', AppLocalizations.of(context).home),
              _buildNavItem(context, 1, 'assets/images/icon/nav/ic_qibla.svg', AppLocalizations.of(context).qibla),
              _buildNavItem(context, 2, 'assets/images/icon/nav/ic_quran.svg', AppLocalizations.of(context).quran),
              _buildNavItem(context, 3, 'assets/images/icon/nav/ic_tasbih.svg', AppLocalizations.of(context).tasbih),
              _buildNavItem(context, 4, 'assets/images/icon/nav/ic_setting.svg', AppLocalizations.of(context).settings),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
    BuildContext context,
    int index,
    String iconAsset,
    String label,
  ) {
    final isSelected = selectedIndex == index;
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final selectedColor = isDark ? AppColors.softGold : AppColors.emerald;
    final selectedIconBg = isDark
        ? AppColors.softGold.withValues(alpha: 0.18)
        : AppColors.emerald.withValues(alpha: 0.10);
    final inactiveColor = isDark
        ? Colors.white.withValues(alpha: 0.62)
        : AppColors.secondaryText.withValues(alpha: 0.70);

    return Expanded(
      child: GestureDetector(
        onTap: () => onItemTapped(index),
        behavior: HitTestBehavior.opaque,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: isSelected ? selectedIconBg : Colors.transparent,
                shape: BoxShape.circle,
                boxShadow: isSelected
                    ? [
                        BoxShadow(
                          color: selectedColor.withValues(alpha: 0.30),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : null,
              ),
              child: SvgPicture.asset(
                iconAsset,
                width: 26,
                height: 26,
                colorFilter: ColorFilter.mode(
                  isSelected ? selectedColor : inactiveColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 11,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w500,
                color: isSelected ? selectedColor : inactiveColor,
              ),
            ),
            const SizedBox(height: 3),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: isSelected ? 1 : 0,
              child: Container(
                width: 14,
                height: 2,
                decoration: BoxDecoration(
                  color: selectedColor,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
