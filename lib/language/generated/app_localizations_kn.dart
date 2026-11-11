// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kannada (`kn`).
class AppLocalizationsKn extends AppLocalizations {
  AppLocalizationsKn([String locale = 'kn']) : super(locale);

  @override
  String get week => 'ವಾರ';

  @override
  String get month => 'ತಿಂಗಳು';

  @override
  String get lifetime => 'ಜೀವಿತಾವಧಿ';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'ನಿಮ್ಮ ಕೆಲಸದಿಂದ ಸ್ವಲ್ಪ ವಿರಾಮ ತೆಗೆದುಕೊಂಡು ಅಲ್ಲಾಹನಿಗಾಗಿ ಸಮಯ ಮೀಸಲಿಡಿ.';

  @override
  String get prayerAlarmDefaultName => 'ನಮಾಜ್';

  @override
  String productUnavailable(Object id) {
    return '$id ಉತ್ಪನ್ನ ಖರೀದಿಗೆ ಲಭ್ಯವಿಲ್ಲ.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId ಖರೀದಿ ಯಶಸ್ವಿಯಾಗಿದೆ!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId ಖರೀದಿ ಮರುಸ್ಥಾಪಿಸಲಾಗಿದೆ!';
  }

  @override
  String daysCount(Object count) {
    return '$count ದಿನಗಳು';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ಮುಂದಿನದು: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'ಮಕ್ಕಾಗೆ ಅಂತರ: $distance ಕಿ.ಮೀ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes ನಿಮಿಷಗಳ ನಂತರ ನೆನಪಿಸಿ';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName ನಮಾಜ್‌ನ ಸಮಯವಾಗಿದೆ';
  }

  @override
  String roundValue(Object round) {
    return 'ಸುತ್ತು: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language ಆಯ್ಕೆಯಾಗಿದೆ';
  }

  @override
  String juzNumber(Object juz) {
    return 'ಜುಜ್ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'ಪುಟ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ಹಿಜ್ಬ್ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ಆಯತ್ $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ಆಯತ್‌ಗಳು';
  }

  @override
  String ayahNo(Object ayah) {
    return 'Ayah No: $ayah';
  }

  @override
  String readingProgressAyahCount(Object current, Object total) {
    return '$current of $total Ayahs';
  }

  @override
  String get selectSurah => 'Select Surah';

  @override
  String get meccan => 'MECCAN';

  @override
  String get medinan => 'MEDINAN';

