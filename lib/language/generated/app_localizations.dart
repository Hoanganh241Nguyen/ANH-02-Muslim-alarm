import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_af.dart';
import 'app_localizations_am.dart';
import 'app_localizations_ar.dart';
import 'app_localizations_az.dart';
import 'app_localizations_be.dart';
import 'app_localizations_bg.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_bs.dart';
import 'app_localizations_ca.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_eo.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_fy.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_gl.dart';
import 'app_localizations_gu.dart';
import 'app_localizations_ha.dart';
import 'app_localizations_haw.dart';
import 'app_localizations_he.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hmn.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_ht.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_hy.dart';
import 'app_localizations_id.dart';
import 'app_localizations_is.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ka.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_km.dart';
import 'app_localizations_kn.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ku.dart';
import 'app_localizations_ky.dart';
import 'app_localizations_lo.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mg.dart';
import 'app_localizations_mi.dart';
import 'app_localizations_mk.dart';
import 'app_localizations_ml.dart';
import 'app_localizations_mn.dart';
import 'app_localizations_mr.dart';
import 'app_localizations_ms.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_my.dart';
import 'app_localizations_ne.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_no.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_si.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sq.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_sw.dart';
import 'app_localizations_ta.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('af'),
    Locale('am'),
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bn'),
    Locale('bs'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('eo'),
    Locale('es'),
    Locale('et'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('fy'),
    Locale('ga'),
    Locale('gl'),
    Locale('gu'),
    Locale('ha'),
    Locale('haw'),
    Locale('he'),
    Locale('hi'),
    Locale('hmn'),
    Locale('hr'),
    Locale('ht'),
    Locale('hu'),
    Locale('hy'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ka'),
    Locale('kk'),
    Locale('km'),
    Locale('kn'),
    Locale('ko'),
    Locale('ku'),
    Locale('ky'),
    Locale('lo'),
    Locale('lt'),
    Locale('lv'),
    Locale('mg'),
    Locale('mi'),
    Locale('mk'),
    Locale('ml'),
    Locale('mn'),
    Locale('mr'),
    Locale('ms'),
    Locale('mt'),
    Locale('my'),
    Locale('ne'),
    Locale('nl'),
    Locale('no'),
    Locale('pa'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('si'),
    Locale('sk'),
    Locale('sl'),
    Locale('sq'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('ta'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// Tasbih statistics period label.
  ///
  /// In en, this message translates to:
  /// **'Week'**
  String get week;

  /// Tasbih statistics period label.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// Tasbih statistics period label.
  ///
  /// In en, this message translates to:
  /// **'Lifetime'**
  String get lifetime;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Quran Pro: Al Quran Majeed'**
  String get appTitle;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Take a pause from your work and make time for Allah.'**
  String get prayerAlarmDefaultQuote;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Prayer'**
  String get prayerAlarmDefaultName;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Product {id} not available for purchase.'**
  String productUnavailable(Object id);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Purchase of {productId} successful!'**
  String purchaseSuccessful(Object productId);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Purchase of {productId} restored!'**
  String purchaseRestored(Object productId);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'{count} Days'**
  String daysCount(Object count);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'UPCOMING: {prayerName}'**
  String upcomingPrayer(Object prayerName);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Distance to Mecca: {distance} Km'**
  String distanceToMecca(Object distance);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Remind me after {minutes} minutes'**
  String snoozeMinutes(Object minutes);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'It is time for {prayerName} prayer'**
  String prayerTimeArrived(Object prayerName);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Round: {round}'**
  String roundValue(Object round);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'{language} selected'**
  String selectedLanguage(Object language);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Juz {juz}'**
  String juzNumber(Object juz);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Page {page}'**
  String pageNumber(Object page);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Hizb {hizb}'**
  String hizbNumber(Object hizb);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'{surahName}: Verse {verse}'**
  String surahVerse(Object surahName, Object verse);

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'{count} ayahs'**
  String surahAyahCount(Object count);

  /// Continue reading card ayah number label.
  ///
  /// In en, this message translates to:
  /// **'Ayah No: {ayah}'**
  String ayahNo(Object ayah);

  /// Continue reading card progress count.
  ///
  /// In en, this message translates to:
  /// **'{current} of {total} Ayahs'**
  String readingProgressAyahCount(Object current, Object total);

  /// Surah picker title.
  ///
  /// In en, this message translates to:
  /// **'Select Surah'**
  String get selectSurah;

  /// Surah revelation type label.
  ///
  /// In en, this message translates to:
  /// **'MECCAN'**
  String get meccan;

  /// Surah revelation type label.
  ///
  /// In en, this message translates to:
  /// **'MEDINAN'**
  String get medinan;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'LEVEL {level}'**
  String levelNumber(Object level);

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'(Surah Al-Baqarah 2:238)'**
  String get surahAlBaqarah2238;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'1 Juz'**
  String get text1juz;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'1.99 USD'**
  String get text199usd;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'10 pages'**
  String get text10pages;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'100 Dhikr'**
  String get text100dhikr;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'2.99 USD'**
  String get text299usd;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'20 pages'**
  String get text20pages;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'28°C - Clear Sky'**
  String get text28cclearsky;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'4.99 USD'**
  String get text499usd;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'5 pages'**
  String get text5pages;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'7.99 USD'**
  String get text799usd;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'About Quran Pro'**
  String get aboutQuranPro;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get activity;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_beads_dialog.dart.
  ///
  /// In en, this message translates to:
  /// **'Ad is loading. Please try again soon.'**
  String get adIsLoadingPleaseTryAgainSoon;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/dhikr_selector.dart.
  ///
  /// In en, this message translates to:
  /// **'Add custom dhikr'**
  String get addCustomDhikr;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Add Custom Dhikr'**
  String get addCustomDhikr2;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Add Dhikr'**
  String get addDhikr;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'ADJUST POSITION'**
  String get adjustPosition;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'AFTERNOON'**
  String get afternoon;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Al-Masjid al-Haram'**
  String get alMasjidAlHaram;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Alhamdulillahi Rabbil Alamin'**
  String get alhamdulillahiRabbilAlamin;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'ALIGNED TO QIBLA'**
  String get alignedToQibla;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'All praise is due to Allah'**
  String get allPraiseIsDueToAllah;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'All premium features at a discounted price'**
  String get allPremiumFeaturesAtADiscountedPrice;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'All-in-one Quran App'**
  String get allInOneQuranApp;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Allah is sufficient for me; there is no deity except Him'**
  String get allahIsSufficientForMeThereIsNo;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Allah is the Greatest'**
  String get allahIsTheGreatest;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Allahu Akbar'**
  String get allahuAkbar;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Allahumma salli ala Muhammad'**
  String get allahummaSalliAlaMuhammad;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Allow location permission or tap retry to use the fallback schedule.'**
  String get allowLocationPermissionOrTapRetryToUse;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Allow notifications to receive prayer times and daily reminders.'**
  String get allowNotificationsToReceivePrayerTimesAndDaily;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Allow the app to run in the background'**
  String get allowTheAppToRunInTheBackground;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get app;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'Asr'**
  String get asr;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Auzu billahi min ash-shaytanir rajim'**
  String get auzuBillahiMinAshShaytanirRajim;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'Avg'**
  String get avg;

  /// Extracted visible text from lib/features/quran/presentation/services/audio_handler.dart.
  ///
  /// In en, this message translates to:
  /// **'Ayah'**
  String get ayah;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Battery Optimization'**
  String get batteryOptimization;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Beautiful Widgets'**
  String get beautifulWidgets;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'BEST VALUE'**
  String get bestValue;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Black Onyx'**
  String get blackOnyx;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Bookmarks'**
  String get bookmarks;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Bright ivory interface'**
  String get brightIvoryInterface;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Calculating distance...'**
  String get calculatingDistance;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Calibrate your direction'**
  String get calibrateYourDirection;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Change Tasbih mode?'**
  String get changeTasbihMode;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/dhikr_selector.dart.
  ///
  /// In en, this message translates to:
  /// **'Choose Dhikr'**
  String get chooseDhikr;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Choose display language'**
  String get chooseDisplayLanguage;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Choose Theme'**
  String get chooseTheme;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language'**
  String get chooseYourPreferredLanguage;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/counter_text.dart.
  ///
  /// In en, this message translates to:
  /// **'Click or swipe to count'**
  String get clickOrSwipeToCount;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Close custom goal'**
  String get closeCustomGoal;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Complete at least 33 dhikr'**
  String get completeAtLeast33Dhikr;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Connect your heart with the Holy Quran.'**
  String get connectYourHeartWithTheHolyQuran;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Continue Reading'**
  String get continueReading;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/custom_goal_popup_card.dart.
  ///
  /// In en, this message translates to:
  /// **'Counts per round'**
  String get countsPerRound;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_beads_dialog.dart.
  ///
  /// In en, this message translates to:
  /// **'Curate your collection with master-crafted spiritual gems.'**
  String get curateYourCollectionWithMasterCraftedSpiritualGems;

  /// Extracted visible text from lib/features/home/presentation/widgets/prayer_card.dart.
  ///
  /// In en, this message translates to:
  /// **'CURRENT'**
  String get current;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/progress_card.dart.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current2;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Current Location to Mecca'**
  String get currentLocationToMecca;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Current progress will reset for the new mode.'**
  String get currentProgressWillResetForTheNewMode;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Current Streak'**
  String get currentStreak;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Custom dhikr'**
  String get customDhikr;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/custom_goal_popup_card.dart.
  ///
  /// In en, this message translates to:
  /// **'Custom Goal'**
  String get customGoal;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Custom Prayer Sounds'**
  String get customPrayerSounds;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Daily Goal'**
  String get dailyGoal;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Daily Quests'**
  String get dailyQuests;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Daily Quran reminder'**
  String get dailyQuranReminder;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Daily Reminders'**
  String get dailyReminders;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Daily Tasbih'**
  String get dailyTasbih;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'DAWN'**
  String get dawn;

  /// Extracted visible text from lib/features/home/presentation/pages/prayer_alarm_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debug;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'Dhikr'**
  String get dhikr;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'Dhikr activity'**
  String get dhikrActivity;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'Dhu Al-Hijjah'**
  String get dhuAlHijjah;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'Dhu Al-Qadah'**
  String get dhuAlQadah;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'Dhuhr'**
  String get dhuhr;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'DIRECTION'**
  String get direction;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Disable Battery Optimization'**
  String get disableBatteryOptimization;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'DISABLE OPTIMIZATION'**
  String get disableOptimization;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'DISTANCE'**
  String get distance;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'E'**
  String get e;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_page_state.dart.
  ///
  /// In en, this message translates to:
  /// **'e.g. HasbunAllah'**
  String get eGHasbunallah;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'East'**
  String get east;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Enable Auto-start'**
  String get enableAutoStart;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Enable Notifications'**
  String get enableNotifications;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Enable Reminders'**
  String get enableReminders;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterYourName;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_beads_dialog.dart.
  ///
  /// In en, this message translates to:
  /// **'EQUIPPED'**
  String get equipped;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Everything you need for a better Quran experience.'**
  String get everythingYouNeedForABetterQuranExperience;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'Fajr'**
  String get fajr;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'First'**
  String get first;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'For the most accurate results, keep your phone flat and away from magnetic objects.'**
  String get forTheMostAccurateResultsKeepYourPhone;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/progress_card.dart.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get free;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Full Bundle'**
  String get fullBundle;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Get an ad-free experience forever'**
  String get getAnAdFreeExperienceForever;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Get reminded to read and stay consistent.'**
  String get getRemindedToReadAndStayConsistent;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Glory and praise be to Allah'**
  String get gloryAndPraiseBeToAllah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Glory be to Allah'**
  String get gloryBeToAllah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Glory be to Allah, the Magnificent'**
  String get gloryBeToAllahTheMagnificent;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Go to Home'**
  String get goToHome;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Golden Engraved'**
  String get goldenEngraved;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Green Jade'**
  String get greenJade;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'H:mm'**
  String get hMm;

  /// Extracted visible text from lib/features/home/presentation/providers/prayer_time_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Hanoi, Vietnam'**
  String get hanoiVietnam;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/quick_actions.dart.
  ///
  /// In en, this message translates to:
  /// **'Haptic'**
  String get haptic;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Hasanat Hub'**
  String get hasanatHub;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Hasbiyallahu la ilaha illa Huwa'**
  String get hasbiyallahuLaIlahaIllaHuwa;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'HH:mm'**
  String get hhMm;

  /// Extracted visible text from lib/features/home/presentation/widgets/prayer_card.dart.
  ///
  /// In en, this message translates to:
  /// **'hh:mm a'**
  String get hhMmA;

  /// Extracted visible text from lib/features/main/presentation/pages/main_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'How your data is handled'**
  String get howYourDataIsHandled;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'I seek forgiveness from Allah'**
  String get iSeekForgivenessFromAllah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'I seek refuge in Allah from the accursed Satan'**
  String get iSeekRefugeInAllahFromTheAccursed;

  /// Extracted visible text from lib/core/services/notification_service.dart.
  ///
  /// In en, this message translates to:
  /// **'Immediate alerts'**
  String get immediateAlerts;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'In the name of Allah'**
  String get inTheNameOfAllah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Indeed we belong to Allah and to Him we return'**
  String get indeedWeBelongToAllahAndToHim;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Inna lillahi wa inna ilayhi rajiun'**
  String get innaLillahiWaInnaIlayhiRajiun;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'Isha'**
  String get isha;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'Jumada Al-Awwal'**
  String get jumadaAlAwwal;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'Jumada Al-Thani'**
  String get jumadaAlThani;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'JUZ'**
  String get juz;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Juz'**
  String get juz2;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Keep adhan alarms reliable'**
  String get keepAdhanAlarmsReliable;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Keep it up! You\'re doing great.'**
  String get keepItUpYouReDoingGreat;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Keep prayer calls reliable even when the app is closed.'**
  String get keepPrayerCallsReliableEvenWhenTheApp;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'La hawla wa la quwwata illa billah'**
  String get laHawlaWaLaQuwwataIllaBillah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'La ilaha illallah'**
  String get laIlahaIllallah;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Lapis Lazuli'**
  String get lapisLazuli;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'Last 7 Days'**
  String get last7Days;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'LATER'**
  String get later;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Let\'s begin your beautiful journey with the Quran.'**
  String get letSBeginYourBeautifulJourneyWithThe;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Let\'s personalize\nyour experience'**
  String get letSPersonalizeYourExperience;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Listen to or read any Ayah today'**
  String get listenToOrReadAnyAyahToday;

  /// Extracted visible text from lib/features/home/presentation/providers/prayer_time_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Locating...'**
  String get locating;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// Extracted visible text from lib/features/home/presentation/providers/prayer_time_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied'**
  String get locationPermissionsAreDenied;

  /// Extracted visible text from lib/features/qibla/presentation/providers/qibla_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied.'**
  String get locationPermissionsArePermanentlyDenied;

  /// Extracted visible text from lib/features/home/presentation/providers/prayer_time_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Location services are disabled.'**
  String get locationServicesAreDisabled;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/stats_grid.dart.
  ///
  /// In en, this message translates to:
  /// **'Longest Streak'**
  String get longestStreak;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'Maghrib'**
  String get maghrib;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Maybe later'**
  String get maybeLater;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Mecca, Saudi Arabia'**
  String get meccaSaudiArabia;

  /// Extracted visible text from lib/features/quran/presentation/provider/quran_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Mishary Rashid Alafasy'**
  String get misharyRashidAlafasy;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'MMM dd, yyyy'**
  String get mmmDdYyyy;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'My Lord, forgive and have mercy'**
  String get myLordForgiveAndHaveMercy;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'My Lord, I am in need of whatever good You send down'**
  String get myLordIAmInNeedOfWhatever;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'My Lord, increase me in knowledge'**
  String get myLordIncreaseMeInKnowledge;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'My Lord, make it easy and do not make it difficult'**
  String get myLordMakeItEasyAndDoNot;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'N'**
  String get n;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Name (Optional)'**
  String get nameOptional;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/dhikr_selector.dart.
  ///
  /// In en, this message translates to:
  /// **'Next dhikr'**
  String get nextDhikr;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'NEXT PRAYER'**
  String get nextPrayer;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'NIGHT'**
  String get night;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Night emerald interface'**
  String get nightEmeraldInterface;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'No bookmarks yet'**
  String get noBookmarksYet;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'NOON'**
  String get noon;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'North'**
  String get north;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Northeast'**
  String get northeast;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Northwest'**
  String get northwest;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Notifications & Alarm'**
  String get notificationsAlarm;

  /// Extracted visible text from lib/core/services/notification_service.dart.
  ///
  /// In en, this message translates to:
  /// **'Notifications for prayer times'**
  String get notificationsForPrayerTimes;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'O Allah, send blessings upon Muhammad'**
  String get oAllahSendBlessingsUponMuhammad;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'O Ever-Living, O Sustainer'**
  String get oEverLivingOSustainer;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'OPEN AUTO-START'**
  String get openAutoStart;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Optimize Adhan Performance'**
  String get optimizeAdhanPerformance;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Our Lord, grant us good in this world'**
  String get ourLordGrantUsGoodInThisWorld;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'PAGE'**
  String get page;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Pearl'**
  String get pearl;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Personalize your Adhan notifications'**
  String get personalizeYourAdhanNotifications;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Praise be to Allah, Lord of the worlds'**
  String get praiseBeToAllahLordOfTheWorlds;

  /// Extracted visible text from lib/core/services/notification_service.dart.
  ///
  /// In en, this message translates to:
  /// **'Prayer Alarms'**
  String get prayerAlarms;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Prayer Schedule'**
  String get prayerSchedule;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Prayer time notifications'**
  String get prayerTimeNotifications;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Prayer times are loading'**
  String get prayerTimesAreLoading;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Prayer Times, Qibla, Quran reading, and Tasbih in one daily companion.'**
  String get prayerTimesQiblaQuranReadingAndTasbihIn;

  /// Extracted visible text from lib/features/splash/presentation/pages/splash_page.dart.
  ///
  /// In en, this message translates to:
  /// **'PRAYER • QURAN • QIBLA'**
  String get prayerQuranQibla;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Premium Themes'**
  String get premiumThemes;

  /// Extracted visible text from lib/features/splash/presentation/pages/splash_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Preparing your spiritual journey...'**
  String get preparingYourSpiritualJourney;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/dhikr_selector.dart.
  ///
  /// In en, this message translates to:
  /// **'Previous dhikr'**
  String get previousDhikr;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// Extracted visible text from lib/features/main/presentation/pages/main_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Qibla'**
  String get qibla;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Qibla Finder'**
  String get qiblaFinder;

  /// Qibla map button tooltip.
  ///
  /// In en, this message translates to:
  /// **'Qibla Map'**
  String get qiblaMap;

  /// Extracted visible text from lib/features/main/presentation/pages/main_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran'**
  String get quran;

  /// Extracted visible text from lib/main.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Playback'**
  String get quranPlayback;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Pro'**
  String get quranPro;

  /// Extracted visible text from lib/features/splash/presentation/pages/splash_page.dart.
  ///
  /// In en, this message translates to:
  /// **'QURAN PRO'**
  String get quranPro2;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Pro brings Prayer Times, Qibla, Quran reading, and Tasbih into one simple daily companion.'**
  String get quranProBringsPrayerTimesQiblaQuranReading;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Pro preferences'**
  String get quranProPreferences;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Pro stores onboarding and progress preferences locally on this device. Analytics may be used to improve stability and quality.'**
  String get quranProStoresOnboardingAndProgressPreferencesLocally;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Pro stores your Tasbih progress locally on this device. Analytics may be used to improve app stability and product quality.'**
  String get quranProStoresYourTasbihProgressLocallyOn;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Quran Recitation'**
  String get quranRecitation;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabbana atina fid-dunya hasanah'**
  String get rabbanaAtinaFidDunyaHasanah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabbi inni lima anzalta ilayya min khayrin faqir'**
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabbi yassir wa la tuassir'**
  String get rabbiYassirWaLaTuassir;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabbi zidni ilma'**
  String get rabbiZidniIlma;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabbighfir warham wa anta khayrur rahimin'**
  String get rabbighfirWarhamWaAntaKhayrurRahimin;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabi Al-Awwal'**
  String get rabiAlAwwal;

  /// Extracted visible text from lib/core/prayer_alarm/prayer_alarm_screen.dart.
  ///
  /// In en, this message translates to:
  /// **'Rabi Al-Thani'**
  String get rabiAlThani;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Rate app'**
  String get rateApp;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Rate Quran Pro'**
  String get rateQuranPro;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Read & Listen'**
  String get readListen;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Read the Quran with beautiful recitations.'**
  String get readTheQuranWithBeautifulRecitations;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Recommended for Xiaomi, Oppo, Vivo and Huawei'**
  String get recommendedForXiaomiOppoVivoAndHuawei;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Red Carnelian'**
  String get redCarnelian;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Remind Me At'**
  String get remindMeAt;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Remove Ads'**
  String get removeAds;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Requesting location permission...'**
  String get requestingLocationPermission;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/quick_actions.dart.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// Extracted visible text from lib/features/home/presentation/pages/home_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Return to Compass'**
  String get returnToCompass;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'S'**
  String get s;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/quick_actions.dart.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/custom_goal_popup_card.dart.
  ///
  /// In en, this message translates to:
  /// **'Save Goal'**
  String get saveGoal;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Search surah, number, Arabic...'**
  String get searchSurahNumberArabic;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Search Surah...'**
  String get searchSurah;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Select the theme you like'**
  String get selectTheThemeYouLike;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_beads_dialog.dart.
  ///
  /// In en, this message translates to:
  /// **'Select Your Bead'**
  String get selectYourBead;

  /// Extracted visible text from lib/features/main/presentation/pages/main_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Shop'**
  String get shop;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Shop & Customization'**
  String get shopCustomization;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/quick_actions.dart.
  ///
  /// In en, this message translates to:
  /// **'Sound'**
  String get sound;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'South'**
  String get south;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Southeast'**
  String get southeast;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Southwest'**
  String get southwest;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Special occasions and more'**
  String get specialOccasionsAndMore;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Store rating will be connected when the production listing is ready.'**
  String get storeRatingWillBeConnectedWhenTheProduction;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'SubhanAllahi wa bihamdihi'**
  String get subhanallahiWaBihamdihi;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'SubhanAllahil Azim'**
  String get subhanallahilAzim;

  /// Extracted visible text from lib/features/home/domain/entities/prayer_time.dart.
  ///
  /// In en, this message translates to:
  /// **'SUNSET'**
  String get sunset;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Support Quran Pro on the store'**
  String get supportQuranProOnTheStore;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Surah'**
  String get surah;

  /// Extracted visible text from lib/features/main/presentation/pages/main_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Tasbih'**
  String get tasbih;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Tasbih Settings'**
  String get tasbihSettings;

  /// Extracted visible text from lib/core/widgets/app_settings_button.dart.
  ///
  /// In en, this message translates to:
  /// **'Tell us what to improve'**
  String get tellUsWhatToImprove;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Thanks for using Quran Pro. Store rating will be connected when the production store listing is ready.'**
  String get thanksForUsingQuranProStoreRatingWill;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'There is no deity except Allah'**
  String get thereIsNoDeityExceptAllah;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'There is no power nor strength except through Allah'**
  String get thereIsNoPowerNorStrengthExceptThrough;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'This helps us customize reminders and track your progress.'**
  String get thisHelpsUsCustomizeRemindersAndTrackYour;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Tiger\'s Eye'**
  String get tigerSEye;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/history_preview.dart.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'TOTAL HASANAT'**
  String get totalHasanat;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Track Progress'**
  String get trackProgress;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Track your reading and achievements.'**
  String get trackYourReadingAndAchievements;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/quick_actions.dart.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// Extracted visible text from lib/features/shop/presentation/pages/shop_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Unlock all app themes and customizations'**
  String get unlockAllAppThemesAndCustomizations;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Usage guidelines'**
  String get usageGuidelines;

  /// Extracted visible text from lib/features/tasbih/presentation/pages/tasbih_page_parts/tasbih_settings_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Use Quran Pro respectfully for personal worship, learning, and daily Islamic routines.'**
  String get useQuranProRespectfullyForPersonalWorshipLearning;

  /// Extracted visible text from lib/features/gamification/presentation/pages/gamification_page.dart.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'W'**
  String get w;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// Extracted visible text from lib/features/qibla/presentation/pages/qibla_page.dart.
  ///
  /// In en, this message translates to:
  /// **'West'**
  String get west;

  /// Extracted visible text from lib/features/tasbih/presentation/providers/tasbih_provider.dart.
  ///
  /// In en, this message translates to:
  /// **'Ya Hayyu Ya Qayyum'**
  String get yaHayyuYaQayyum;

  /// Extracted visible text from lib/features/onboarding/presentation/pages/onboarding_page.dart.
  ///
  /// In en, this message translates to:
  /// **'You\'re All Set!'**
  String get youReAllSet;

  /// Extracted visible text from lib/features/quran/presentation/pages/quran_page.dart.
  ///
  /// In en, this message translates to:
  /// **'Your Progress'**
  String get yourProgress;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueLabel;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Amethyst'**
  String get amethyst;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Indonesian'**
  String get indonesian;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Turkish'**
  String get turkish;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Vietnamese'**
  String get vietnamese;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Turquoise'**
  String get turquoise;

  /// English UI text.
  ///
  /// In en, this message translates to:
  /// **'Wood'**
  String get wood;

  /// Text displayed after time remaining (e.g., 5 mins left).
  ///
  /// In en, this message translates to:
  /// **'left'**
  String get left;

  /// Onboarding feature subtitle for home screen widgets.
  ///
  /// In en, this message translates to:
  /// **'Stay inspired on your home screen.'**
  String get stayInspiredOnYourHomeScreen;

  /// Settings screen title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// Tasbih custom goal rounds label.
  ///
  /// In en, this message translates to:
  /// **'Rounds'**
  String get rounds;

  /// Notification settings subtitle.
  ///
  /// In en, this message translates to:
  /// **'Prayer reminders and full-screen alarm'**
  String get prayerRemindersFullScreenAlarm;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Daily Reminder'**
  String get holyMessage;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'All app settings in one place'**
  String get allSettingsInOnePlace;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Prayer times, Qibla, Quran reading and Tasbih in one daily companion.'**
  String get aboutQuranProDescription;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Send feedback to support@quranpro.app. Your suggestions help improve Prayer, Quran, Qibla and Tasbih.'**
  String get feedbackDescription;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Stop audio'**
  String get stopAudio;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Previous ayah'**
  String get previousAyah;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Next ayah'**
  String get nextAyah;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Sound on'**
  String get reminderRing;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Vibrate only'**
  String get reminderVibrate;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get reminderSilent;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get darkMode;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Unlimited'**
  String get unlimited;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'This item is not available right now. Please try again later.'**
  String get productUnavailableFriendly;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchases;

  /// App UI text.
  ///
  /// In en, this message translates to:
  /// **'Calibrating… move your phone in a figure 8'**
  String get calibratingCompass;

  /// Home label when the location is guessed from the time zone because location permission is not granted.
  ///
  /// In en, this message translates to:
  /// **'Estimated location'**
  String get estimatedLocation;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'af',
    'am',
    'ar',
    'az',
    'be',
    'bg',
    'bn',
    'bs',
    'ca',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'eo',
    'es',
    'et',
    'fa',
    'fi',
    'fr',
    'fy',
    'ga',
    'gl',
    'gu',
    'ha',
    'haw',
    'he',
    'hi',
    'hmn',
    'hr',
    'ht',
    'hu',
    'hy',
    'id',
    'is',
    'it',
    'ja',
    'ka',
    'kk',
    'km',
    'kn',
    'ko',
    'ku',
    'ky',
    'lo',
    'lt',
    'lv',
    'mg',
    'mi',
    'mk',
    'ml',
    'mn',
    'mr',
    'ms',
    'mt',
    'my',
    'ne',
    'nl',
    'no',
    'pa',
    'pl',
    'pt',
    'ro',
    'ru',
    'si',
    'sk',
    'sl',
    'sq',
    'sr',
    'sv',
    'sw',
    'ta',
    'tr',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return AppLocalizationsAf();
    case 'am':
      return AppLocalizationsAm();
    case 'ar':
      return AppLocalizationsAr();
    case 'az':
      return AppLocalizationsAz();
    case 'be':
      return AppLocalizationsBe();
    case 'bg':
      return AppLocalizationsBg();
    case 'bn':
      return AppLocalizationsBn();
    case 'bs':
      return AppLocalizationsBs();
    case 'ca':
      return AppLocalizationsCa();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'eo':
      return AppLocalizationsEo();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'fa':
      return AppLocalizationsFa();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'fy':
      return AppLocalizationsFy();
    case 'ga':
      return AppLocalizationsGa();
    case 'gl':
      return AppLocalizationsGl();
    case 'gu':
      return AppLocalizationsGu();
    case 'ha':
      return AppLocalizationsHa();
    case 'haw':
      return AppLocalizationsHaw();
    case 'he':
      return AppLocalizationsHe();
    case 'hi':
      return AppLocalizationsHi();
    case 'hmn':
      return AppLocalizationsHmn();
    case 'hr':
      return AppLocalizationsHr();
    case 'ht':
      return AppLocalizationsHt();
    case 'hu':
      return AppLocalizationsHu();
    case 'hy':
      return AppLocalizationsHy();
    case 'id':
      return AppLocalizationsId();
    case 'is':
      return AppLocalizationsIs();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ka':
      return AppLocalizationsKa();
    case 'kk':
      return AppLocalizationsKk();
    case 'km':
      return AppLocalizationsKm();
    case 'kn':
      return AppLocalizationsKn();
    case 'ko':
      return AppLocalizationsKo();
    case 'ku':
      return AppLocalizationsKu();
    case 'ky':
      return AppLocalizationsKy();
    case 'lo':
      return AppLocalizationsLo();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mg':
      return AppLocalizationsMg();
    case 'mi':
      return AppLocalizationsMi();
    case 'mk':
      return AppLocalizationsMk();
    case 'ml':
      return AppLocalizationsMl();
    case 'mn':
      return AppLocalizationsMn();
    case 'mr':
      return AppLocalizationsMr();
    case 'ms':
      return AppLocalizationsMs();
    case 'mt':
      return AppLocalizationsMt();
    case 'my':
      return AppLocalizationsMy();
    case 'ne':
      return AppLocalizationsNe();
    case 'nl':
      return AppLocalizationsNl();
    case 'no':
      return AppLocalizationsNo();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'si':
      return AppLocalizationsSi();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sq':
      return AppLocalizationsSq();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'sw':
      return AppLocalizationsSw();
    case 'ta':
      return AppLocalizationsTa();
    case 'tr':
      return AppLocalizationsTr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
