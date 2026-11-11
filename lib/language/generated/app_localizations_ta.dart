// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Tamil (`ta`).
class AppLocalizationsTa extends AppLocalizations {
  AppLocalizationsTa([String locale = 'ta']) : super(locale);

  @override
  String get week => 'வாரம்';

  @override
  String get month => 'மாதம்';

  @override
  String get lifetime => 'ஒட்டுமொத்தம்';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'உங்கள் வேலையிலிருந்து சிறிது இடைவெளி எடுத்து அல்லாஹ்வுக்காக நேரம் ஒதுக்குங்கள்.';

  @override
  String get prayerAlarmDefaultName => 'தொழுகை';

  @override
  String productUnavailable(Object id) {
    return '$id தயாரிப்பு வாங்குவதற்குக் கிடைக்கவில்லை.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId வெற்றிகரமாக வாங்கப்பட்டது!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId கொள்முதல் மீட்டமைக்கப்பட்டது!';
  }

  @override
  String daysCount(Object count) {
    return '$count நாட்கள்';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'அடுத்து வருவது: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'மக்காவுக்கான தூரம்: $distance கி.மீ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes நிமிடங்களுக்குப் பிறகு நினைவூட்டு';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName தொழுகைக்கான நேரம் வந்துவிட்டது';
  }

  @override
  String roundValue(Object round) {
    return 'சுற்று: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language தேர்ந்தெடுக்கப்பட்டது';
  }

  @override
  String juzNumber(Object juz) {
    return 'ஜுஸ் $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'பக்கம் $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ஹிஸ்ப் $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ஆயத் $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ஆயத்கள்';
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
    return 'நிலை $level';
  }

  @override
  String get surahAlBaqarah2238 => '(சூரா அல்-பகரா 2:238)';

  @override
  String get text1juz => '1 ஜுஸ்';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 பக்கங்கள்';

  @override
  String get text100dhikr => '100 திக்ர்';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 பக்கங்கள்';

  @override
  String get text28cclearsky => '28°C - தெளிவான வானம்';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 பக்கங்கள்';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'அறிமுகம்';

  @override
  String get aboutQuranPro => 'Quran Pro பற்றி';

  @override
  String get activity => 'செயல்பாடு';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'விளம்பரம் ஏற்றப்படுகிறது. சிறிது நேரத்தில் மீண்டும் முயற்சிக்கவும்.';

  @override
  String get addCustomDhikr => 'தனிப்பயன் திக்ர் சேர்க்க';

  @override
  String get addCustomDhikr2 => 'தனிப்பயன் திக்ர் சேர்க்க';

  @override
  String get addDhikr => 'திக்ர் சேர்க்க';

  @override
  String get adjustPosition => 'நிலையைச் சரிசெய்யவும்';

  @override
  String get afternoon => 'பிற்பகல்';

  @override
  String get alMasjidAlHaram => 'அல்-மஸ்ஜிதுல் ஹராம்';

  @override
  String get alhamdulillahiRabbilAlamin => 'அல்ஹம்துலில்லாஹி ரப்பில் ஆலமீன்';

  @override
  String get alignedToQibla => 'கிப்லா நேராக உள்ளது';

  @override
  String get allPraiseIsDueToAllah => 'எல்லாப் புகழும் அல்லாஹ்வுக்கே';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'அனைத்து பிரீமியம் அம்சங்களும் தள்ளுபடி விலையில்';

  @override
  String get allInOneQuranApp => 'அனைத்தும் ஒரே குர்ஆன் செயலி';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'அல்லாஹ் எனக்குப் போதுமானவன்; அவனைத் தவிர வேறு இறைவன் இல்லை';

  @override
  String get allahIsTheGreatest => 'அல்லாஹ் மிகப் பெரியவன்';

  @override
  String get allahuAkbar => 'அல்லாஹு அக்பர்';

  @override
  String get allahummaSalliAlaMuhammad => 'அல்லாஹும்ம ஸல்லி அலா முஹம்மத்';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'இருப்பிட அனுமதியை வழங்கவும் அல்லது மாற்று அட்டவணையைப் பயன்படுத்த மீண்டும் முயற்சி என்பதைத் தட்டவும்.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'தொழுகை நேரங்களையும் தினசரி நினைவூட்டல்களையும் பெற அறிவிப்புகளை அனுமதிக்கவும்.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'செயலியை பின்னணியில் இயங்க அனுமதிக்கவும்';