  @override
  String levelNumber(Object level) {
    return 'ಹಂತ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(ಸೂರಾ ಅಲ್-ಬಕರಾ 2:238)';

  @override
  String get text1juz => '1 ಜುಜ್';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 ಪುಟಗಳು';

  @override
  String get text100dhikr => '100 ಝಿಕ್ರ್';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 ಪುಟಗಳು';

  @override
  String get text28cclearsky => '28°C - ಶುಭ್ರ ಆಕಾಶ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 ಪುಟಗಳು';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'ಕುರಿತು';

  @override
  String get aboutQuranPro => 'ಕುರಾನ್ ಪ್ರೊ ಕುರಿತು';

  @override
  String get activity => 'ಚಟುವಟಿಕೆ';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'ಜಾಹೀರಾತು ಲೋಡ್ ಆಗುತ್ತಿದೆ. ಸ್ವಲ್ಪ ಸಮಯದ ನಂತರ ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ.';

  @override
  String get addCustomDhikr => 'ಸ್ವಂತ ಝಿಕ್ರ್ ಸೇರಿಸಿ';

  @override
  String get addCustomDhikr2 => 'ಸ್ವಂತ ಝಿಕ್ರ್ ಸೇರಿಸಿ';

  @override
  String get addDhikr => 'ಝಿಕ್ರ್ ಸೇರಿಸಿ';

  @override
  String get adjustPosition => 'ಸ್ಥಾನ ಹೊಂದಿಸಿ';

  @override
  String get afternoon => 'ಅಪರಾಹ್ನ';

  @override
  String get alMasjidAlHaram => 'ಅಲ್-ಮಸ್ಜಿದುಲ್ ಹರಾಮ್';

  @override
  String get alhamdulillahiRabbilAlamin => 'ಅಲ್ಹಮ್ದುಲಿಲ್ಲಾಹಿ ರಬ್ಬಿಲ್ ಆಲಮೀನ್';

  @override
  String get alignedToQibla => 'ಕಿಬ್ಲಾಗೆ ಸರಿಯಾಗಿ ಹೊಂದಿದೆ';

  @override
  String get allPraiseIsDueToAllah => 'ಎಲ್ಲಾ ಸ್ತುತಿಯೂ ಅಲ್ಲಾಹನಿಗೆ';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'ಎಲ್ಲಾ ಪ್ರೀಮಿಯಂ ವೈಶಿಷ್ಟ್ಯಗಳು ರಿಯಾಯಿತಿ ಬೆಲೆಯಲ್ಲಿ';

  @override
  String get allInOneQuranApp => 'ಎಲ್ಲವೂ ಒಂದರಲ್ಲಿ ಕುರಾನ್ ಆ್ಯಪ್';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'ನನಗೆ ಅಲ್ಲಾಹನೇ ಸಾಕು; ಅವನ ಹೊರತು ಆರಾಧ್ಯನಿಲ್ಲ';

  @override
  String get allahIsTheGreatest => 'ಅಲ್ಲಾಹನೇ ಅತಿ ಶ್ರೇಷ್ಠ';

  @override
  String get allahuAkbar => 'ಅಲ್ಲಾಹು ಅಕ್ಬರ್';

  @override
  String get allahummaSalliAlaMuhammad => 'ಅಲ್ಲಾಹುಮ್ಮ ಸಲ್ಲಿ ಅಲಾ ಮುಹಮ್ಮದ್';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'ಸ್ಥಳ ಅನುಮತಿ ನೀಡಿ ಅಥವಾ ಪರ್ಯಾಯ ವೇಳಾಪಟ್ಟಿ ಬಳಸಲು ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ ಒತ್ತಿ.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'ನಮಾಜ್ ಸಮಯ ಮತ್ತು ದೈನಂದಿನ ಜ್ಞಾಪನೆಗಳನ್ನು ಪಡೆಯಲು ಅಧಿಸೂಚನೆಗಳನ್ನು ಅನುಮತಿಸಿ.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'ಆ್ಯಪ್ ಹಿನ್ನೆಲೆಯಲ್ಲಿ ಚಲಿಸಲು ಅನುಮತಿಸಿ';

  @override
  String get app => 'ಆ್ಯಪ್';

  @override
  String get arabic => 'ಅರೇಬಿಕ್';

  @override
  String get asr => 'ಅಸರ್';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'ಅಊಝು ಬಿಲ್ಲಾಹಿ ಮಿನಶ್ಶೈತಾನಿರ್ ರಜೀಮ್';

  @override
  String get avg => 'ಸರಾಸರಿ';

  @override
  String get ayah => 'ಆಯತ್';

  @override
  String get batteryOptimization => 'ಬ್ಯಾಟರಿ ಆಪ್ಟಿಮೈಸೇಶನ್';

  @override
  String get beautifulWidgets => 'ಸುಂದರ ವಿಜೆಟ್‌ಗಳು';

  @override
  String get bestValue => 'ಅತ್ಯುತ್ತಮ ಮೌಲ್ಯ';

  @override
  String get blackOnyx => 'ಕಪ್ಪು ಓನಿಕ್ಸ್';

  @override
  String get bookmarks => 'ಬುಕ್‌ಮಾರ್ಕ್‌ಗಳು';

  @override
  String get brightIvoryInterface => 'ಪ್ರಕಾಶಮಾನ ದಂತವರ್ಣ ಇಂಟರ್ಫೇಸ್';

  @override
  String get calculatingDistance => 'ಅಂತರ ಲೆಕ್ಕ ಹಾಕಲಾಗುತ್ತಿದೆ...';

  @override
  String get calibrateYourDirection => 'ನಿಮ್ಮ ದಿಕ್ಕನ್ನು ಹೊಂದಿಸಿ';

  @override
  String get cancel => 'ರದ್ದುಮಾಡಿ';

  @override
  String get change => 'ಬದಲಾಯಿಸಿ';

  @override
  String get changeTasbihMode => 'ತಸ್ಬೀಹ್ ಮೋಡ್ ಬದಲಾಯಿಸಬೇಕೇ?';

  @override
  String get chooseDhikr => 'ಝಿಕ್ರ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseDisplayLanguage => 'ಪ್ರದರ್ಶನ ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseTheme => 'ಥೀಮ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get chooseYourPreferredLanguage => 'ನಿಮ್ಮ ಇಷ್ಟದ ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get clickOrSwipeToCount => 'ಎಣಿಸಲು ಒತ್ತಿ ಅಥವಾ ಸ್ವೈಪ್ ಮಾಡಿ';

  @override
  String get close => 'ಮುಚ್ಚಿ';

  @override
  String get closeCustomGoal => 'ಸ್ವಂತ ಗುರಿ ಮುಚ್ಚಿ';

  @override
  String get completeAtLeast33Dhikr => 'ಕನಿಷ್ಠ 33 ಝಿಕ್ರ್ ಪೂರ್ಣಗೊಳಿಸಿ';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'ನಿಮ್ಮ ಹೃದಯವನ್ನು ಪವಿತ್ರ ಕುರಾನ್‌ನೊಂದಿಗೆ ಬೆಸೆಯಿರಿ.';

  @override
  String get continueReading => 'ಓದುವುದನ್ನು ಮುಂದುವರಿಸಿ';

  @override
  String get countsPerRound => 'ಪ್ರತಿ ಸುತ್ತಿನ ಎಣಿಕೆ';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'ನಿಪುಣವಾಗಿ ರಚಿಸಿದ ಆಧ್ಯಾತ್ಮಿಕ ರತ್ನಗಳಿಂದ ನಿಮ್ಮ ಸಂಗ್ರಹವನ್ನು ಸಜ್ಜುಗೊಳಿಸಿ.';

  @override
  String get current => 'ಪ್ರಸ್ತುತ';

  @override
  String get current2 => 'ಪ್ರಸ್ತುತ';

  @override
  String get currentLocationToMecca => 'ಪ್ರಸ್ತುತ ಸ್ಥಳದಿಂದ ಮಕ್ಕಾಗೆ';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'ಹೊಸ ಮೋಡ್‌ಗಾಗಿ ಪ್ರಸ್ತುತ ಪ್ರಗತಿ ಮರುಹೊಂದಿಸಲಾಗುತ್ತದೆ.';

  @override
  String get currentStreak => 'ಪ್ರಸ್ತುತ ಸರಣಿ';

  @override
  String get custom => 'ಕಸ್ಟಮ್';

  @override
  String get customDhikr => 'ಸ್ವಂತ ಝಿಕ್ರ್';

  @override
  String get customGoal => 'ಸ್ವಂತ ಗುರಿ';

  @override
  String get customPrayerSounds => 'ಕಸ್ಟಮ್ ಅಜಾನ್ ಶಬ್ದಗಳು';

  @override
  String get dailyGoal => 'ದೈನಂದಿನ ಗುರಿ';

  @override
  String get dailyQuests => 'ದೈನಂದಿನ ಕಾರ್ಯಗಳು';

  @override
  String get dailyQuranReminder => 'ದೈನಂದಿನ ಕುರಾನ್ ಜ್ಞಾಪನೆ';

  @override
  String get dailyReminders => 'ದೈನಂದಿನ ಜ್ಞಾಪನೆಗಳು';

  @override
  String get dailyTasbih => 'ದೈನಂದಿನ ತಸ್ಬೀಹ್';

  @override
  String get dark => 'ಡಾರ್ಕ್';

  @override
  String get dawn => 'ಮುಂಜಾನೆ';

  @override
  String get debug => 'ಡೀಬಗ್';

  @override
  String get dhikr => 'ಝಿಕ್ರ್';

  @override
  String get dhikrActivity => 'ಝಿಕ್ರ್ ಚಟುವಟಿಕೆ';

  @override
  String get dhuAlHijjah => 'ಝುಲ್ ಹಿಜ್ಜಾ';

  @override
  String get dhuAlQadah => 'ಝುಲ್ ಕಅದಾ';

  @override
  String get dhuhr => 'ಝುಹರ್';

  @override
  String get direction => 'ದಿಕ್ಕು';

  @override
  String get disableBatteryOptimization =>
      'ಬ್ಯಾಟರಿ ಆಪ್ಟಿಮೈಸೇಶನ್ ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get disableOptimization => 'ಆಪ್ಟಿಮೈಸೇಶನ್ ನಿಷ್ಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get distance => 'ಅಂತರ';

  @override
  String get e => 'ಪೂ';

  @override
  String get eGHasbunallah => 'ಉದಾ. ಹಸ್ಬುನಲ್ಲಾಹ್';

  @override
  String get east => 'ಪೂರ್ವ';

  @override
  String get enableAutoStart => 'ಸ್ವಯಂ-ಪ್ರಾರಂಭ ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get enableNotifications => 'ಅಧಿಸೂಚನೆಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get enableReminders => 'ಜ್ಞಾಪನೆಗಳನ್ನು ಸಕ್ರಿಯಗೊಳಿಸಿ';

  @override
  String get english => 'ಇಂಗ್ಲಿಷ್';

  @override
  String get enterYourName => 'ನಿಮ್ಮ ಹೆಸರು ನಮೂದಿಸಿ';

  @override
  String get equipped => 'ಬಳಕೆಯಲ್ಲಿದೆ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'ಉತ್ತಮ ಕುರಾನ್ ಅನುಭವಕ್ಕೆ ಬೇಕಾದ ಎಲ್ಲವೂ.';

  @override
  String get fajr => 'ಫಜ್ರ್';

  @override
  String get feedback => 'ಪ್ರತಿಕ್ರಿಯೆ';

  @override
  String get first => 'ಮೊದಲು';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ಅತ್ಯಂತ ನಿಖರ ಫಲಿತಾಂಶಕ್ಕಾಗಿ ಫೋನ್ ಸಮತಟ್ಟಾಗಿ ಹಿಡಿಯಿರಿ ಮತ್ತು ಕಾಂತೀಯ ವಸ್ತುಗಳಿಂದ ದೂರವಿಡಿ.';

  @override
  String get free => 'ಉಚಿತ';

  @override
  String get fullBundle => 'ಪೂರ್ಣ ಬಂಡಲ್';

  @override
  String get getAnAdFreeExperienceForever =>
      'ಶಾಶ್ವತವಾಗಿ ಜಾಹೀರಾತು-ಮುಕ್ತ ಅನುಭವ ಪಡೆಯಿರಿ';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'ಓದಲು ಜ್ಞಾಪನೆ ಪಡೆದು ನಿರಂತರತೆ ಕಾಯ್ದುಕೊಳ್ಳಿ.';

  @override
  String get getStarted => 'ಪ್ರಾರಂಭಿಸಿ';

  @override
  String get gloryAndPraiseBeToAllah => 'ಅಲ್ಲಾಹನಿಗೆ ಪಾವಿತ್ರ್ಯ ಮತ್ತು ಸ್ತುತಿ';

  @override
  String get gloryBeToAllah => 'ಅಲ್ಲಾಹನು ಪರಮ ಪವಿತ್ರ';

  @override
  String get gloryBeToAllahTheMagnificent => 'ಮಹಿಮಾನ್ವಿತ ಅಲ್ಲಾಹನು ಪರಮ ಪವಿತ್ರ';

  @override
  String get goToHome => 'ಮುಖಪುಟಕ್ಕೆ ಹೋಗಿ';

  @override
  String get goldenEngraved => 'ಚಿನ್ನದ ಕೆತ್ತನೆ';

  @override
  String get greenJade => 'ಹಸಿರು ಜೇಡ್';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ಹನೋಯ್, ವಿಯೆಟ್ನಾಂ';

  @override
  String get haptic => 'ಕಂಪನ';

  @override
  String get hasanatHub => 'ಹಸನಾತ್ ಕೇಂದ್ರ';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ಹಸ್ಬಿಯಲ್ಲಾಹು ಲಾ ಇಲಾಹ ಇಲ್ಲಾ ಹುವ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ಮುಖಪುಟ';

  @override
  String get howYourDataIsHandled => 'ನಿಮ್ಮ ಡೇಟಾ ಹೇಗೆ ನಿರ್ವಹಿಸಲಾಗುತ್ತದೆ';

  @override
  String get iSeekForgivenessFromAllah => 'ನಾನು ಅಲ್ಲಾಹನಲ್ಲಿ ಕ್ಷಮೆ ಯಾಚಿಸುತ್ತೇನೆ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ಶಪಿತ ಶೈತಾನನಿಂದ ನಾನು ಅಲ್ಲಾಹನಲ್ಲಿ ರಕ್ಷಣೆ ಬಯಸುತ್ತೇನೆ';

  @override
  String get immediateAlerts => 'ತಕ್ಷಣದ ಎಚ್ಚರಿಕೆಗಳು';

  @override
  String get inTheNameOfAllah => 'ಅಲ್ಲಾಹನ ಹೆಸರಿನಲ್ಲಿ';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ನಿಸ್ಸಂದೇಹವಾಗಿ ನಾವು ಅಲ್ಲಾಹನವರು, ಅವನೆಡೆಗೇ ನಾವು ಮರಳುವವರು';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'ಇನ್ನಾ ಲಿಲ್ಲಾಹಿ ವ ಇನ್ನಾ ಇಲೈಹಿ ರಾಜಿಊನ್';

  @override
  String get isha => 'ಇಶಾ';

  @override
  String get jumadaAlAwwal => 'ಜಮಾದುಲ್ ಅವ್ವಲ್';

  @override
  String get jumadaAlThani => 'ಜಮಾದುಲ್ ಆಖಿರ್';

  @override
  String get juz => 'ಜುಜ್';

  @override
  String get juz2 => 'ಜುಜ್';

  @override
  String get keepAdhanAlarmsReliable =>
      'ಅಜಾನ್ ಅಲಾರಂಗಳನ್ನು ವಿಶ್ವಾಸಾರ್ಹವಾಗಿ ಇರಿಸಿ';

  @override
  String get keepItUpYouReDoingGreat =>
      'ಹೀಗೇ ಮುಂದುವರಿಸಿ! ನೀವು ಚೆನ್ನಾಗಿ ಮಾಡುತ್ತಿದ್ದೀರಿ.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'ಆ್ಯಪ್ ಮುಚ್ಚಿದ್ದರೂ ಅಜಾನ್ ಸೂಚನೆಗಳು ವಿಶ್ವಾಸಾರ್ಹವಾಗಿರಲಿ.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'ಲಾ ಹೌಲ ವಲಾ ಕುವ್ವತ ಇಲ್ಲಾ ಬಿಲ್ಲಾಹ್';

  @override
  String get laIlahaIllallah => 'ಲಾ ಇಲಾಹ ಇಲ್ಲಲ್ಲಾಹ್';

  @override
  String get language => 'ಭಾಷೆ';

  @override
  String get lapisLazuli => 'ಲ್ಯಾಪಿಸ್ ಲಾಜುಲಿ';

  @override
  String get last7Days => 'ಕಳೆದ 7 ದಿನಗಳು';

  @override
  String get later => 'ನಂತರ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'ಕುರಾನ್‌ನೊಂದಿಗಿನ ನಿಮ್ಮ ಸುಂದರ ಪಯಣ ಆರಂಭಿಸೋಣ.';

  @override
  String get letSPersonalizeYourExperience =>
      'ನಿಮ್ಮ ಅನುಭವವನ್ನು\nವೈಯಕ್ತಿಕಗೊಳಿಸೋಣ';

  @override
  String get light => 'ಲೈಟ್';

  @override
  String get lightMode => 'ಲೈಟ್ ಮೋಡ್';

  @override
  String get listenToOrReadAnyAyahToday => 'ಇಂದು ಯಾವುದಾದರೂ ಆಯತ್ ಕೇಳಿ ಅಥವಾ ಓದಿ';

  @override
  String get locating => 'ಸ್ಥಳ ಪತ್ತೆ ಮಾಡಲಾಗುತ್ತಿದೆ...';

  @override
  String get location => 'ಸ್ಥಳ';

  @override
  String get locationPermissionsAreDenied => 'ಸ್ಥಳ ಅನುಮತಿ ನಿರಾಕರಿಸಲಾಗಿದೆ';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'ಸ್ಥಳ ಅನುಮತಿ ಶಾಶ್ವತವಾಗಿ ನಿರಾಕರಿಸಲಾಗಿದೆ.';

  @override
  String get locationServicesAreDisabled => 'ಸ್ಥಳ ಸೇವೆಗಳು ನಿಷ್ಕ್ರಿಯವಾಗಿವೆ.';

  @override
  String get longestStreak => 'ಅತಿ ಉದ್ದದ ಸರಣಿ';

  @override
  String get maghrib => 'ಮಗ್ರಿಬ್';

  @override
  String get maybeLater => 'ಬಹುಶಃ ನಂತರ';

  @override
  String get meccaSaudiArabia => 'ಮಕ್ಕಾ, ಸೌದಿ ಅರೇಬಿಯಾ';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'ನನ್ನ ರಬ್ಬೇ, ಕ್ಷಮಿಸು ಮತ್ತು ಕರುಣೆ ತೋರು';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'ನನ್ನ ರಬ್ಬೇ, ನೀನು ಇಳಿಸುವ ಯಾವುದೇ ಒಳಿತಿಗೆ ನಾನು ಅಗತ್ಯವುಳ್ಳವನು';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'ನನ್ನ ರಬ್ಬೇ, ನನಗೆ ಜ್ಞಾನವನ್ನು ಹೆಚ್ಚಿಸು';

  @override
  String get myLordMakeItEasyAndDoNot => 'ನನ್ನ ರಬ್ಬೇ, ಸುಲಭಗೊಳಿಸು, ಕಷ್ಟಗೊಳಿಸಬೇಡ';

  @override
  String get n => 'ಉ';

  @override
  String get nameOptional => 'ಹೆಸರು (ಐಚ್ಛಿಕ)';

  @override
  String get next => 'ಮುಂದೆ';

  @override
  String get nextDhikr => 'ಮುಂದಿನ ಝಿಕ್ರ್';

  @override
  String get nextPrayer => 'ಮುಂದಿನ ನಮಾಜ್';

  @override
  String get night => 'ರಾತ್ರಿ';

  @override
  String get nightEmeraldInterface => 'ರಾತ್ರಿ ಪಚ್ಚೆ ಇಂಟರ್ಫೇಸ್';

  @override
  String get noBookmarksYet => 'ಇನ್ನೂ ಬುಕ್‌ಮಾರ್ಕ್‌ಗಳಿಲ್ಲ';

  @override
  String get noon => 'ಮಧ್ಯಾಹ್ನ';

  @override
  String get north => 'ಉತ್ತರ';

  @override
  String get northeast => 'ಈಶಾನ್ಯ';

  @override
  String get northwest => 'ವಾಯವ್ಯ';

  @override
  String get notificationsAlarm => 'ಅಧಿಸೂಚನೆಗಳು ಮತ್ತು ಅಲಾರಂ';

  @override
  String get notificationsForPrayerTimes => 'ನಮಾಜ್ ಸಮಯಗಳ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'ಅಲ್ಲಾಹನೇ, ಮುಹಮ್ಮದರ ಮೇಲೆ ಆಶೀರ್ವಾದ ಸುರಿಸು';

  @override
  String get oEverLivingOSustainer => 'ಓ ಸದಾ ಜೀವಂತನೇ, ಓ ಸರ್ವಪೋಷಕನೇ';

  @override
  String get openAutoStart => 'ಸ್ವಯಂ-ಪ್ರಾರಂಭ ತೆರೆಯಿರಿ';

  @override
  String get optimizeAdhanPerformance => 'ಅಜಾನ್ ಕಾರ್ಯಕ್ಷಮತೆ ಸುಧಾರಿಸಿ';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'ನಮ್ಮ ರಬ್ಬೇ, ಈ ಲೋಕದಲ್ಲಿ ನಮಗೆ ಒಳಿತನ್ನು ದಯಪಾಲಿಸು';

  @override
  String get page => 'ಪುಟ';

  @override
  String get pearl => 'ಮುತ್ತು';

  @override
  String get personalizeYourAdhanNotifications =>
      'ನಿಮ್ಮ ಅಜಾನ್ ಅಧಿಸೂಚನೆಗಳನ್ನು ವೈಯಕ್ತಿಕಗೊಳಿಸಿ';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'ಸರ್ವಲೋಕಗಳ ಒಡೆಯನಾದ ಅಲ್ಲಾಹನಿಗೆ ಸ್ತುತಿ';

  @override
  String get prayerAlarms => 'ನಮಾಜ್ ಅಲಾರಂಗಳು';

  @override
  String get prayerSchedule => 'ನಮಾಜ್ ವೇಳಾಪಟ್ಟಿ';

  @override
  String get prayerTimeNotifications => 'ನಮಾಜ್ ಸಮಯ ಅಧಿಸೂಚನೆಗಳು';

  @override
  String get prayerTimesAreLoading => 'ನಮಾಜ್ ಸಮಯಗಳು ಲೋಡ್ ಆಗುತ್ತಿವೆ';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'ನಮಾಜ್ ಸಮಯ, ಕಿಬ್ಲಾ, ಕುರಾನ್ ಓದು ಮತ್ತು ತಸ್ಬೀಹ್ ಒಂದೇ ದೈನಂದಿನ ಸಂಗಾತಿಯಲ್ಲಿ.';

  @override
  String get prayerQuranQibla => 'ನಮಾಜ್ • ಕುರಾನ್ • ಕಿಬ್ಲಾ';

  @override
  String get premiumThemes => 'ಪ್ರೀಮಿಯಂ ಥೀಮ್‌ಗಳು';

  @override
  String get preparingYourSpiritualJourney =>
      'ನಿಮ್ಮ ಆಧ್ಯಾತ್ಮಿಕ ಪಯಣ ಸಿದ್ಧಪಡಿಸಲಾಗುತ್ತಿದೆ...';

  @override
  String get previousDhikr => 'ಹಿಂದಿನ ಝಿಕ್ರ್';

  @override
  String get privacyPolicy => 'ಗೌಪ್ಯತಾ ನೀತಿ';

  @override
  String get qibla => 'ಕಿಬ್ಲಾ';

  @override
  String get qiblaFinder => 'ಕಿಬ್ಲಾ ಶೋಧಕ';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ಕುರಾನ್';

  @override
  String get quranPlayback => 'ಕುರಾನ್ ಪ್ಲೇಬ್ಯಾಕ್';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'ಕುರಾನ್ ಪ್ರೊ ನಮಾಜ್ ಸಮಯ, ಕಿಬ್ಲಾ, ಕುರಾನ್ ಓದು ಮತ್ತು ತಸ್ಬೀಹ್ ಅನ್ನು ಒಂದೇ ಸರಳ ದೈನಂದಿನ ಸಂಗಾತಿಯಲ್ಲಿ ತರುತ್ತದೆ.';

  @override
  String get quranProPreferences => 'ಕುರಾನ್ ಪ್ರೊ ಆದ್ಯತೆಗಳು';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'ಕುರಾನ್ ಪ್ರೊ ಆನ್‌ಬೋರ್ಡಿಂಗ್ ಮತ್ತು ಪ್ರಗತಿ ಆದ್ಯತೆಗಳನ್ನು ಈ ಸಾಧನದಲ್ಲೇ ಸಂಗ್ರಹಿಸುತ್ತದೆ. ಸ್ಥಿರತೆ ಮತ್ತು ಗುಣಮಟ್ಟ ಸುಧಾರಿಸಲು ಅನಾಲಿಟಿಕ್ಸ್ ಬಳಸಬಹುದು.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'ಕುರಾನ್ ಪ್ರೊ ನಿಮ್ಮ ತಸ್ಬೀಹ್ ಪ್ರಗತಿಯನ್ನು ಈ ಸಾಧನದಲ್ಲೇ ಸಂಗ್ರಹಿಸುತ್ತದೆ. ಆ್ಯಪ್ ಸ್ಥಿರತೆ ಮತ್ತು ಉತ್ಪನ್ನ ಗುಣಮಟ್ಟ ಸುಧಾರಿಸಲು ಅನಾಲಿಟಿಕ್ಸ್ ಬಳಸಬಹುದು.';

  @override
  String get quranRecitation => 'ಕುರಾನ್ ಪಾರಾಯಣ';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ರಬ್ಬನಾ ಆತಿನಾ ಫಿದ್ದುನ್ಯಾ ಹಸನಾ';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ರಬ್ಬಿ ಇನ್ನೀ ಲಿಮಾ ಅನ್ಝಲ್ತ ಇಲಯ್ಯ ಮಿನ್ ಖೈರಿನ್ ಫಕೀರ್';

  @override
  String get rabbiYassirWaLaTuassir => 'ರಬ್ಬಿ ಯಸ್ಸಿರ್ ವಲಾ ತುಅಸ್ಸಿರ್';

  @override
  String get rabbiZidniIlma => 'ರಬ್ಬಿ ಝಿದ್ನೀ ಇಲ್ಮಾ';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ರಬ್ಬಿಗ್ಫಿರ್ ವರ್ಹಮ್ ವ ಅನ್ತ ಖೈರುರ್ ರಾಹಿಮೀನ್';

  @override
  String get rabiAlAwwal => 'ರಬೀಉಲ್ ಅವ್ವಲ್';

  @override
  String get rabiAlThani => 'ರಬೀಉಲ್ ಆಖಿರ್';

  @override
  String get rateApp => 'ಆ್ಯಪ್‌ಗೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get rateQuranPro => 'ಕುರಾನ್ ಪ್ರೊಗೆ ರೇಟಿಂಗ್ ನೀಡಿ';

  @override
  String get readListen => 'ಓದಿ ಮತ್ತು ಕೇಳಿ';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'ಸುಂದರ ಪಾರಾಯಣಗಳೊಂದಿಗೆ ಕುರಾನ್ ಓದಿ.';

  @override
  String get recent => 'ಇತ್ತೀಚಿನವು';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo ಮತ್ತು Huawei ಗೆ ಶಿಫಾರಸು ಮಾಡಲಾಗಿದೆ';

  @override
  String get redCarnelian => 'ಕೆಂಪು ಕಾರ್ನೀಲಿಯನ್';

  @override
  String get remindMeAt => 'ಈ ಸಮಯಕ್ಕೆ ನೆನಪಿಸಿ';

  @override
  String get removeAds => 'ಜಾಹೀರಾತು ತೆಗೆದುಹಾಕಿ';

  @override
  String get requestingLocationPermission => 'ಸ್ಥಳ ಅನುಮತಿ ಕೋರಲಾಗುತ್ತಿದೆ...';

  @override
  String get reset => 'ಮರುಹೊಂದಿಸಿ';

  @override
  String get retry => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get returnToCompass => 'ದಿಕ್ಸೂಚಿಗೆ ಹಿಂತಿರುಗಿ';

  @override
  String get s => 'ದ';

  @override
  String get save => 'ಉಳಿಸಿ';

  @override
  String get saveGoal => 'ಗುರಿ ಉಳಿಸಿ';

  @override
  String get searchSurahNumberArabic => 'ಸೂರಾ, ಸಂಖ್ಯೆ, ಅರೇಬಿಕ್ ಹುಡುಕಿ...';

  @override
  String get searchSurah => 'ಸೂರಾ ಹುಡುಕಿ...';

  @override
  String get selectLanguage => 'ಭಾಷೆ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get selectTheThemeYouLike => 'ನಿಮಗಿಷ್ಟದ ಥೀಮ್ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get selectYourBead => 'ನಿಮ್ಮ ಮಣಿ ಆಯ್ಕೆಮಾಡಿ';

  @override
  String get shop => 'ಅಂಗಡಿ';

  @override
  String get shopCustomization => 'ಅಂಗಡಿ ಮತ್ತು ಕಸ್ಟಮೈಸೇಶನ್';

  @override
  String get sound => 'ಶಬ್ದ';

  @override
  String get south => 'ದಕ್ಷಿಣ';

  @override
  String get southeast => 'ಆಗ್ನೇಯ';

  @override
  String get southwest => 'ನೈಋತ್ಯ';

  @override
  String get specialOccasionsAndMore => 'ವಿಶೇಷ ಸಂದರ್ಭಗಳು ಮತ್ತು ಇನ್ನಷ್ಟು';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'ಪ್ರೊಡಕ್ಷನ್ ಲಿಸ್ಟಿಂಗ್ ಸಿದ್ಧವಾದಾಗ ಸ್ಟೋರ್ ರೇಟಿಂಗ್ ಸಂಪರ್ಕಿಸಲಾಗುವುದು.';

  @override
  String get subhanallahiWaBihamdihi => 'ಸುಬ್ಹಾನಲ್ಲಾಹಿ ವ ಬಿಹಮ್ದಿಹಿ';

  @override
  String get subhanallahilAzim => 'ಸುಬ್ಹಾನಲ್ಲಾಹಿಲ್ ಅಝೀಮ್';

  @override
  String get sunset => 'ಸೂರ್ಯಾಸ್ತ';

  @override
  String get supportQuranProOnTheStore =>
      'ಸ್ಟೋರ್‌ನಲ್ಲಿ ಕುರಾನ್ ಪ್ರೊಗೆ ಬೆಂಬಲ ನೀಡಿ';

  @override
  String get surah => 'ಸೂರಾ';

  @override
  String get tasbih => 'ತಸ್ಬೀಹ್';

  @override
  String get tasbihSettings => 'ತಸ್ಬೀಹ್ ಸೆಟ್ಟಿಂಗ್‌ಗಳು';

  @override
  String get tellUsWhatToImprove => 'ಏನನ್ನು ಸುಧಾರಿಸಬೇಕೆಂದು ತಿಳಿಸಿ';

  @override
  String get termsOfUse => 'ಬಳಕೆಯ ನಿಯಮಗಳು';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'ಕುರಾನ್ ಪ್ರೊ ಬಳಸಿದ್ದಕ್ಕೆ ಧನ್ಯವಾದಗಳು. ಪ್ರೊಡಕ್ಷನ್ ಸ್ಟೋರ್ ಲಿಸ್ಟಿಂಗ್ ಸಿದ್ಧವಾದಾಗ ಸ್ಟೋರ್ ರೇಟಿಂಗ್ ಸಂಪರ್ಕಿಸಲಾಗುವುದು.';

  @override
  String get thereIsNoDeityExceptAllah => 'ಅಲ್ಲಾಹನ ಹೊರತು ಆರಾಧ್ಯನಿಲ್ಲ';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'ಅಲ್ಲಾಹನಿಂದಲ್ಲದೆ ಯಾವುದೇ ಶಕ್ತಿಯೂ ಸಾಮರ್ಥ್ಯವೂ ಇಲ್ಲ';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ಜ್ಞಾಪನೆಗಳನ್ನು ಹೊಂದಿಸಲು ಮತ್ತು ನಿಮ್ಮ ಪ್ರಗತಿ ಗಮನಿಸಲು ಇದು ನಮಗೆ ಸಹಾಯ ಮಾಡುತ್ತದೆ.';

  @override
  String get tigerSEye => 'ಹುಲಿಗಣ್ಣು';

  @override
  String get today => 'ಇಂದು';

  @override
  String get total => 'ಒಟ್ಟು';

  @override
  String get totalHasanat => 'ಒಟ್ಟು ಹಸನಾತ್';

  @override
  String get trackProgress => 'ಪ್ರಗತಿ ಗಮನಿಸಿ';

  @override
  String get trackYourReadingAndAchievements =>
      'ನಿಮ್ಮ ಓದು ಮತ್ತು ಸಾಧನೆಗಳನ್ನು ಗಮನಿಸಿ.';

  @override
  String get tryAgain => 'ಮತ್ತೆ ಪ್ರಯತ್ನಿಸಿ';

  @override
  String get undo => 'ಹಿಂತೆಗೆದುಕೊಳ್ಳಿ';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'ಎಲ್ಲಾ ಆ್ಯಪ್ ಥೀಮ್‌ಗಳು ಮತ್ತು ಕಸ್ಟಮೈಸೇಶನ್‌ಗಳನ್ನು ಅನ್‌ಲಾಕ್ ಮಾಡಿ';

  @override
  String get usageGuidelines => 'ಬಳಕೆಯ ಮಾರ್ಗಸೂಚಿಗಳು';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'ವೈಯಕ್ತಿಕ ಆರಾಧನೆ, ಕಲಿಕೆ ಮತ್ತು ದೈನಂದಿನ ಇಸ್ಲಾಮಿಕ್ ಆಚರಣೆಗಳಿಗಾಗಿ ಕುರಾನ್ ಪ್ರೊ ಅನ್ನು ಗೌರವಪೂರ್ವಕವಾಗಿ ಬಳಸಿ.';

  @override
  String get viewAll => 'ಎಲ್ಲವನ್ನೂ ನೋಡಿ';

  @override
  String get w => 'ಪ';

  @override
  String get welcome => 'ಸ್ವಾಗತ';

  @override
  String get west => 'ಪಶ್ಚಿಮ';

  @override
  String get yaHayyuYaQayyum => 'ಯಾ ಹಯ್ಯು ಯಾ ಕಯ್ಯೂಮ್';

  @override
  String get youReAllSet => 'ಎಲ್ಲವೂ ಸಿದ್ಧ!';

  @override
  String get yourProgress => 'ನಿಮ್ಮ ಪ್ರಗತಿ';

  @override
  String get continueLabel => 'ಮುಂದುವರಿಸಿ';

  @override
  String get amethyst => 'ಅಮೆಥಿಸ್ಟ್';

  @override
  String get indonesian => 'ಇಂಡೋನೇಷಿಯನ್';

  @override
  String get turkish => 'ಟರ್ಕಿಶ್';

  @override
  String get vietnamese => 'ವಿಯೆಟ್ನಾಮೀಸ್';

  @override
  String get turquoise => 'ಟರ್ಕ್ವಾಯ್ಸ್';

  @override
  String get wood => 'ಮರ';

  @override
  String get left => 'left';

  @override
  String get stayInspiredOnYourHomeScreen =>
      'Stay inspired on your home screen.';

  @override
  String get settings => 'Settings';

  @override
  String get rounds => 'Rounds';

  @override
  String get prayerRemindersFullScreenAlarm =>
      'Prayer reminders and full-screen alarm';

  @override
  String get holyMessage => 'Daily Reminder';

  @override
  String get allSettingsInOnePlace => 'All app settings in one place';

  @override
  String get aboutQuranProDescription =>
      'Prayer times, Qibla, Quran reading and Tasbih in one daily companion.';

  @override
  String get feedbackDescription =>
      'Send feedback to support@quranpro.app. Your suggestions help improve Prayer, Quran, Qibla and Tasbih.';

  @override
  String get stopAudio => 'Stop audio';

  @override
  String get previousAyah => 'Previous ayah';

  @override
  String get nextAyah => 'Next ayah';

  @override
  String get reminderRing => 'Sound on';

  @override
  String get reminderVibrate => 'Vibrate only';

  @override
  String get reminderSilent => 'Off';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get unlimited => 'Unlimited';

  @override
  String get skip => 'Skip';

  @override
  String get productUnavailableFriendly =>
      'This item is not available right now. Please try again later.';

  @override
  String get restorePurchases => 'Restore purchases';

  @override
  String get calibratingCompass => 'Calibrating… move your phone in a figure 8';

  @override
  String get estimatedLocation => 'Estimated location';
}
