part of '../home_page.dart';

extension _HomeBatteryDialog on _HomePageState {
  void _showBatteryOptimizationDialog() {
    final l10n = AppLocalizations.of(context);
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: const EdgeInsets.symmetric(horizontal: 22),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 360),
          decoration: BoxDecoration(
            color: AppColors.selectorBg,
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: AppColors.ink.withValues(alpha: 0.18),
                blurRadius: 34,
                offset: const Offset(0, 18),
              ),
            ],
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(22, 22, 22, 18),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/icon/ic_battery_dialog.webp',
                        width: 96,
                        height: 96,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      l10n.optimizeAdhanPerformance,
                      textAlign: TextAlign.center,
                      style: AppTypography.sectionTitle(
                        context,
                        color: AppColors.ink,
                        size: 21,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.keepPrayerCallsReliableEvenWhenTheApp,
                      textAlign: TextAlign.center,
                      style: AppTypography.body(
                        context,
                        color: AppColors.ink.withValues(alpha: 0.68),
                        size: 12,
                        weight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.transparent,
                            AppColors.gold.withValues(alpha: 0.45),
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 18),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.38),
                        borderRadius: BorderRadius.circular(22),
                        border: Border.all(
                          color: AppColors.emerald.withValues(alpha: 0.1),
                        ),
                      ),
                      child: Column(
                        children: [
                          _buildInstructionItem(
                            step: '1',
                            icon: SvgPicture.asset(
                              'assets/images/icon/ic_battery.svg',
                              width: 30,
                              height: 30,
                              fit: BoxFit.contain,
                            ),
                            title: l10n.disableBatteryOptimization,
                            subtitle: l10n.allowTheAppToRunInTheBackground,
                          ),
                          const SizedBox(height: 10),
                          _buildInstructionItem(
                            step: '2',
                            icon: const Icon(
                              AppIcons.sync,
                              color: AppColors.emerald,
                              size: 30,
                            ),
                            title: l10n.enableAutoStart,
                            subtitle:
                                l10n.recommendedForXiaomiOppoVivoAndHuawei,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          AnalyticsService().trackButtonTap(
                            'home',
                            'battery_dialog_later',
                          );
                          Navigator.pop(context);
                        },
                        child: Text(
                          l10n.later.toUpperCase(),
                          style: AppTypography.caption(
                            context,
                            color: AppColors.emerald,
                            size: 12,
                            weight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 2),
                    OutlinedButton.icon(
                      onPressed: () async {
                        AnalyticsService().trackButtonTap(
                          'home',
                          'disable_battery_optimization',
                        );
                        await BatteryService.requestIgnoreBatteryOptimizations();
                        if (context.mounted) Navigator.pop(context);
                      },
                      icon: const Icon(AppIcons.shield, size: 20),
                      label: Text(
                        l10n.disableOptimization.toUpperCase(),
                        style: AppTypography.caption(
                          context,
                          size: 12,
                          weight: FontWeight.w900,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.emerald,
                        side: BorderSide(
                          color: AppColors.emerald.withValues(alpha: 0.75),
                        ),
                        minimumSize: const Size(double.infinity, 46),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      onPressed: () async {
                        AnalyticsService().trackButtonTap(
                          'home',
                          'open_autostart_settings',
                        );
                        await BatteryService.openAutostartSettings();
                        if (context.mounted) Navigator.pop(context);
                      },
                      icon: const Icon(AppIcons.rocketLaunch, size: 20),
                      label: Text(
                        l10n.openAutoStart.toUpperCase(),
                        style: AppTypography.caption(
                          context,
                          color: Colors.white,
                          size: 12,
                          weight: FontWeight.w900,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.emerald,
                        foregroundColor: Colors.white,
                        elevation: 0,
                        minimumSize: const Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 12,
                top: 12,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: AppColors.ink.withValues(alpha: 0.9),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      AppIcons.close,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInstructionItem({
    required String step,
    required Widget icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.72),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.emerald.withValues(alpha: 0.08)),
      ),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: AppColors.emerald.withValues(alpha: 0.08),
                  shape: BoxShape.circle,
                ),
                child: Center(child: icon),
              ),
              Positioned(
                right: -2,
                top: -2,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: const BoxDecoration(
                    color: AppColors.emerald,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      step,
                      style: AppTypography.caption(
                        context,
                        color: Colors.white,
                        size: 10,
                        weight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTypography.body(
                    context,
                    color: AppColors.ink,
                    size: 13,
                    weight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style: AppTypography.caption(
                    context,
                    color: AppColors.ink.withValues(alpha: 0.58),
                    size: 11,
                    weight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