  @override
  String get app => 'செயலி';

  @override
  String get arabic => 'அரபு';

  @override
  String get asr => 'அஸர்';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'அஊது பில்லாஹி மினஷ் ஷைத்தானிர் ரஜீம்';

  @override
  String get avg => 'சராசரி';

  @override
  String get ayah => 'ஆயத்';

  @override
  String get batteryOptimization => 'பேட்டரி மேம்படுத்தல்';

  @override
  String get beautifulWidgets => 'அழகான விட்ஜெட்டுகள்';

  @override
  String get bestValue => 'சிறந்த மதிப்பு';

  @override
  String get blackOnyx => 'கருப்பு ஓனிக்ஸ்';

  @override
  String get bookmarks => 'புத்தகக்குறிகள்';

  @override
  String get brightIvoryInterface => 'பிரகாசமான ஐவரி இடைமுகம்';

  @override
  String get calculatingDistance => 'தூரம் கணக்கிடப்படுகிறது...';

  @override
  String get calibrateYourDirection => 'உங்கள் திசையைச் சரிசெய்யுங்கள்';

  @override
  String get cancel => 'ரத்து';

  @override
  String get change => 'மாற்று';

  @override
  String get changeTasbihMode => 'தஸ்பீஹ் பயன்முறையை மாற்றவா?';

  @override
  String get chooseDhikr => 'திக்ர் தேர்ந்தெடு';

  @override
  String get chooseDisplayLanguage => 'காட்சி மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get chooseTheme => 'தீம் தேர்ந்தெடு';

  @override
  String get chooseYourPreferredLanguage =>
      'உங்களுக்கு விருப்பமான மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get clickOrSwipeToCount => 'எண்ண தட்டவும் அல்லது ஸ்வைப் செய்யவும்';

  @override
  String get close => 'மூடு';

  @override
  String get closeCustomGoal => 'தனிப்பயன் இலக்கை மூடு';

  @override
  String get completeAtLeast33Dhikr => 'குறைந்தது 33 திக்ர் முடிக்கவும்';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'உங்கள் இதயத்தைத் திருக்குர்ஆனுடன் இணைத்துக்கொள்ளுங்கள்.';

  @override
  String get continueReading => 'தொடர்ந்து ஓது';

  @override
  String get countsPerRound => 'ஒரு சுற்றுக்கான எண்ணிக்கை';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'நேர்த்தியாக வடிவமைக்கப்பட்ட ஆன்மிக ரத்தினங்களால் உங்கள் சேகரிப்பை அலங்கரியுங்கள்.';

  @override
  String get current => 'தற்போதைய';

  @override
  String get current2 => 'தற்போதைய';

  @override
  String get currentLocationToMecca => 'தற்போதைய இடத்திலிருந்து மக்கா வரை';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'புதிய பயன்முறைக்காக தற்போதைய முன்னேற்றம் மீட்டமைக்கப்படும்.';

  @override
  String get currentStreak => 'தற்போதைய தொடர்';

  @override
  String get custom => 'தனிப்பயன்';

  @override
  String get customDhikr => 'தனிப்பயன் திக்ர்';

  @override
  String get customGoal => 'தனிப்பயன் இலக்கு';

  @override
  String get customPrayerSounds => 'தனிப்பயன் தொழுகை ஒலிகள்';

  @override
  String get dailyGoal => 'தினசரி இலக்கு';

  @override
  String get dailyQuests => 'தினசரி பணிகள்';

  @override
  String get dailyQuranReminder => 'தினசரி குர்ஆன் நினைவூட்டல்';

  @override
  String get dailyReminders => 'தினசரி நினைவூட்டல்கள்';

  @override
  String get dailyTasbih => 'தினசரி தஸ்பீஹ்';

  @override
  String get dark => 'இருண்ட';

  @override
  String get dawn => 'விடியல்';

  @override
  String get debug => 'பிழைத்திருத்தம்';

  @override
  String get dhikr => 'திக்ர்';

  @override
  String get dhikrActivity => 'திக்ர் செயல்பாடு';

  @override
  String get dhuAlHijjah => 'துல் ஹஜ்';

  @override
  String get dhuAlQadah => 'துல் கஃதா';

  @override
  String get dhuhr => 'ளுஹர்';

  @override
  String get direction => 'திசை';

  @override
  String get disableBatteryOptimization => 'பேட்டரி மேம்படுத்தலை முடக்கு';

