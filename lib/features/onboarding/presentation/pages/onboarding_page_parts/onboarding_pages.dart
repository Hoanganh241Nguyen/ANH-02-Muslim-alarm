part of '../onboarding_page.dart';

class _DailyGoalOption {
  const _DailyGoalOption(this.value, this.label);

  final String value;
  final String label;
}

List<_DailyGoalOption> _dailyGoalOptions(AppLocalizations l10n) => [
  _DailyGoalOption('5 pages', l10n.text5pages),
  _DailyGoalOption('10 pages', l10n.text10pages),
  _DailyGoalOption('20 pages', l10n.text20pages),
  _DailyGoalOption('1 Juz', l10n.text1juz),
];

extension _OnboardingPages on _OnboardingPageState {
  Widget _featuresPage() {
    final l10n = _onboardingL10n;
    return _OnboardingContent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _TitleBlock(
            title: l10n.allInOneQuranApp,
            subtitle: l10n.everythingYouNeedForABetterQuranExperience,
          ),
          const SizedBox(height: 26),
          _FeatureItem(
            icon: AppIcons.menuBook,
            title: l10n.readListen,
            subtitle: l10n.readTheQuranWithBeautifulRecitations,
            gold: _gold,
          ),
          _FeatureItem(
            icon: AppIcons.notificationsActive,
            title: l10n.dailyReminders,
            subtitle: l10n.getRemindedToReadAndStayConsistent,
            gold: _gold,
          ),
          _FeatureItem(
            icon: AppIcons.factCheck,
            title: l10n.trackProgress,
            subtitle: l10n.trackYourReadingAndAchievements,
            gold: _gold,
          ),
          _FeatureItem(
            icon: AppIcons.widgets,
            title: l10n.beautifulWidgets,
            subtitle: l10n.stayInspiredOnYourHomeScreen,
            gold: _gold,
          ),
        ],
      ),
    );
  }

  Widget _languagePage() {
    final l10n = _languageChromeL10n;
    final copy = _languageChromeCopy;
    final suggestedLanguageOptions = _filteredSuggestedLanguageOptions;
    final allLanguageOptions = _filteredAllLanguageOptions;
    final languageOptions = _filteredLanguageOptions;

    return _OnboardingContent(
      child: Column(
        children: [
          const SizedBox(height: 18),
          _TitleBlock(
            title: l10n.chooseDisplayLanguage,
            subtitle: l10n.chooseYourPreferredLanguage,
          ),
          const SizedBox(height: 22),
          _LanguageSearchField(
            controller: _languageSearchController,
            query: _languageSearchQuery,
            hintText: copy.searchLanguage,
            onChanged: (value) => _rebuild(() {
              _languageSearchQuery = value;
            }),
            onClear: () => _rebuild(() {
              _languageSearchController.clear();
              _languageSearchQuery = '';
            }),
          ),
          const SizedBox(height: 14),
          Expanded(
            child: languageOptions.isEmpty
                ? Center(
                    child: Text(
                      copy.noLanguagesFound,
                      style: AppTypography.body(
                        context,
                        color: Colors.white.withValues(alpha: .68),
                      ),
                    ),
                  )
                : ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      if (suggestedLanguageOptions.isNotEmpty) ...[
                        _LanguageSectionHeader(copy.suggested),
                        for (final language in suggestedLanguageOptions)
                          _SelectableRow(
                            title: language.nativeName,
                            subtitle: language.englishName,
                            selected:
                                _hasSelectedLanguage &&
                                _language == language.code,
                            onTap: () => _rebuild(() {
                              FocusManager.instance.primaryFocus?.unfocus();
                              _language = language.code;
                              _hasSelectedLanguage = true;
                            }),
                          ),
                        const SizedBox(height: 8),
                      ],
                      if (allLanguageOptions.isNotEmpty) ...[
                        _LanguageSectionHeader(copy.allLanguages),
                        for (final language in allLanguageOptions)
                          _SelectableRow(
                            title: language.nativeName,
                            subtitle: language.englishName,
                            selected:
                                _hasSelectedLanguage &&
                                _language == language.code,
                            onTap: () => _rebuild(() {
                              FocusManager.instance.primaryFocus?.unfocus();
                              _language = language.code;
                              _hasSelectedLanguage = true;
                            }),
                          ),
                      ],
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget _permissionPage() {
    final l10n = _onboardingL10n;
    return _OnboardingContent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _BellHalo(gold: _gold),
          const SizedBox(height: 28),
          _TitleBlock(
            title: l10n.enableReminders,
            subtitle: l10n.allowNotificationsToReceivePrayerTimesAndDaily,
          ),
          const SizedBox(height: 22),
          _PermissionPoint(text: l10n.dailyQuranReminder, gold: _gold),
          _PermissionPoint(text: l10n.prayerTimeNotifications, gold: _gold),
          _PermissionPoint(text: l10n.specialOccasionsAndMore, gold: _gold),
          const SizedBox(height: 22),
          _PrimaryButton(
            label: l10n.enableNotifications,
            onPressed: _enableNotifications,
          ),
        ],
      ),
    );
  }

  Widget _setupPage() {
    final l10n = _onboardingL10n;
    return _OnboardingContent(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 18),
          _TitleBlock(
            title: l10n.letSPersonalizeYourExperience,
            subtitle: l10n.thisHelpsUsCustomizeRemindersAndTrackYour,
          ),
          const SizedBox(height: 24),
          _InputLabel(l10n.nameOptional),
          _TextFieldShell(
            child: TextField(
              controller: _nameController,
              style: AppTypography.body(context, color: Colors.white),
              decoration: InputDecoration(
                hintText: l10n.enterYourName,
                suffixIcon: const Icon(AppIcons.personOutline),
              ),
            ),
          ),
          const SizedBox(height: 14),
          _InputLabel(l10n.dailyGoal),
          _GoalDropdown(
            value: _dailyGoal,
            options: _dailyGoalOptions(l10n),
            onChanged: (value) => _rebuild(() => _dailyGoal = value),
          ),
          const SizedBox(height: 14),
          _InputLabel(l10n.remindMeAt),
          _TextFieldShell(
            onTap: _pickReminderTime,
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _reminderTime.format(context),
                    style: AppTypography.body(
                      context,
                      color: Colors.white,
                      weight: FontWeight.w800,
                    ),
                  ),
                ),
                const Icon(
                  AppIcons.accessTime,
                  color: Colors.white70,
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
