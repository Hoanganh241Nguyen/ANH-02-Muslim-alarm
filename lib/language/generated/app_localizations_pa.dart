// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get week => 'ਹਫ਼ਤਾ';

  @override
  String get month => 'ਮਹੀਨਾ';

  @override
  String get lifetime => 'ਹੁਣ ਤੱਕ';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'ਆਪਣੇ ਕੰਮ ਤੋਂ ਥੋੜ੍ਹਾ ਰੁਕੋ ਤੇ ਅੱਲਾਹ ਲਈ ਵਕਤ ਕੱਢੋ।';

  @override
  String get prayerAlarmDefaultName => 'ਨਮਾਜ਼';

  @override
  String productUnavailable(Object id) {
    return 'ਪ੍ਰੋਡਕਟ $id ਖ਼ਰੀਦ ਲਈ ਉਪਲਬਧ ਨਹੀਂ ਹੈ।';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId ਦੀ ਖ਼ਰੀਦ ਕਾਮਯਾਬ ਰਹੀ!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId ਦੀ ਖ਼ਰੀਦ ਬਹਾਲ ਹੋ ਗਈ!';
  }

  @override
  String daysCount(Object count) {
    return '$count ਦਿਨ';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ਅਗਲੀ ਨਮਾਜ਼: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'ਮੱਕਾ ਤੋਂ ਦੂਰੀ: $distance ਕਿ.ਮੀ.';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes ਮਿੰਟ ਬਾਅਦ ਯਾਦ ਕਰਾਓ';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName ਦੀ ਨਮਾਜ਼ ਦਾ ਵਕਤ ਹੋ ਗਿਆ ਹੈ';
  }

  @override
  String roundValue(Object round) {
    return 'ਰਾਊਂਡ: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language ਚੁਣੀ ਗਈ';
  }

  @override
  String juzNumber(Object juz) {
    return 'ਜੁਜ਼ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'ਸਫ਼ਾ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ਹਿਜ਼ਬ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ਆਇਤ $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ਆਇਤਾਂ';
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
    return 'ਲੈਵਲ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(ਸੂਰਾ ਅਲ-ਬਕਰਾ 2:238)';

  @override
  String get text1juz => '1 ਜੁਜ਼';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 ਸਫ਼ੇ';

  @override
  String get text100dhikr => '100 ਜ਼ਿਕਰ';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 ਸਫ਼ੇ';

  @override
  String get text28cclearsky => '28°C - ਸਾਫ਼ ਅਸਮਾਨ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 ਸਫ਼ੇ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'ਜਾਣ-ਪਛਾਣ';

  @override
  String get aboutQuranPro => 'Quran Pro ਬਾਰੇ';

  @override
  String get activity => 'ਸਰਗਰਮੀ';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'ਇਸ਼ਤਿਹਾਰ ਲੋਡ ਹੋ ਰਿਹਾ ਹੈ। ਥੋੜ੍ਹੀ ਦੇਰ ਬਾਅਦ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get addCustomDhikr => 'ਆਪਣਾ ਜ਼ਿਕਰ ਜੋੜੋ';

  @override
  String get addCustomDhikr2 => 'ਆਪਣਾ ਜ਼ਿਕਰ ਜੋੜੋ';

  @override
  String get addDhikr => 'ਜ਼ਿਕਰ ਜੋੜੋ';

  @override
  String get adjustPosition => 'ਪੁਜ਼ੀਸ਼ਨ ਠੀਕ ਕਰੋ';

  @override
  String get afternoon => 'ਦੁਪਹਿਰ ਬਾਅਦ';

  @override
  String get alMasjidAlHaram => 'ਅਲ-ਮਸਜਿਦ ਅਲ-ਹਰਾਮ';

  @override
  String get alhamdulillahiRabbilAlamin => 'ਅਲਹਮਦੁਲਿੱਲਾਹਿ ਰੱਬਿਲ ਆਲਮੀਨ';

  @override
  String get alignedToQibla => 'ਕਿਬਲਾ ਵੱਲ ਸਿੱਧਾ';

  @override
  String get allPraiseIsDueToAllah => 'ਸਾਰੀ ਤਾਰੀਫ਼ ਅੱਲਾਹ ਲਈ ਹੈ';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'ਸਾਰੇ ਪ੍ਰੀਮੀਅਮ ਫ਼ੀਚਰ ਰਿਆਇਤੀ ਕੀਮਤ ’ਤੇ';

  @override
  String get allInOneQuranApp => 'ਆਲ-ਇਨ-ਵਨ ਕੁਰਆਨ ਐਪ';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'ਅੱਲਾਹ ਮੇਰੇ ਲਈ ਕਾਫ਼ੀ ਹੈ; ਉਸ ਤੋਂ ਬਿਨਾਂ ਕੋਈ ਮਾਬੂਦ ਨਹੀਂ';

  @override
  String get allahIsTheGreatest => 'ਅੱਲਾਹ ਸਭ ਤੋਂ ਵੱਡਾ ਹੈ';

  @override
  String get allahuAkbar => 'ਅੱਲਾਹੁ ਅਕਬਰ';

  @override
  String get allahummaSalliAlaMuhammad => 'ਅੱਲਾਹੁੰਮਾ ਸੱਲਿ ਅਲਾ ਮੁਹੰਮਦ';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'ਲੋਕੇਸ਼ਨ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ ਜਾਂ ਬਦਲਵਾਂ ਸ਼ਡਿਊਲ ਵਰਤਣ ਲਈ ਮੁੜ ਕੋਸ਼ਿਸ਼ ’ਤੇ ਟੈਪ ਕਰੋ।';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'ਨਮਾਜ਼ ਦੇ ਵਕਤ ਤੇ ਰੋਜ਼ਾਨਾ ਯਾਦ-ਦਹਾਨੀਆਂ ਲੈਣ ਲਈ ਨੋਟੀਫ਼ਿਕੇਸ਼ਨ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ।';

  @override
  String get allowTheAppToRunInTheBackground =>
      'ਐਪ ਨੂੰ ਬੈਕਗਰਾਊਂਡ ਵਿੱਚ ਚੱਲਣ ਦਿਓ';

  @override
  String get app => 'ਐਪ';

  @override
  String get arabic => 'ਅਰਬੀ';

  @override
  String get asr => 'ਅਸਰ';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'ਅਊਜ਼ੁ ਬਿੱਲਾਹਿ ਮਿਨਸ਼-ਸ਼ੈਤਾਨਿਰ ਰਜੀਮ';

  @override
  String get avg => 'ਔਸਤ';

  @override
  String get ayah => 'ਆਇਤ';

  @override
  String get batteryOptimization => 'ਬੈਟਰੀ ਓਪਟੀਮਾਈਜ਼ੇਸ਼ਨ';

  @override
  String get beautifulWidgets => 'ਖ਼ੂਬਸੂਰਤ ਵਿਜੇਟ';

  @override
  String get bestValue => 'ਸਭ ਤੋਂ ਵਧੀਆ ਸੌਦਾ';

  @override
  String get blackOnyx => 'ਕਾਲਾ ਓਨਿਕਸ';

  @override
  String get bookmarks => 'ਬੁੱਕਮਾਰਕ';

  @override
  String get brightIvoryInterface => 'ਚਮਕੀਲਾ ਆਈਵਰੀ ਇੰਟਰਫ਼ੇਸ';

  @override
  String get calculatingDistance => 'ਦੂਰੀ ਦਾ ਹਿਸਾਬ ਲਾਇਆ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get calibrateYourDirection => 'ਆਪਣੀ ਦਿਸ਼ਾ ਕੈਲੀਬ੍ਰੇਟ ਕਰੋ';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get change => 'ਬਦਲੋ';

  @override
  String get changeTasbihMode => 'ਤਸਬੀਹ ਮੋਡ ਬਦਲਣਾ ਹੈ?';

  @override
  String get chooseDhikr => 'ਜ਼ਿਕਰ ਚੁਣੋ';

  @override
  String get chooseDisplayLanguage => 'ਡਿਸਪਲੇ ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get chooseTheme => 'ਥੀਮ ਚੁਣੋ';

  @override
  String get chooseYourPreferredLanguage => 'ਆਪਣੀ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get clickOrSwipeToCount => 'ਗਿਣਨ ਲਈ ਟੈਪ ਜਾਂ ਸਵਾਈਪ ਕਰੋ';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get closeCustomGoal => 'ਕਸਟਮ ਟੀਚਾ ਬੰਦ ਕਰੋ';

  @override
  String get completeAtLeast33Dhikr => 'ਘੱਟੋ-ਘੱਟ 33 ਜ਼ਿਕਰ ਪੂਰੇ ਕਰੋ';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'ਆਪਣੇ ਦਿਲ ਨੂੰ ਪਾਕ ਕੁਰਆਨ ਨਾਲ ਜੋੜੋ।';

  @override
  String get continueReading => 'ਪੜ੍ਹਨਾ ਜਾਰੀ ਰੱਖੋ';

  @override
  String get countsPerRound => 'ਹਰ ਰਾਊਂਡ ਵਿੱਚ ਗਿਣਤੀ';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'ਬਾਕਮਾਲ ਕਾਰੀਗਰੀ ਵਾਲੇ ਰੂਹਾਨੀ ਨਗੀਨਿਆਂ ਨਾਲ ਆਪਣਾ ਸੰਗ੍ਰਹਿ ਸਜਾਓ।';

  @override
  String get current => 'ਮੌਜੂਦਾ';

  @override
  String get current2 => 'ਮੌਜੂਦਾ';

  @override
  String get currentLocationToMecca => 'ਮੌਜੂਦਾ ਥਾਂ ਤੋਂ ਮੱਕਾ ਤੱਕ';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'ਨਵੇਂ ਮੋਡ ਲਈ ਮੌਜੂਦਾ ਤਰੱਕੀ ਰੀਸੈੱਟ ਹੋ ਜਾਵੇਗੀ।';

  @override
  String get currentStreak => 'ਮੌਜੂਦਾ ਸਿਲਸਿਲਾ';

  @override
  String get custom => 'ਕਸਟਮ';

  @override
  String get customDhikr => 'ਆਪਣਾ ਜ਼ਿਕਰ';

  @override
  String get customGoal => 'ਕਸਟਮ ਟੀਚਾ';

  @override
  String get customPrayerSounds => 'ਨਮਾਜ਼ ਦੀਆਂ ਕਸਟਮ ਆਵਾਜ਼ਾਂ';

  @override
  String get dailyGoal => 'ਰੋਜ਼ਾਨਾ ਟੀਚਾ';

  @override
  String get dailyQuests => 'ਰੋਜ਼ਾਨਾ ਮਿਸ਼ਨ';

  @override
  String get dailyQuranReminder => 'ਰੋਜ਼ਾਨਾ ਕੁਰਆਨ ਯਾਦ-ਦਹਾਨੀ';

  @override
  String get dailyReminders => 'ਰੋਜ਼ਾਨਾ ਯਾਦ-ਦਹਾਨੀਆਂ';

  @override
  String get dailyTasbih => 'ਰੋਜ਼ਾਨਾ ਤਸਬੀਹ';

  @override
  String get dark => 'ਡਾਰਕ';

  @override
  String get dawn => 'ਸਹਰ';

  @override
  String get debug => 'ਡੀਬੱਗ';

  @override
  String get dhikr => 'ਜ਼ਿਕਰ';

  @override
  String get dhikrActivity => 'ਜ਼ਿਕਰ ਸਰਗਰਮੀ';

  @override
  String get dhuAlHijjah => 'ਜ਼ਿਲਹੱਜ';

  @override
  String get dhuAlQadah => 'ਜ਼ਿਲਕਾਦ';

  @override
  String get dhuhr => 'ਜ਼ੁਹਰ';

  @override
  String get direction => 'ਦਿਸ਼ਾ';

  @override
  String get disableBatteryOptimization => 'ਬੈਟਰੀ ਓਪਟੀਮਾਈਜ਼ੇਸ਼ਨ ਬੰਦ ਕਰੋ';

  @override
  String get disableOptimization => 'ਓਪਟੀਮਾਈਜ਼ੇਸ਼ਨ ਬੰਦ ਕਰੋ';

  @override
  String get distance => 'ਦੂਰੀ';

  @override
  String get e => 'ਪੂ';

  @override
  String get eGHasbunallah => 'ਜਿਵੇਂ ਹਸਬੁਨੱਲਾਹ';

  @override
  String get east => 'ਪੂਰਬ';

  @override
  String get enableAutoStart => 'ਆਟੋ-ਸਟਾਰਟ ਚਾਲੂ ਕਰੋ';

  @override
  String get enableNotifications => 'ਨੋਟੀਫ਼ਿਕੇਸ਼ਨ ਚਾਲੂ ਕਰੋ';

  @override
  String get enableReminders => 'ਯਾਦ-ਦਹਾਨੀਆਂ ਚਾਲੂ ਕਰੋ';

  @override
  String get english => 'ਅੰਗਰੇਜ਼ੀ';

  @override
  String get enterYourName => 'ਆਪਣਾ ਨਾਂ ਲਿਖੋ';

  @override
  String get equipped => 'ਵਰਤੋਂ ਵਿੱਚ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'ਬਿਹਤਰ ਕੁਰਆਨ ਤਜਰਬੇ ਲਈ ਹਰ ਜ਼ਰੂਰੀ ਚੀਜ਼।';

  @override
  String get fajr => 'ਫ਼ਜਰ';

  @override
  String get feedback => 'ਫ਼ੀਡਬੈਕ';

  @override
  String get first => 'ਪਹਿਲਾ';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ਸਭ ਤੋਂ ਸਹੀ ਨਤੀਜਿਆਂ ਲਈ ਫ਼ੋਨ ਨੂੰ ਪੱਧਰਾ ਤੇ ਚੁੰਬਕੀ ਚੀਜ਼ਾਂ ਤੋਂ ਦੂਰ ਰੱਖੋ।';

  @override
  String get free => 'ਮੁਫ਼ਤ';

  @override
  String get fullBundle => 'ਪੂਰਾ ਬੰਡਲ';

  @override
  String get getAnAdFreeExperienceForever =>
      'ਹਮੇਸ਼ਾ ਲਈ ਇਸ਼ਤਿਹਾਰ-ਮੁਕਤ ਤਜਰਬਾ ਪਾਓ';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'ਪੜ੍ਹਨ ਦੀ ਯਾਦ ਪਾਓ ਤੇ ਪਾਬੰਦੀ ਬਣਾਈ ਰੱਖੋ।';

  @override
  String get getStarted => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get gloryAndPraiseBeToAllah => 'ਅੱਲਾਹ ਪਾਕ ਹੈ ਤੇ ਸਾਰੀ ਤਾਰੀਫ਼ ਉਸੇ ਲਈ ਹੈ';

  @override
  String get gloryBeToAllah => 'ਅੱਲਾਹ ਪਾਕ ਹੈ';

  @override
  String get gloryBeToAllahTheMagnificent => 'ਅੱਲਾਹ ਪਾਕ ਹੈ, ਜੋ ਅਜ਼ਮਤ ਵਾਲਾ ਹੈ';

  @override
  String get goToHome => 'ਹੋਮ ’ਤੇ ਜਾਓ';

  @override
  String get goldenEngraved => 'ਸੁਨਹਿਰੀ ਨੱਕਾਸ਼ੀ';

  @override
  String get greenJade => 'ਹਰਾ ਜੇਡ';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ਹਨੋਈ, ਵੀਅਤਨਾਮ';

  @override
  String get haptic => 'ਵਾਈਬ੍ਰੇਸ਼ਨ';

  @override
  String get hasanatHub => 'ਹਸਨਾਤ ਕੇਂਦਰ';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ਹਸਬਿਯੱਲਾਹੁ ਲਾ ਇਲਾਹਾ ਇੱਲਾ ਹੁਵਾ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ਹੋਮ';

  @override
  String get howYourDataIsHandled => 'ਤੁਹਾਡਾ ਡਾਟਾ ਕਿਵੇਂ ਵਰਤਿਆ ਜਾਂਦਾ ਹੈ';

  @override
  String get iSeekForgivenessFromAllah => 'ਮੈਂ ਅੱਲਾਹ ਤੋਂ ਮਗ਼ਫ਼ਿਰਤ ਮੰਗਦਾ ਹਾਂ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ਮੈਂ ਮਰਦੂਦ ਸ਼ੈਤਾਨ ਤੋਂ ਅੱਲਾਹ ਦੀ ਪਨਾਹ ਮੰਗਦਾ ਹਾਂ';

  @override
  String get immediateAlerts => 'ਫ਼ੌਰੀ ਅਲਰਟ';

  @override
  String get inTheNameOfAllah => 'ਅੱਲਾਹ ਦੇ ਨਾਂ ਨਾਲ';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ਬੇਸ਼ੱਕ ਅਸੀਂ ਅੱਲਾਹ ਦੇ ਹਾਂ ਤੇ ਉਸੇ ਵੱਲ ਪਰਤਣਾ ਹੈ';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'ਇੰਨਾ ਲਿੱਲਾਹਿ ਵ ਇੰਨਾ ਇਲੈਹਿ ਰਾਜਿਊਨ';

  @override
  String get isha => 'ਇਸ਼ਾ';

  @override
  String get jumadaAlAwwal => 'ਜਮਾਦੀ-ਉਲ-ਅੱਵਲ';

  @override
  String get jumadaAlThani => 'ਜਮਾਦੀ-ਉਸ-ਸਾਨੀ';

  @override
  String get juz => 'ਜੁਜ਼';

  @override
  String get juz2 => 'ਜੁਜ਼';

  @override
  String get keepAdhanAlarmsReliable => 'ਅਜ਼ਾਨ ਅਲਾਰਮ ਭਰੋਸੇਯੋਗ ਰੱਖੋ';

  @override
  String get keepItUpYouReDoingGreat =>
      'ਇਸੇ ਤਰ੍ਹਾਂ ਜਾਰੀ ਰੱਖੋ! ਤੁਸੀਂ ਬਹੁਤ ਵਧੀਆ ਕਰ ਰਹੇ ਹੋ।';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'ਐਪ ਬੰਦ ਹੋਣ ’ਤੇ ਵੀ ਅਜ਼ਾਨ ਭਰੋਸੇਯੋਗ ਰੱਖੋ।';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'ਲਾ ਹੌਲਾ ਵਲਾ ਕੁੱਵਤਾ ਇੱਲਾ ਬਿੱਲਾਹ';

  @override
  String get laIlahaIllallah => 'ਲਾ ਇਲਾਹਾ ਇੱਲੱਲਾਹ';

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get lapisLazuli => 'ਲਾਜਵਰਦ';

  @override
  String get last7Days => 'ਪਿਛਲੇ 7 ਦਿਨ';

  @override
  String get later => 'ਬਾਅਦ ਵਿੱਚ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'ਆਓ ਕੁਰਆਨ ਨਾਲ ਤੁਹਾਡਾ ਖ਼ੂਬਸੂਰਤ ਸਫ਼ਰ ਸ਼ੁਰੂ ਕਰੀਏ।';

  @override
  String get letSPersonalizeYourExperience =>
      'ਆਓ ਤੁਹਾਡਾ ਤਜਰਬਾ\nਤੁਹਾਡੇ ਮੁਤਾਬਕ ਬਣਾਈਏ';

  @override
  String get light => 'ਲਾਈਟ';

  @override
  String get lightMode => 'ਲਾਈਟ ਮੋਡ';

  @override
  String get listenToOrReadAnyAyahToday => 'ਅੱਜ ਕੋਈ ਵੀ ਆਇਤ ਸੁਣੋ ਜਾਂ ਪੜ੍ਹੋ';

  @override
  String get locating => 'ਥਾਂ ਲੱਭੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String get location => 'ਲੋਕੇਸ਼ਨ';

  @override
  String get locationPermissionsAreDenied => 'ਲੋਕੇਸ਼ਨ ਦੀ ਇਜਾਜ਼ਤ ਨਹੀਂ ਦਿੱਤੀ ਗਈ';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'ਲੋਕੇਸ਼ਨ ਦੀ ਇਜਾਜ਼ਤ ਹਮੇਸ਼ਾ ਲਈ ਬੰਦ ਕਰ ਦਿੱਤੀ ਗਈ ਹੈ।';

  @override
  String get locationServicesAreDisabled => 'ਲੋਕੇਸ਼ਨ ਸੇਵਾਵਾਂ ਬੰਦ ਹਨ।';

  @override
  String get longestStreak => 'ਸਭ ਤੋਂ ਲੰਮਾ ਸਿਲਸਿਲਾ';

  @override
  String get maghrib => 'ਮਗ਼ਰਿਬ';

  @override
  String get maybeLater => 'ਫਿਰ ਕਦੇ';

  @override
  String get meccaSaudiArabia => 'ਮੱਕਾ, ਸਾਊਦੀ ਅਰਬ';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'ਐ ਮੇਰੇ ਰੱਬ, ਮਾਫ਼ ਫ਼ਰਮਾ ਤੇ ਰਹਿਮ ਫ਼ਰਮਾ';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'ਐ ਮੇਰੇ ਰੱਬ, ਤੂੰ ਜੋ ਭਲਾਈ ਨਾਜ਼ਿਲ ਕਰੇ ਮੈਂ ਉਸ ਦਾ ਮੁਹਤਾਜ ਹਾਂ';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'ਐ ਮੇਰੇ ਰੱਬ, ਮੇਰੇ ਇਲਮ ਵਿੱਚ ਵਾਧਾ ਫ਼ਰਮਾ';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'ਐ ਮੇਰੇ ਰੱਬ, ਆਸਾਨ ਫ਼ਰਮਾ ਤੇ ਮੁਸ਼ਕਲ ਨਾ ਬਣਾ';

  @override
  String get n => 'ਉ';

  @override
  String get nameOptional => 'ਨਾਂ (ਚੋਣਵਾਂ)';

  @override
  String get next => 'ਅੱਗੇ';

  @override
  String get nextDhikr => 'ਅਗਲਾ ਜ਼ਿਕਰ';

  @override
  String get nextPrayer => 'ਅਗਲੀ ਨਮਾਜ਼';

  @override
  String get night => 'ਰਾਤ';

  @override
  String get nightEmeraldInterface => 'ਗੂੜ੍ਹਾ ਐਮਰਾਲਡ ਇੰਟਰਫ਼ੇਸ';

  @override
  String get noBookmarksYet => 'ਹਾਲੇ ਕੋਈ ਬੁੱਕਮਾਰਕ ਨਹੀਂ';

  @override
  String get noon => 'ਦੁਪਹਿਰ';

  @override
  String get north => 'ਉੱਤਰ';

  @override
  String get northeast => 'ਉੱਤਰ-ਪੂਰਬ';

  @override
  String get northwest => 'ਉੱਤਰ-ਪੱਛਮ';

  @override
  String get notificationsAlarm => 'ਨੋਟੀਫ਼ਿਕੇਸ਼ਨ ਤੇ ਅਲਾਰਮ';

  @override
  String get notificationsForPrayerTimes => 'ਨਮਾਜ਼ ਦੇ ਵਕਤਾਂ ਦੇ ਨੋਟੀਫ਼ਿਕੇਸ਼ਨ';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'ਐ ਅੱਲਾਹ, ਮੁਹੰਮਦ ’ਤੇ ਦਰੂਦ ਭੇਜ';

  @override
  String get oEverLivingOSustainer =>
      'ਐ ਸਦਾ ਜ਼ਿੰਦਾ ਰਹਿਣ ਵਾਲੇ, ਐ ਕਾਇਮ ਰੱਖਣ ਵਾਲੇ';

  @override
  String get openAutoStart => 'ਆਟੋ-ਸਟਾਰਟ ਖੋਲ੍ਹੋ';

  @override
  String get optimizeAdhanPerformance => 'ਅਜ਼ਾਨ ਦੀ ਕਾਰਗੁਜ਼ਾਰੀ ਬਿਹਤਰ ਕਰੋ';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'ਐ ਸਾਡੇ ਰੱਬ, ਸਾਨੂੰ ਦੁਨੀਆ ਵਿੱਚ ਭਲਾਈ ਅਤਾ ਫ਼ਰਮਾ';

  @override
  String get page => 'ਸਫ਼ਾ';

  @override
  String get pearl => 'ਮੋਤੀ';

  @override
  String get personalizeYourAdhanNotifications =>
      'ਅਜ਼ਾਨ ਦੇ ਨੋਟੀਫ਼ਿਕੇਸ਼ਨ ਆਪਣੇ ਮੁਤਾਬਕ ਬਣਾਓ';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'ਸਾਰੀ ਤਾਰੀਫ਼ ਅੱਲਾਹ ਲਈ ਹੈ, ਜੋ ਸਾਰੇ ਜਹਾਨਾਂ ਦਾ ਰੱਬ ਹੈ';

  @override
  String get prayerAlarms => 'ਨਮਾਜ਼ ਦੇ ਅਲਾਰਮ';

  @override
  String get prayerSchedule => 'ਨਮਾਜ਼ ਦਾ ਸ਼ਡਿਊਲ';

  @override
  String get prayerTimeNotifications => 'ਨਮਾਜ਼ ਦੇ ਵਕਤ ਦੇ ਨੋਟੀਫ਼ਿਕੇਸ਼ਨ';

  @override
  String get prayerTimesAreLoading => 'ਨਮਾਜ਼ ਦੇ ਵਕਤ ਲੋਡ ਹੋ ਰਹੇ ਹਨ';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'ਨਮਾਜ਼ ਦੇ ਵਕਤ, ਕਿਬਲਾ, ਕੁਰਆਨ ਦੀ ਤਿਲਾਵਤ ਤੇ ਤਸਬੀਹ — ਸਭ ਇੱਕੋ ਰੋਜ਼ਾਨਾ ਸਾਥੀ ਵਿੱਚ।';

  @override
  String get prayerQuranQibla => 'ਨਮਾਜ਼ • ਕੁਰਆਨ • ਕਿਬਲਾ';

  @override
  String get premiumThemes => 'ਪ੍ਰੀਮੀਅਮ ਥੀਮ';

  @override
  String get preparingYourSpiritualJourney =>
      'ਤੁਹਾਡਾ ਰੂਹਾਨੀ ਸਫ਼ਰ ਤਿਆਰ ਕੀਤਾ ਜਾ ਰਿਹਾ ਹੈ...';

  @override
  String get previousDhikr => 'ਪਿਛਲਾ ਜ਼ਿਕਰ';

  @override
  String get privacyPolicy => 'ਪ੍ਰਾਈਵੇਸੀ ਪਾਲਿਸੀ';

  @override
  String get qibla => 'ਕਿਬਲਾ';

  @override
  String get qiblaFinder => 'ਕਿਬਲਾ ਫ਼ਾਈਂਡਰ';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ਕੁਰਆਨ';

  @override
  String get quranPlayback => 'ਕੁਰਆਨ ਪਲੇਬੈਕ';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro ਨਮਾਜ਼ ਦੇ ਵਕਤ, ਕਿਬਲਾ, ਕੁਰਆਨ ਦੀ ਤਿਲਾਵਤ ਤੇ ਤਸਬੀਹ ਨੂੰ ਇੱਕ ਸੌਖੇ ਰੋਜ਼ਾਨਾ ਸਾਥੀ ਵਿੱਚ ਲਿਆਉਂਦਾ ਹੈ।';

  @override
  String get quranProPreferences => 'Quran Pro ਦੀਆਂ ਸੈਟਿੰਗਾਂ';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro ਓਨਬੋਰਡਿੰਗ ਤੇ ਤਰੱਕੀ ਨਾਲ ਜੁੜੀਆਂ ਸੈਟਿੰਗਾਂ ਇਸੇ ਡਿਵਾਈਸ ’ਤੇ ਸੰਭਾਲਦਾ ਹੈ। ਸਥਿਰਤਾ ਤੇ ਕੁਆਲਿਟੀ ਬਿਹਤਰ ਕਰਨ ਲਈ ਐਨਾਲਿਟਿਕਸ ਵਰਤੇ ਜਾ ਸਕਦੇ ਹਨ।';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro ਤੁਹਾਡੀ ਤਸਬੀਹ ਦੀ ਤਰੱਕੀ ਇਸੇ ਡਿਵਾਈਸ ’ਤੇ ਸੰਭਾਲਦਾ ਹੈ। ਐਪ ਦੀ ਸਥਿਰਤਾ ਤੇ ਕੁਆਲਿਟੀ ਬਿਹਤਰ ਕਰਨ ਲਈ ਐਨਾਲਿਟਿਕਸ ਵਰਤੇ ਜਾ ਸਕਦੇ ਹਨ।';

  @override
  String get quranRecitation => 'ਕੁਰਆਨ ਦੀ ਤਿਲਾਵਤ';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ਰੱਬਨਾ ਆਤਿਨਾ ਫ਼ਿਦ-ਦੁਨਿਆ ਹਸਨਾ';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ਰੱਬਿ ਇੰਨੀ ਲਿਮਾ ਅੰਜ਼ਲਤਾ ਇਲੱਯਾ ਮਿਨ ਖ਼ੈਰਿਨ ਫ਼ਕੀਰ';

  @override
  String get rabbiYassirWaLaTuassir => 'ਰੱਬਿ ਯੱਸਿਰ ਵਲਾ ਤੁਅੱਸਿਰ';

  @override
  String get rabbiZidniIlma => 'ਰੱਬਿ ਜ਼ਿਦਨੀ ਇਲਮਾ';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ਰੱਬਿਗ਼ਫ਼ਿਰ ਵਰਹਮ ਵ ਅੰਤਾ ਖ਼ੈਰੁਰ ਰਾਹਿਮੀਨ';

  @override
  String get rabiAlAwwal => 'ਰਬੀਉਲ ਅੱਵਲ';

  @override
  String get rabiAlThani => 'ਰਬੀਉਸ ਸਾਨੀ';

  @override
  String get rateApp => 'ਐਪ ਨੂੰ ਰੇਟਿੰਗ ਦਿਓ';

  @override
  String get rateQuranPro => 'Quran Pro ਨੂੰ ਰੇਟਿੰਗ ਦਿਓ';

  @override
  String get readListen => 'ਪੜ੍ਹੋ ਤੇ ਸੁਣੋ';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'ਖ਼ੂਬਸੂਰਤ ਤਿਲਾਵਤ ਨਾਲ ਕੁਰਆਨ ਪੜ੍ਹੋ।';

  @override
  String get recent => 'ਹਾਲੀਆ';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo ਤੇ Huawei ਲਈ ਸਿਫ਼ਾਰਸ਼ੀ';

  @override
  String get redCarnelian => 'ਲਾਲ ਅਕੀਕ';

  @override
  String get remindMeAt => 'ਇਸ ਵਕਤ ਯਾਦ ਕਰਾਓ';

  @override
  String get removeAds => 'ਇਸ਼ਤਿਹਾਰ ਹਟਾਓ';

  @override
  String get requestingLocationPermission =>
      'ਲੋਕੇਸ਼ਨ ਦੀ ਇਜਾਜ਼ਤ ਮੰਗੀ ਜਾ ਰਹੀ ਹੈ...';

  @override
  String get reset => 'ਰੀਸੈੱਟ';

  @override
  String get retry => 'ਮੁੜ ਕੋਸ਼ਿਸ਼';

  @override
  String get returnToCompass => 'ਕੰਪਾਸ ’ਤੇ ਵਾਪਸ ਜਾਓ';

  @override
  String get s => 'ਦ';

  @override
  String get save => 'ਸੰਭਾਲੋ';

  @override
  String get saveGoal => 'ਟੀਚਾ ਸੰਭਾਲੋ';

  @override
  String get searchSurahNumberArabic => 'ਸੂਰਾ, ਨੰਬਰ, ਅਰਬੀ ਲੱਭੋ...';

  @override
  String get searchSurah => 'ਸੂਰਾ ਲੱਭੋ...';

  @override
  String get selectLanguage => 'ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get selectTheThemeYouLike => 'ਆਪਣੀ ਪਸੰਦ ਦੀ ਥੀਮ ਚੁਣੋ';

  @override
  String get selectYourBead => 'ਆਪਣਾ ਦਾਣਾ ਚੁਣੋ';

  @override
  String get shop => 'ਦੁਕਾਨ';

  @override
  String get shopCustomization => 'ਦੁਕਾਨ ਤੇ ਕਸਟਮਾਈਜ਼ੇਸ਼ਨ';

  @override
  String get sound => 'ਆਵਾਜ਼';

  @override
  String get south => 'ਦੱਖਣ';

  @override
  String get southeast => 'ਦੱਖਣ-ਪੂਰਬ';

  @override
  String get southwest => 'ਦੱਖਣ-ਪੱਛਮ';

  @override
  String get specialOccasionsAndMore => 'ਖ਼ਾਸ ਮੌਕੇ ਤੇ ਹੋਰ ਬਹੁਤ ਕੁਝ';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'ਪ੍ਰੋਡਕਸ਼ਨ ਲਿਸਟਿੰਗ ਤਿਆਰ ਹੋਣ ’ਤੇ ਸਟੋਰ ਰੇਟਿੰਗ ਜੋੜ ਦਿੱਤੀ ਜਾਵੇਗੀ।';

  @override
  String get subhanallahiWaBihamdihi => 'ਸੁਬਹਾਨੱਲਾਹਿ ਵ ਬਿਹਮਦਿਹੀ';

  @override
  String get subhanallahilAzim => 'ਸੁਬਹਾਨੱਲਾਹਿਲ ਅਜ਼ੀਮ';

  @override
  String get sunset => 'ਗ਼ੁਰੂਬ';

  @override
  String get supportQuranProOnTheStore => 'ਸਟੋਰ ’ਤੇ Quran Pro ਦਾ ਸਾਥ ਦਿਓ';

  @override
  String get surah => 'ਸੂਰਾ';

  @override
  String get tasbih => 'ਤਸਬੀਹ';

  @override
  String get tasbihSettings => 'ਤਸਬੀਹ ਸੈਟਿੰਗਾਂ';

  @override
  String get tellUsWhatToImprove => 'ਦੱਸੋ ਕੀ ਬਿਹਤਰ ਕਰੀਏ';

  @override
  String get termsOfUse => 'ਵਰਤੋਂ ਦੀਆਂ ਸ਼ਰਤਾਂ';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro ਵਰਤਣ ਲਈ ਸ਼ੁਕਰੀਆ। ਪ੍ਰੋਡਕਸ਼ਨ ਸਟੋਰ ਲਿਸਟਿੰਗ ਤਿਆਰ ਹੋਣ ’ਤੇ ਸਟੋਰ ਰੇਟਿੰਗ ਜੋੜ ਦਿੱਤੀ ਜਾਵੇਗੀ।';

  @override
  String get thereIsNoDeityExceptAllah => 'ਅੱਲਾਹ ਤੋਂ ਬਿਨਾਂ ਕੋਈ ਮਾਬੂਦ ਨਹੀਂ';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'ਅੱਲਾਹ ਤੋਂ ਬਿਨਾਂ ਨਾ ਕੋਈ ਜ਼ੋਰ ਹੈ ਨਾ ਤਾਕਤ';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ਇਸ ਨਾਲ ਅਸੀਂ ਯਾਦ-ਦਹਾਨੀਆਂ ਤੁਹਾਡੇ ਮੁਤਾਬਕ ਬਣਾਉਂਦੇ ਹਾਂ ਤੇ ਤੁਹਾਡੀ ਤਰੱਕੀ ਵੇਖਦੇ ਹਾਂ।';

  @override
  String get tigerSEye => 'ਬਾਘ ਦੀ ਅੱਖ';

  @override
  String get today => 'ਅੱਜ';

  @override
  String get total => 'ਕੁੱਲ';

  @override
  String get totalHasanat => 'ਕੁੱਲ ਹਸਨਾਤ';

  @override
  String get trackProgress => 'ਤਰੱਕੀ ਵੇਖੋ';

  @override
  String get trackYourReadingAndAchievements =>
      'ਆਪਣੀ ਤਿਲਾਵਤ ਤੇ ਪ੍ਰਾਪਤੀਆਂ ਵੇਖੋ।';

  @override
  String get tryAgain => 'ਮੁੜ ਕੋਸ਼ਿਸ਼ ਕਰੋ';

  @override
  String get undo => 'ਵਾਪਸ ਲਓ';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'ਐਪ ਦੀਆਂ ਸਾਰੀਆਂ ਥੀਮਾਂ ਤੇ ਕਸਟਮਾਈਜ਼ੇਸ਼ਨ ਅਨਲੌਕ ਕਰੋ';

  @override
  String get usageGuidelines => 'ਵਰਤੋਂ ਦੀਆਂ ਹਦਾਇਤਾਂ';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro ਨੂੰ ਅਦਬ ਨਾਲ ਨਿੱਜੀ ਇਬਾਦਤ, ਸਿੱਖਣ ਤੇ ਰੋਜ਼ਾਨਾ ਇਸਲਾਮੀ ਅਮਲ ਲਈ ਵਰਤੋ।';

  @override
  String get viewAll => 'ਸਭ ਵੇਖੋ';

  @override
  String get w => 'ਪ';

  @override
  String get welcome => 'ਜੀ ਆਇਆਂ ਨੂੰ';

  @override
  String get west => 'ਪੱਛਮ';

  @override
  String get yaHayyuYaQayyum => 'ਯਾ ਹੱਯੁ ਯਾ ਕੱਯੂਮ';

  @override
  String get youReAllSet => 'ਸਭ ਤਿਆਰ ਹੈ!';

  @override
  String get yourProgress => 'ਤੁਹਾਡੀ ਤਰੱਕੀ';

  @override
  String get continueLabel => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get amethyst => 'ਐਮਥਿਸਟ';

  @override
  String get indonesian => 'ਇੰਡੋਨੇਸ਼ੀਆਈ';

  @override
  String get turkish => 'ਤੁਰਕੀ';

  @override
  String get vietnamese => 'ਵੀਅਤਨਾਮੀ';

  @override
  String get turquoise => 'ਫ਼ਿਰੋਜ਼ਾ';

  @override
  String get wood => 'ਲੱਕੜ';

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