  @override
  String get disableOptimization => 'மேம்படுத்தலை முடக்கு';

  @override
  String get distance => 'தூரம்';

  @override
  String get e => 'கி';

  @override
  String get eGHasbunallah => 'எ.கா. ஹஸ்புனல்லாஹ்';

  @override
  String get east => 'கிழக்கு';

  @override
  String get enableAutoStart => 'தானியங்கி தொடக்கத்தை இயக்கு';

  @override
  String get enableNotifications => 'அறிவிப்புகளை இயக்கு';

  @override
  String get enableReminders => 'நினைவூட்டல்களை இயக்கு';

  @override
  String get english => 'ஆங்கிலம்';

  @override
  String get enterYourName => 'உங்கள் பெயரை உள்ளிடவும்';

  @override
  String get equipped => 'பயன்பாட்டில்';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'சிறந்த குர்ஆன் அனுபவத்திற்குத் தேவையான அனைத்தும்.';

  @override
  String get fajr => 'ஃபஜ்ர்';

  @override
  String get feedback => 'கருத்து';

  @override
  String get first => 'முதல்';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'மிகச் சரியான முடிவுகளுக்கு, ஃபோனைத் தட்டையாக வைத்து காந்தப் பொருட்களிலிருந்து விலக்கி வைக்கவும்.';

  @override
  String get free => 'இலவசம்';

  @override
  String get fullBundle => 'முழுத் தொகுப்பு';

  @override
  String get getAnAdFreeExperienceForever =>
      'விளம்பரமில்லா அனுபவத்தை என்றென்றும் பெறுங்கள்';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'ஓத நினைவூட்டல் பெற்று தொடர்ச்சியாக இருங்கள்.';

  @override
  String get getStarted => 'தொடங்கு';

  @override
  String get gloryAndPraiseBeToAllah =>
      'அல்லாஹ் தூயவன், அவனுக்கே எல்லாப் புகழும்';

  @override
  String get gloryBeToAllah => 'அல்லாஹ் தூயவன்';

  @override
  String get gloryBeToAllahTheMagnificent => 'மகத்துவமிக்க அல்லாஹ் தூயவன்';

  @override
  String get goToHome => 'முகப்புக்குச் செல்';

  @override
  String get goldenEngraved => 'தங்க வேலைப்பாடு';

  @override
  String get greenJade => 'பச்சை ஜேட்';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ஹனோய், வியட்நாம்';

  @override
  String get haptic => 'அதிர்வு';

  @override
  String get hasanatHub => 'ஹஸனாத் மையம்';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ஹஸ்பியல்லாஹு லா இலாஹ இல்லா ஹுவ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'முகப்பு';

  @override
  String get howYourDataIsHandled => 'உங்கள் தரவு எப்படிக் கையாளப்படுகிறது';

  @override
  String get iSeekForgivenessFromAllah => 'அல்லாஹ்விடம் மன்னிப்புக் கோருகிறேன்';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'சபிக்கப்பட்ட ஷைத்தானிடமிருந்து அல்லாஹ்விடம் பாதுகாப்புத் தேடுகிறேன்';

  @override
  String get immediateAlerts => 'உடனடி எச்சரிக்கைகள்';

  @override
  String get inTheNameOfAllah => 'அல்லாஹ்வின் பெயரால்';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'நிச்சயமாக நாம் அல்லாஹ்வுக்கே உரியவர்கள், அவனிடமே திரும்பிச் செல்வோம்';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'இன்னா லில்லாஹி வ இன்னா இலைஹி ராஜிஊன்';

  @override
  String get isha => 'இஷா';

  @override
  String get jumadaAlAwwal => 'ஜுமாதல் அவ்வல்';

  @override
  String get jumadaAlThani => 'ஜுமாதஸ் ஸானி';

  @override
  String get juz => 'ஜுஸ்';

  @override
  String get juz2 => 'ஜுஸ்';

  @override
  String get keepAdhanAlarmsReliable =>
      'அதான் அலாரங்களை நம்பகமாக வைத்திருங்கள்';

  @override
  String get keepItUpYouReDoingGreat =>
      'இதையே தொடருங்கள்! நீங்கள் சிறப்பாகச் செய்கிறீர்கள்.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'செயலி மூடப்பட்டிருந்தாலும் அதான் நம்பகமாக ஒலிக்கும்.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'லா ஹவ்ல வலா குவ்வத இல்லா பில்லாஹ்';

