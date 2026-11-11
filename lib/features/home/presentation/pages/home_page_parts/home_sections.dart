part of '../home_page.dart';

extension _HomeSections on _HomePageState {
  /// The city, "Locating..." while the first lookup runs, or a dash when no
  /// city could be found or guessed. Never coordinates.
  String _locationLabel(PrayerTimeProvider provider, AppLocalizations l10n) {
    if (provider.currentAddress.isNotEmpty) return provider.currentAddress;
    if (provider.isLoading || !provider.hasLoadedOnce) return l10n.locating;
    return '—';
  }

  /// A fix is offered whenever the times do not come from a fresh device
  /// location and we know why.
  bool _showLocationAction(PrayerTimeProvider provider) =>
      provider.hasLoadedOnce &&
      !provider.isLoading &&
      provider.locationSource != LocationSource.device &&
      provider.locationIssue != LocationIssue.none;

  String _locationActionLabel(
    PrayerTimeProvider provider,
    AppLocalizations l10n,
  ) {
    switch (provider.locationIssue) {
      case LocationIssue.serviceDisabled:
      case LocationIssue.deniedForever:
        return l10n.settings;
      case LocationIssue.none:
      case LocationIssue.denied:
      case LocationIssue.unavailable:
        return l10n.retry;
    }
  }

  Widget _buildPrayerTimesEmptyState(BuildContext context) {
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.72),
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: AppColors.adaptiveBorder(context)),
      ),
      child: Column(
        children: [
          const Icon(
            AppIcons.locationSearching,
            color: AppColors.emerald,
            size: 30,
          ),
          const SizedBox(height: 10),
          Text(
            l10n.prayerTimesAreLoading,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w800,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            l10n.allowLocationPermissionOrTapRetryToUse,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: mutedColor.withValues(alpha: 0.88),
              fontSize: 12,
              height: 1.3,
            ),
          ),
          const SizedBox(height: 12),
          OutlinedButton.icon(
            onPressed: () {
              context.read<PrayerTimeProvider>().resolveLocationIssue();
            },
            icon: const Icon(AppIcons.refresh, size: 18),
            label: Text(
              _locationActionLabel(context.read<PrayerTimeProvider>(), l10n),
            ),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.emerald,
              side: const BorderSide(color: AppColors.emerald),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(
    BuildContext context,
    PrayerTimeProvider prayerProvider,
    GamificationProvider gamificationProvider,
  ) {
    final textColor = AppColors.adaptiveInk(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTopBar(
          title: l10n.quranPro,
          leadingIcon: AppIcons.mosque,
          actions: const [AppSettingsButton()],
          padding: EdgeInsets.zero,
          titleColor: textColor,
        ),
        const SizedBox(height: 12),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 2),
              child: Icon(
                AppIcons.locationOn,
                color: AppColors.emerald,
                size: 16,
              ),
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    prayerProvider.locationSource == LocationSource.estimated
                        ? l10n.estimatedLocation
                        : l10n.location,
                    style: TextStyle(fontSize: 10, color: mutedColor),
                  ),
                  Text(
                    _locationLabel(prayerProvider, l10n),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                  if (_showLocationAction(prayerProvider))
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: prayerProvider.resolveLocationIssue,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 2),
                        child: Text(
                          _locationActionLabel(prayerProvider, l10n),
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w700,
                            color: AppColors.emerald,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.emerald,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: AppColors.streakBg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    AppIcons.localFireDepartment,
                    color: AppColors.gold,
                    size: 14,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    l10n.daysCount(
                      gamificationProvider.stats?.streakCount ?? 0,
                    ),
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: AppColors.gold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMainBanner(PrayerTimeProvider provider) {
    final l10n = AppLocalizations.of(context);
    final nextPrayer = provider.nextPrayer;
    final nextPrayerName =
        nextPrayer?.name.toUpperCase() ?? l10n.nextPrayer.toUpperCase();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: ResizeImage(
            AssetImage('assets/images/img_home_widget.webp'),
            width: 900,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [
          BoxShadow(
            color: AppColors.emerald.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              l10n.upcomingPrayer(nextPrayerName),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              RepaintBoundary(
                child: ValueListenableBuilder<String>(
                  valueListenable: provider.countdown,
                  builder: (context, value, _) => Text(
                    value,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                      fontWeight: FontWeight.bold,
                      letterSpacing: -1,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                l10n.left.toLowerCase(),
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.7),
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          if (nextPrayer != null) ...[
            const SizedBox(height: 24),
            Row(
              children: [
                const Icon(
                  AppIcons.accessTime,
                  color: Colors.white70,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(
                  '${nextPrayer.name} • '
                  '${DateFormat(l10n.hhMmA, l10n.localeName).format(nextPrayer.time)}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildScheduleHeader() {
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final l10n = AppLocalizations.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          l10n.prayerSchedule,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: textColor,
            letterSpacing: -0.5,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.adaptiveMutedSurface(context),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: AppColors.adaptiveBorder(context, alpha: .14),
              width: 1,
            ),
          ),
          child: Text(
            DateFormat.MMMEd(l10n.localeName).format(DateTime.now()),
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: mutedColor,
            ),
          ),
        ),
      ],
    );
  }
}
