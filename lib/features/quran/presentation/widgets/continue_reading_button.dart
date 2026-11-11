import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../language/generated/app_localizations.dart';

class ContinueReadingButton extends StatelessWidget {
  const ContinueReadingButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.gold.withValues(alpha: .22),
            blurRadius: 18,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: .12),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: SizedBox(
        height: 42,
        width: 118,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.quranBg,
            foregroundColor: AppColors.quranPrimary,
            elevation: 0,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(AppIcons.menuBook, size: 17),
              const SizedBox(width: 6),
              Flexible(
                child: Text(
                  AppLocalizations.of(context).continueLabel,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 3),
              const Icon(AppIcons.chevronRight, size: 17),
            ],
          ),
        ),
      ),
    );
  }
}