  @override
  String get laIlahaIllallah => 'லா இலாஹ இல்லல்லாஹ்';

  @override
  String get language => 'மொழி';

  @override
  String get lapisLazuli => 'லாபிஸ் லாசுலி';

  @override
  String get last7Days => 'கடந்த 7 நாட்கள்';

  @override
  String get later => 'பிறகு';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'குர்ஆனுடன் உங்கள் அழகான பயணத்தைத் தொடங்குவோம்.';

  @override
  String get letSPersonalizeYourExperience =>
      'உங்கள் அனுபவத்தை\nதனிப்பயனாக்குவோம்';

  @override
  String get light => 'வெளிர்';

  @override
  String get lightMode => 'வெளிர் பயன்முறை';

  @override
  String get listenToOrReadAnyAyahToday =>
      'இன்று ஏதேனும் ஓர் ஆயத்தைக் கேளுங்கள் அல்லது ஓதுங்கள்';

  @override
  String get locating => 'இடம் கண்டறியப்படுகிறது...';

  @override
  String get location => 'இருப்பிடம்';

  @override
  String get locationPermissionsAreDenied => 'இருப்பிட அனுமதி மறுக்கப்பட்டது';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'இருப்பிட அனுமதி நிரந்தரமாக மறுக்கப்பட்டுள்ளது.';

  @override
  String get locationServicesAreDisabled =>
      'இருப்பிட சேவைகள் முடக்கப்பட்டுள்ளன.';

  @override
  String get longestStreak => 'நீண்ட தொடர்';

  @override
  String get maghrib => 'மஃரிப்';

  @override
  String get maybeLater => 'பிறகு பார்க்கலாம்';

  @override
  String get meccaSaudiArabia => 'மக்கா, சவூதி அரேபியா';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'என் இறைவா, மன்னித்துக் கருணை புரிவாயாக';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'என் இறைவா, நீ இறக்கியருளும் நன்மைக்கு நான் தேவையுடையவன்';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'என் இறைவா, என் அறிவை அதிகரிப்பாயாக';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'என் இறைவா, எளிதாக்குவாயாக, கடினமாக்காதே';

  @override
  String get n => 'வ';

  @override
  String get nameOptional => 'பெயர் (விருப்பத்தேர்வு)';

  @override
  String get next => 'அடுத்து';

  @override
  String get nextDhikr => 'அடுத்த திக்ர்';

  @override
  String get nextPrayer => 'அடுத்த தொழுகை';

  @override
  String get night => 'இரவு';

  @override
  String get nightEmeraldInterface => 'இரவு மரகத இடைமுகம்';

  @override
  String get noBookmarksYet => 'இதுவரை புத்தகக்குறிகள் இல்லை';

  @override
  String get noon => 'நண்பகல்';

  @override
  String get north => 'வடக்கு';

  @override
  String get northeast => 'வடகிழக்கு';

  @override
  String get northwest => 'வடமேற்கு';

  @override
  String get notificationsAlarm => 'அறிவிப்புகள் & அலாரம்';

  @override
  String get notificationsForPrayerTimes => 'தொழுகை நேரங்களுக்கான அறிவிப்புகள்';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'யா அல்லாஹ், முஹம்மத் அவர்கள் மீது அருள் பொழிவாயாக';

  @override
  String get oEverLivingOSustainer =>
      'என்றும் உயிருள்ளவனே, எல்லாவற்றையும் நிலைநிறுத்துபவனே';

  @override
  String get openAutoStart => 'தானியங்கி தொடக்கத்தைத் திற';

  @override
  String get optimizeAdhanPerformance => 'அதான் செயல்திறனை மேம்படுத்து';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'எங்கள் இறைவா, இவ்வுலகில் எங்களுக்கு நன்மையை வழங்குவாயாக';

  @override
  String get page => 'பக்கம்';

  @override
  String get pearl => 'முத்து';

  @override
  String get personalizeYourAdhanNotifications =>
      'அதான் அறிவிப்புகளைத் தனிப்பயனாக்குங்கள்';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'அகிலங்களின் இறைவனாகிய அல்லாஹ்வுக்கே எல்லாப் புகழும்';

  @override
  String get prayerAlarms => 'தொழுகை அலாரங்கள்';

  @override
  String get prayerSchedule => 'தொழுகை அட்டவணை';

  @override
  String get prayerTimeNotifications => 'தொழுகை நேர அறிவிப்புகள்';

