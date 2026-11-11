import 'dart:math';
import 'package:flutter/material.dart';
import '../constants/app_icons.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../constants/app_colors.dart';
import '../theme/app_typography.dart';
import '../../language/generated/app_localizations.dart';

class HolyMessageService {
  HolyMessageService._();
  static final HolyMessageService instance = HolyMessageService._();

  static const String _lastShownKey = 'holy_message_last_shown';
  static const String _boxName = 'holy_messages_box';

  Future<void> init() async {
    await Hive.openBox(_boxName);
  }

  bool shouldShowMessage() {
    final box = Hive.box(_boxName);
    final lastShown = box.get(_lastShownKey) as String?;
    final today = DateTime.now().toIso8601String().split('T')[0];

    return lastShown != today;
  }

  Future<void> markAsShown() async {
    final box = Hive.box(_boxName);
    final today = DateTime.now().toIso8601String().split('T')[0];
    await box.put(_lastShownKey, today);
  }

  String getRandomMessage(BuildContext context) {
    // This could be fetched from RemoteConfig, a local JSON, or a hardcoded list
    // For now, providing some default spiritual messages
    final messages = [
      "The best among you are those who have the best manners and character. (Sahih Bukhari)",
      "Allah does not look at your forms and possessions, but He looks at your hearts and your deeds. (Muslim)",
      "The most beloved of deeds to Allah are those that are most consistent, even if they are small. (Bukhari)",
      "Kindness is a mark of faith, and whoever is not kind has no faith. (Muslim)",
      "Speak a good word or remain silent. (Bukhari)",
    ];

    return messages[Random().nextInt(messages.length)];
  }

  void showDailyMessageIfNeeded(BuildContext context) {
    if (!shouldShowMessage()) return;

    final message = getRandomMessage(context);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted || ModalRoute.of(context)?.isCurrent != true) {
        return;
      }
      showDialog(
        context: context,
        barrierColor: Colors.black.withValues(alpha: .34),
        builder: (context) => _HolyMessageDialog(
          message: message,
          onClose: () {
            markAsShown();
            Navigator.pop(context);
          },
        ),
      );
    });
  }
}

class _HolyMessageDialog extends StatelessWidget {
  const _HolyMessageDialog({required this.message, required this.onClose});

  final String message;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: const EdgeInsets.symmetric(horizontal: 28),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 340),
        padding: const EdgeInsets.fromLTRB(22, 24, 22, 18),
        decoration: BoxDecoration(
          color: AppColors.selectorBg,
          borderRadius: BorderRadius.circular(28),
          border: Border.all(color: AppColors.softGold.withValues(alpha: .22)),
          boxShadow: [
            BoxShadow(
              color: AppColors.quranDarkBg.withValues(alpha: .24),
              blurRadius: 34,
              offset: const Offset(0, 18),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 62,
                height: 62,
                decoration: BoxDecoration(
                  color: AppColors.emerald.withValues(alpha: .1),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.softGold.withValues(alpha: .38),
                  ),
                ),
                child: const Icon(
                  AppIcons.autoAwesome,
                  color: AppColors.emerald,
                  size: 30,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Text(
              AppLocalizations.of(context).holyMessage,
              textAlign: TextAlign.center,
              style: AppTypography.displayIslamic(
                color: AppColors.ink,
                size: 28,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: .5),
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: AppColors.emerald.withValues(alpha: .08),
                ),
              ),
              child: Text(
                message,
                textAlign: TextAlign.center,
                style: AppTypography.body(
                  context,
                  color: AppColors.ink.withValues(alpha: .82),
                  size: 13,
                  weight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: onClose,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.emerald,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 46),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                textStyle: AppTypography.body(
                  context,
                  color: Colors.white,
                  size: 13,
                  weight: FontWeight.w900,
                ),
              ),
              child: Text(AppLocalizations.of(context).close),
            ),
          ],
        ),
      ),
    );
  }
}
