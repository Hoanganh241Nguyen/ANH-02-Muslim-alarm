import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../language/generated/app_localizations.dart';
import '../constants/app_icons.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../constants/app_colors.dart';
import '../prayer_alarm/prayer_alarm_service.dart';
import '../services/analytics_service.dart';
import '../services/battery_service.dart';
import '../services/notification_service.dart';
import '../../features/onboarding/presentation/pages/onboarding_gate.dart';
import '../../features/shop/presentation/pages/shop_page.dart';
import '../../language/app_language_options.dart';
import 'base_app_bar.dart';

class AppSettingsButton extends StatelessWidget {
  const AppSettingsButton({super.key, this.onTap, this.tooltip = 'Premium'});

  final VoidCallback? onTap;
  final String tooltip;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Tooltip(
      message: tooltip,
      child: Material(
        color: isDark ? AppColors.darkEmerald : AppColors.emerald,
        shape: const CircleBorder(),
        elevation: isDark ? 4 : 2,
        shadowColor: AppColors.emerald.withValues(alpha: .22),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap ?? () => _openPaywall(context),
          child: SizedBox(
            width: 42,
            height: 42,
            child: Center(
              child: Image.asset(
                'assets/images/icon/nav/ic_premium.webp',
                width: 28,
                height: 28,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openPaywall(BuildContext context) {
    AnalyticsService().trackButtonTap('premium', 'open_paywall');
    Navigator.of(
      context,
    ).push<void>(MaterialPageRoute(builder: (_) => const ShopPage()));
  }
}

class AppSettingsSheet extends StatelessWidget {
  const AppSettingsSheet({super.key, this.showBackButton = true});

  static final Uri _privacyPolicyUrl = Uri.parse(
    'https://doc-hosting.flycricket.io/quran-pro-al-quran-majeed-privacy-policy/4062bb6b-a5cc-46a1-82dd-b72b9490d794/privacy',
  );
  static final Uri _termsOfUseUrl = Uri.parse(
    'https://doc-hosting.flycricket.io/quran-pro-al-quran-majeed-terms-of-use/7b4c7176-acbe-45ea-9c76-1e413b8d6481/terms',
  );

  final bool showBackButton;

  static Future<void> show(BuildContext context) {
    AnalyticsService().trackButtonTap('main_settings', 'open');
    return Navigator.of(
      context,
    ).push<void>(MaterialPageRoute(builder: (_) => const AppSettingsSheet()));
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final text = isDark ? Colors.white : AppColors.ink;
    final muted = text.withValues(alpha: .58);
    final mediaQuery = MediaQuery.of(context);
    final backgroundCacheWidth =
        (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            isDark
                ? 'assets/images/bg_darkmode.webp'
                : 'assets/images/img_background.webp',
            fit: BoxFit.cover,
            cacheWidth: backgroundCacheWidth,
            filterQuality: FilterQuality.low,
          ),
          if (isDark)
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.darkBackground.withValues(alpha: .18),
              ),
            ),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.fromLTRB(
                20,
                14,
                20,
                showBackButton ? 28 : 128,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AppTopBar(
                    title: AppLocalizations.of(context).settings,
                    leading: showBackButton
                        ? AppTopBarIcon(
                            icon: AppIcons.arrowBack,
                            color: text,
                            onTap: () => Navigator.pop(context),
                          )
                        : null,
                    leadingIcon: showBackButton
                        ? null
                        : AppIcons.settingsSuggest,
                    padding: EdgeInsets.zero,
                    titleColor: text,
                  ),
                  const SizedBox(height: 18),
                  Container(
                    padding: const EdgeInsets.fromLTRB(18, 18, 18, 18),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.darkCard.withValues(alpha: .86)
                          : Colors.white.withValues(alpha: .82),
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        color: isDark
                            ? AppColors.softGold.withValues(alpha: .18)
                            : Colors.white.withValues(alpha: .72),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(
                            alpha: isDark ? .24 : .08,
                          ),
                          blurRadius: 28,
                          offset: const Offset(0, 14),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context).quranProPreferences,
                          style: TextStyle(
                            color: text,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          AppLocalizations.of(context).allSettingsInOnePlace,
                          style: TextStyle(
                            color: muted,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 18),
                        _SettingsTile(
                          icon: AppIcons.language,
                          title: AppLocalizations.of(context).language,
                          subtitle: AppLocalizations.of(
                            context,
                          ).chooseDisplayLanguage,
                          onTap: () => _showLanguageSheet(context),
                        ),
                        ValueListenableBuilder<Box>(
                          valueListenable: Hive.box(
                            OnboardingGate.boxName,
                          ).listenable(keys: ['theme']),
                          builder: (context, box, _) {
                            final theme =
                                box.get('theme', defaultValue: 'light')
                                    as String;
                            final isLightTheme = theme == 'light';
                            return _SettingsSwitchTile(
                              icon: isLightTheme
                                  ? AppIcons.lightMode
                                  : AppIcons.darkMode,
                              title: AppLocalizations.of(context).darkMode,
                              subtitle: isLightTheme
                                  ? AppLocalizations.of(
                                      context,
                                    ).brightIvoryInterface
                                  : AppLocalizations.of(
                                      context,
                                    ).nightEmeraldInterface,
                              value: !isLightTheme,
                              onChanged: (isDarkOn) {
                                box.put('theme', isDarkOn ? 'dark' : 'light');
                              },
                            );
                          },
                        ),
                        _SettingsTile(
                          icon: AppIcons.notificationsActive,
                          title: AppLocalizations.of(
                            context,
                          ).notificationsAlarm,
                          subtitle: AppLocalizations.of(
                            context,
                          ).prayerRemindersFullScreenAlarm,
                          onTap: () => _showNotificationAlarmSheet(context),
                        ),
                        _SettingsTile(
                          icon: AppIcons.batterySaver,
                          title: AppLocalizations.of(
                            context,
                          ).batteryOptimization,
                          subtitle: AppLocalizations.of(
                            context,
                          ).keepAdhanAlarmsReliable,
                          onTap: () {
                            AnalyticsService().trackButtonTap(
                              'main_settings',
                              'battery_optimization',
                            );
                            BatteryService.requestIgnoreBatteryOptimizations();
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Container(
                    padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                    decoration: BoxDecoration(
                      color: isDark
                          ? AppColors.darkCard.withValues(alpha: .82)
                          : Colors.white.withValues(alpha: .78),
                      borderRadius: BorderRadius.circular(28),
                      border: Border.all(
                        color: isDark
                            ? AppColors.softGold.withValues(alpha: .16)
                            : Colors.white.withValues(alpha: .7),
                      ),
                    ),
                    child: Column(
                      children: [
                        _SettingsTile(
                          icon: AppIcons.starRate,
                          title: AppLocalizations.of(context).rateApp,
                          subtitle: AppLocalizations.of(
                            context,
                          ).supportQuranProOnTheStore,
                          onTap: () => _showInfo(
                            context,
                            AppLocalizations.of(context).rateQuranPro,
                            AppLocalizations.of(
                              context,
                            ).storeRatingWillBeConnectedWhenTheProduction,
                          ),
                        ),
                        _SettingsTile(
                          icon: AppIcons.mail,
                          title: AppLocalizations.of(context).feedback,
                          subtitle: AppLocalizations.of(
                            context,
                          ).tellUsWhatToImprove,
                          onTap: () => _showInfo(
                            context,
                            AppLocalizations.of(context).feedback,
                            AppLocalizations.of(context).feedbackDescription,
                          ),
                        ),
                        _SettingsTile(
                          icon: AppIcons.privacyTip,
                          title: AppLocalizations.of(context).privacyPolicy,
                          subtitle: AppLocalizations.of(
                            context,
                          ).howYourDataIsHandled,
                          onTap: () =>
                              _openLegalLink(context, _privacyPolicyUrl),
                        ),
                        _SettingsTile(
                          icon: AppIcons.article,
                          title: AppLocalizations.of(context).termsOfUse,
                          subtitle: AppLocalizations.of(
                            context,
                          ).useQuranProRespectfullyForPersonalWorshipLearning,
                          onTap: () => _openLegalLink(context, _termsOfUseUrl),
                        ),
                        _SettingsTile(
                          icon: AppIcons.info,
                          title: AppLocalizations.of(context).about,
                          subtitle: 'Quran Pro: Al Quran Majeed',
                          onTap: () => _showInfo(
                            context,
                            AppLocalizations.of(context).aboutQuranPro,
                            AppLocalizations.of(context).aboutQuranProDescription,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showLanguageSheet(BuildContext context) async {
    await _showPickerSheet(
      context,
      title: AppLocalizations.of(context).language,
      items: [
        for (final language in appLanguageOptions)
          _PickerItem(language.nativeName, language.englishName, language.code),
      ],
      boxKey: 'language',
      fallback: 'en',
    );
  }

  Future<void> _showPickerSheet(
    BuildContext context, {
    required String title,
    required List<_PickerItem> items,
    required String boxKey,
    required String fallback,
  }) async {
    final parentContext = context;
    final box = await Hive.openBox(OnboardingGate.boxName);
    if (!parentContext.mounted) return;

    await showModalBottomSheet<void>(
      context: parentContext,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        final isDark = Theme.of(context).brightness == Brightness.dark;
        final text = isDark ? Colors.white : AppColors.ink;
        return ValueListenableBuilder<Box>(
          valueListenable: box.listenable(keys: [boxKey]),
          builder: (context, box, child) {
            final selected = box.get(boxKey, defaultValue: fallback) as String;
            final maxHeight = MediaQuery.sizeOf(context).height * 0.75;

            return Container(
              constraints: BoxConstraints(maxHeight: maxHeight),
              margin: const EdgeInsets.all(12),
              padding: const EdgeInsets.fromLTRB(18, 18, 18, 20),
              decoration: BoxDecoration(
                color: isDark ? AppColors.quranDarkBg : Colors.white,
                borderRadius: BorderRadius.circular(28),
              ),
              child: SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: text,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 14),
                    Flexible(
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          final item = items[index];
                          return _PickerTile(
                            item: item,
                            selected: selected == item.value,
                            onTap: () async {
                              await box.put(boxKey, item.value);
                              if (context.mounted) Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _showNotificationAlarmSheet(BuildContext context) async {
    AnalyticsService().trackButtonTap(
      'main_settings',
      'notifications_alarm_open',
    );

    await showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        final isDark = Theme.of(sheetContext).brightness == Brightness.dark;
        final text = isDark ? Colors.white : AppColors.ink;

        return Container(
          margin: const EdgeInsets.all(12),
          padding: const EdgeInsets.fromLTRB(18, 18, 18, 20),
          decoration: BoxDecoration(
            color: isDark ? AppColors.quranDarkBg : Colors.white,
            borderRadius: BorderRadius.circular(28),
          ),
          child: SafeArea(
            top: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(sheetContext).notificationsAlarm,
                  style: TextStyle(
                    color: text,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  AppLocalizations.of(
                    sheetContext,
                  ).prayerRemindersFullScreenAlarm,
                  style: TextStyle(
                    color: text.withValues(alpha: .58),
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 14),
                _SettingsTile(
                  icon: AppIcons.notificationsActive,
                  title: AppLocalizations.of(sheetContext).enableNotifications,
                  subtitle: AppLocalizations.of(
                    sheetContext,
                  ).allowNotificationsToReceivePrayerTimesAndDaily,
                  onTap: () async {
                    AnalyticsService().trackButtonTap(
                      'main_settings',
                      'notification_permissions',
                    );
                    await NotificationService().requestPermissions(
                      includeAlarmSettings: true,
                    );
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                  },
                ),
                _SettingsTile(
                  icon: AppIcons.notifications,
                  title: AppLocalizations.of(sheetContext).prayerAlarms,
                  subtitle: AppLocalizations.of(
                    sheetContext,
                  ).keepPrayerCallsReliableEvenWhenTheApp,
                  onTap: () async {
                    AnalyticsService().trackButtonTap(
                      'main_settings',
                      'full_screen_alarm_settings',
                    );
                    if (sheetContext.mounted) Navigator.pop(sheetContext);
                    final alarmService = PrayerAlarmService();
                    await alarmService.requestExactAlarmPermission();
                    await alarmService.openFullScreenIntentSettings();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showInfo(BuildContext context, String title, String body) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(body),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context).close),
          ),
        ],
      ),
    );
  }

  Future<void> _openLegalLink(BuildContext context, Uri uri) async {
    AnalyticsService().trackButtonTap('main_settings', uri.pathSegments.last);
    final opened = await launchUrl(uri, mode: LaunchMode.externalApplication);
    if (!opened && context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not open ${uri.host}')));
    }
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final text = isDark ? Colors.white : AppColors.ink;
    return Material(
 type: MaterialType.transparency,
 child: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.emerald.withValues(alpha: isDark ? .18 : .1),
        ),
        child: Icon(icon, color: AppColors.emerald, size: 20),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: text,
          fontSize: 14,
          fontWeight: FontWeight.w900,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: text.withValues(alpha: .52),
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Icon(AppIcons.chevronRight, color: text.withValues(alpha: .34)),
      onTap: onTap,
    ),
);
  }
}

class _SettingsSwitchTile extends StatelessWidget {
  const _SettingsSwitchTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final text = isDark ? Colors.white : AppColors.ink;
    final accent = isDark ? AppColors.softGold : AppColors.emerald;
    return Material(
 type: MaterialType.transparency,
 child: ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: accent.withValues(alpha: isDark ? .18 : .1),
        ),
        child: Icon(icon, color: accent, size: 20),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: text,
          fontSize: 14,
          fontWeight: FontWeight.w900,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: text.withValues(alpha: .52),
          fontSize: 11,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Switch.adaptive(
        value: value,
        onChanged: onChanged,
        activeThumbColor: accent,
        activeTrackColor: accent.withValues(alpha: .5),
      ),
    ),
);
  }
}

class _PickerItem {
  const _PickerItem(this.title, this.subtitle, this.value);

  final String title;
  final String subtitle;
  final String value;
}

class _PickerTile extends StatelessWidget {
  const _PickerTile({
    required this.item,
    required this.selected,
    required this.onTap,
  });

  final _PickerItem item;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final text = isDark ? Colors.white : AppColors.ink;
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: selected
              ? AppColors.emerald.withValues(alpha: .12)
              : text.withValues(alpha: .04),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: selected
                ? AppColors.emerald.withValues(alpha: .36)
                : Colors.transparent,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                      color: text,
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    item.subtitle,
                    style: TextStyle(
                      color: text.withValues(alpha: .52),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              selected ? AppIcons.checkCircle : AppIcons.radioButtonOff,
              color: selected ? AppColors.emerald : text.withValues(alpha: .34),
            ),
          ],
        ),
      ),
    );
  }
}