  @override
  String get prayerTimesAreLoading => 'தொழுகை நேரங்கள் ஏற்றப்படுகின்றன';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'தொழுகை நேரங்கள், கிப்லா, குர்ஆன் ஓதுதல், தஸ்பீஹ் — அனைத்தும் ஒரே தினசரித் துணையில்.';

  @override
  String get prayerQuranQibla => 'தொழுகை • குர்ஆன் • கிப்லா';

  @override
  String get premiumThemes => 'பிரீமியம் தீம்கள்';

  @override
  String get preparingYourSpiritualJourney =>
      'உங்கள் ஆன்மிகப் பயணம் தயாராகிறது...';

  @override
  String get previousDhikr => 'முந்தைய திக்ர்';

  @override
  String get privacyPolicy => 'தனியுரிமைக் கொள்கை';

  @override
  String get qibla => 'கிப்லா';

  @override
  String get qiblaFinder => 'கிப்லா திசைகாட்டி';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'குர்ஆன்';

  @override
  String get quranPlayback => 'குர்ஆன் ஒலி இயக்கம்';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro தொழுகை நேரங்கள், கிப்லா, குர்ஆன் ஓதுதல், தஸ்பீஹ் ஆகியவற்றை ஒரே எளிய தினசரித் துணையாக இணைக்கிறது.';

  @override
  String get quranProPreferences => 'Quran Pro விருப்பங்கள்';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro தொடக்க அமைப்பு மற்றும் முன்னேற்ற விருப்பங்களை இந்தச் சாதனத்திலேயே சேமிக்கிறது. நிலைத்தன்மையையும் தரத்தையும் மேம்படுத்தப் பகுப்பாய்வு பயன்படுத்தப்படலாம்.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro உங்கள் தஸ்பீஹ் முன்னேற்றத்தை இந்தச் சாதனத்திலேயே சேமிக்கிறது. செயலியின் நிலைத்தன்மையையும் தரத்தையும் மேம்படுத்தப் பகுப்பாய்வு பயன்படுத்தப்படலாம்.';

  @override
  String get quranRecitation => 'குர்ஆன் ஓதுதல்';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ரப்பனா ஆத்தினா ஃபித் துன்யா ஹஸனா';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ரப்பி இன்னீ லிமா அன்ஸல்த்த இலய்ய மின் கைரின் ஃபகீர்';

  @override
  String get rabbiYassirWaLaTuassir => 'ரப்பி யஸ்ஸிர் வலா துஅஸ்ஸிர்';

  @override
  String get rabbiZidniIlma => 'ரப்பி ஸித்னீ இல்மா';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ரப்பிக்ஃபிர் வர்ஹம் வ அன்த்த கைருர் ராஹிமீன்';

  @override
  String get rabiAlAwwal => 'ரபீஉல் அவ்வல்';

  @override
  String get rabiAlThani => 'ரபீஉஸ் ஸானி';

  @override
  String get rateApp => 'செயலியை மதிப்பிடு';

  @override
  String get rateQuranPro => 'Quran Pro-வை மதிப்பிடு';

  @override
  String get readListen => 'ஓது & கேள்';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'அழகிய ஓதல்களுடன் குர்ஆனை ஓதுங்கள்.';

  @override
  String get recent => 'சமீபத்தியவை';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo மற்றும் Huawei-க்குப் பரிந்துரைக்கப்படுகிறது';

  @override
  String get redCarnelian => 'சிவப்பு அகீக்';

  @override
  String get remindMeAt => 'இந்த நேரத்தில் நினைவூட்டு';

  @override
  String get removeAds => 'விளம்பரங்களை நீக்கு';

  @override
  String get requestingLocationPermission => 'இருப்பிட அனுமதி கோரப்படுகிறது...';

  @override
  String get reset => 'மீட்டமை';

  @override
  String get retry => 'மீண்டும் முயற்சி';

  @override
  String get returnToCompass => 'திசைகாட்டிக்குத் திரும்பு';

  @override
  String get s => 'த';

  @override
  String get save => 'சேமி';

  @override
  String get saveGoal => 'இலக்கைச் சேமி';

  @override
  String get searchSurahNumberArabic => 'சூரா, எண், அரபு தேடு...';

  @override
  String get searchSurah => 'சூரா தேடு...';

  @override
  String get selectLanguage => 'மொழியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get selectTheThemeYouLike =>
      'உங்களுக்குப் பிடித்த தீமைத் தேர்ந்தெடுக்கவும்';

