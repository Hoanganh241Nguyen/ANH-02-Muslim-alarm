import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/notification_service.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../language/app_language_options.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../main/presentation/pages/main_page.dart';
import 'onboarding_gate.dart';

part 'onboarding_page_parts/onboarding_pages.dart';
part 'onboarding_page_parts/onboarding_widgets.dart';
part 'onboarding_page_parts/onboarding_controls.dart';
part 'onboarding_page_parts/onboarding_language.dart';

const _gold = AppColors.softGold;
const _panelGreen = AppColors.darkEmerald;

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _languageSearchController =
      TextEditingController();
  int _index = 0;
  String _language = 'en';
  bool _hasSelectedLanguage = false;
  bool _hasConfirmedLanguage = false;
  String _languageSearchQuery = '';
  String _dailyGoal = '10 pages';
  TimeOfDay _reminderTime = const TimeOfDay(hour: 20, minute: 0);

  @override
  void initState() {
    super.initState();
    _language = _initialLanguageCode;
    AnalyticsService().trackScreenView('onboarding', source: 'after_splash');
  }

  @override
  void dispose() {
    _pageController.dispose();
    _nameController.dispose();
    _languageSearchController.dispose();
    super.dispose();
  }

  void _rebuild(VoidCallback fn) => setState(fn);

  Future<void> _next() async {
    if (_index == 0) {
      if (!_hasSelectedLanguage) return;

      final box = await Hive.openBox(OnboardingGate.boxName);
      await box.put('language', _language);
      if (mounted) {
        setState(() => _hasConfirmedLanguage = true);
      }
    }

    if (_index == _pagesCount - 1) {
      await _finish();
      return;
    }

    await _pageController.nextPage(
      duration: const Duration(milliseconds: 420),
      curve: Curves.easeOutCubic,
    );
  }

  Future<void> _finish() async {
    final box = await Hive.openBox(OnboardingGate.boxName);
    await box.put(OnboardingGate.completedKey, true);
    await box.put('language', _language);
    // Start in the theme the phone already uses; it can be changed in Settings.
    final brightness =
        WidgetsBinding.instance.platformDispatcher.platformBrightness;
    await box.put('theme', brightness == Brightness.dark ? 'dark' : 'light');
    await box.put('daily_goal', _dailyGoal);
    await box.put('name', _nameController.text.trim());
    await box.put(
      'reminder_time',
      '${_reminderTime.hour.toString().padLeft(2, '0')}:'
          '${_reminderTime.minute.toString().padLeft(2, '0')}',
    );
    await AnalyticsService().trackEvent('onboarding_completed');
    if (!mounted) return;
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const MainPage()));
  }

  Future<void> _enableNotifications() async {
    await AnalyticsService().trackButtonTap(
      'onboarding',
      'enable_notifications',
    );
    await NotificationService().requestPermissions(includeAlarmSettings: true);
  }

  Future<void> _pickReminderTime() async {
    final result = await showTimePicker(
      context: context,
      initialTime: _reminderTime,
    );
    if (result != null && mounted) {
      setState(() => _reminderTime = result);
    }
  }

  int get _pagesCount => 4;

  String get _initialLanguageCode => _deviceLanguageCode ?? 'en';

  AppLocalizations get _languageChromeL10n {
    final languageCode = _hasConfirmedLanguage
        ? _language
        : _initialLanguageCode;
    return lookupAppLocalizations(Locale(languageCode));
  }

  _LanguageChromeCopy get _languageChromeCopy {
    final languageCode = _hasConfirmedLanguage
        ? _language
        : _initialLanguageCode;
    return _LanguageChromeCopy.resolve(languageCode);
  }

  AppLocalizations get _onboardingL10n {
    final languageCode = _hasConfirmedLanguage
        ? _language
        : _initialLanguageCode;
    return lookupAppLocalizations(Locale(languageCode));
  }

  String? get _deviceLanguageCode {
    final deviceLanguageCode = WidgetsBinding
        .instance
        .platformDispatcher
        .locale
        .languageCode
        .toLowerCase();

    return appLanguageOptions.any((option) => option.code == deviceLanguageCode)
        ? deviceLanguageCode
        : null;
  }

  List<AppLanguageOption> get _orderedLanguageOptions {
    final suggestedLanguageCode = _initialLanguageCode;

    final deviceLanguage = appLanguageOptions.firstWhere(
      (option) => option.code == suggestedLanguageCode,
    );
    return [
      deviceLanguage,
      ...appLanguageOptions.where(
        (option) => option.code != suggestedLanguageCode,
      ),
    ];
  }

  List<AppLanguageOption> get _suggestedLanguageOptions {
    final suggestedLanguageCode = _initialLanguageCode;
    return [
      appLanguageOptions.firstWhere(
        (option) => option.code == suggestedLanguageCode,
      ),
    ];
  }

  List<AppLanguageOption> get _allLanguageOptions {
    final suggestedCodes = _suggestedLanguageOptions
        .map((option) => option.code)
        .toSet();
    return appLanguageOptions
        .where((option) => !suggestedCodes.contains(option.code))
        .toList();
  }

  bool _matchesLanguageQuery(AppLanguageOption option, String query) {
    return option.nativeName.toLowerCase().contains(query) ||
        option.englishName.toLowerCase().contains(query) ||
        option.code.toLowerCase().contains(query);
  }

  List<AppLanguageOption> get _filteredLanguageOptions {
    final query = _languageSearchQuery.trim().toLowerCase();
    if (query.isEmpty) return _orderedLanguageOptions;

    return _orderedLanguageOptions
        .where((option) => _matchesLanguageQuery(option, query))
        .toList();
  }

  List<AppLanguageOption> get _filteredSuggestedLanguageOptions {
    final query = _languageSearchQuery.trim().toLowerCase();
    if (query.isEmpty) return _suggestedLanguageOptions;

    return _suggestedLanguageOptions
        .where((option) => _matchesLanguageQuery(option, query))
        .toList();
  }

  List<AppLanguageOption> get _filteredAllLanguageOptions {
    final query = _languageSearchQuery.trim().toLowerCase();
    if (query.isEmpty) return _allLanguageOptions;

    return _allLanguageOptions
        .where((option) => _matchesLanguageQuery(option, query))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/img_splash_background.webp',
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.quranDarkGreen.withValues(alpha: 0.8),
                  AppColors.quranDarkBg,
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                  child: Row(
                    children: [
                      const SizedBox(width: 12),
                      if (_index > 0)
                        IconButton(
                          onPressed: () => _pageController.previousPage(
                            duration: const Duration(milliseconds: 360),
                            curve: Curves.easeOutCubic,
                          ),
                          icon: const Icon(
                            AppIcons.arrowBack,
                            color: Colors.white,
                          ),
                        ),
                    ],
                  ),
                ),
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (value) => setState(() => _index = value),
                    children: [
                      _languagePage(),
                      _featuresPage(),
                      _permissionPage(),
                      _setupPage(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 10, 24, 14),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _Dots(count: _pagesCount, index: _index, gold: _gold),
                      const SizedBox(height: 18),
                      _PrimaryButton(
                        label: _index == _pagesCount - 1
                            ? _onboardingL10n.getStarted
                            : _onboardingL10n.next,
                        onPressed: _index == 0 && !_hasSelectedLanguage
                            ? null
                            : _next,
                      ),
                      if (_index == 2) ...[
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: _next,
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white70,
                            textStyle: AppTypography.body(
                              context,
                              weight: FontWeight.w700,
                            ),
                          ),
                          child: Text(_onboardingL10n.maybeLater),
                        ),
                      ],
                      if (_index == _pagesCount - 1) ...[
                        const SizedBox(height: 8),
                        TextButton(
                          onPressed: _finish,
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white70,
                            textStyle: AppTypography.body(
                              context,
                              weight: FontWeight.w700,
                            ),
                          ),
                          child: Text(_onboardingL10n.skip),
                        ),
                      ],
                    ],
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