  @override
  String get selectYourBead => 'உங்கள் மணியைத் தேர்ந்தெடுக்கவும்';

  @override
  String get shop => 'கடை';

  @override
  String get shopCustomization => 'கடை & தனிப்பயனாக்கம்';

  @override
  String get sound => 'ஒலி';

  @override
  String get south => 'தெற்கு';

  @override
  String get southeast => 'தென்கிழக்கு';

  @override
  String get southwest => 'தென்மேற்கு';

  @override
  String get specialOccasionsAndMore => 'சிறப்பு நிகழ்வுகள் மற்றும் பல';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'தயாரிப்புப் பட்டியல் தயாரானதும் ஸ்டோர் மதிப்பீடு இணைக்கப்படும்.';

  @override
  String get subhanallahiWaBihamdihi => 'சுப்ஹானல்லாஹி வ பிஹம்திஹி';

  @override
  String get subhanallahilAzim => 'சுப்ஹானல்லாஹில் அளீம்';

  @override
  String get sunset => 'மாலை';

  @override
  String get supportQuranProOnTheStore => 'ஸ்டோரில் Quran Pro-வை ஆதரியுங்கள்';

  @override
  String get surah => 'சூரா';

  @override
  String get tasbih => 'தஸ்பீஹ்';

  @override
  String get tasbihSettings => 'தஸ்பீஹ் அமைப்புகள்';

  @override
  String get tellUsWhatToImprove => 'எதை மேம்படுத்த வேண்டும் எனச் சொல்லுங்கள்';

  @override
  String get termsOfUse => 'பயன்பாட்டு விதிமுறைகள்';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro-வைப் பயன்படுத்தியதற்கு நன்றி. தயாரிப்பு ஸ்டோர் பட்டியல் தயாரானதும் ஸ்டோர் மதிப்பீடு இணைக்கப்படும்.';

  @override
  String get thereIsNoDeityExceptAllah => 'அல்லாஹ்வைத் தவிர வேறு இறைவன் இல்லை';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'அல்லாஹ்வைக் கொண்டேயன்றி எந்த ஆற்றலும் சக்தியும் இல்லை';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'இது நினைவூட்டல்களைத் தனிப்பயனாக்கவும் உங்கள் முன்னேற்றத்தைக் கண்காணிக்கவும் உதவுகிறது.';

  @override
  String get tigerSEye => 'புலிக்கண்';

  @override
  String get today => 'இன்று';

  @override
  String get total => 'மொத்தம்';

  @override
  String get totalHasanat => 'மொத்த ஹஸனாத்';

  @override
  String get trackProgress => 'முன்னேற்றத்தைக் கண்காணி';

  @override
  String get trackYourReadingAndAchievements =>
      'உங்கள் ஓதுதலையும் சாதனைகளையும் கண்காணியுங்கள்.';

  @override
  String get tryAgain => 'மீண்டும் முயற்சி';

  @override
  String get undo => 'செயல்தவிர்';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'அனைத்து செயலி தீம்களையும் தனிப்பயனாக்கங்களையும் திறக்கவும்';

  @override
  String get usageGuidelines => 'பயன்பாட்டு வழிகாட்டுதல்கள்';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro-வை மரியாதையுடன் தனிப்பட்ட வழிபாடு, கற்றல் மற்றும் தினசரி இஸ்லாமிய வழக்கங்களுக்குப் பயன்படுத்துங்கள்.';

  @override
  String get viewAll => 'அனைத்தையும் பார்';

  @override
  String get w => 'மே';

  @override
  String get welcome => 'வரவேற்கிறோம்';

  @override
  String get west => 'மேற்கு';

  @override
  String get yaHayyuYaQayyum => 'யா ஹய்யு யா கய்யூம்';

  @override
  String get youReAllSet => 'எல்லாம் தயார்!';

  @override
  String get yourProgress => 'உங்கள் முன்னேற்றம்';

  @override
  String get continueLabel => 'தொடர்';

  @override
  String get amethyst => 'அமெதிஸ்ட்';

  @override
  String get indonesian => 'இந்தோனேசியம்';

  @override
  String get turkish => 'துருக்கியம்';

  @override
  String get vietnamese => 'வியட்நாமியம்';

  @override
  String get turquoise => 'பைரோஜா';

  @override
  String get wood => 'மரம்';

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
