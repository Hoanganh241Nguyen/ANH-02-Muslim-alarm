// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get week => 'Апта';

  @override
  String get month => 'Ай';

  @override
  String get lifetime => 'Барлық уақыт';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Жұмысыңызды сәл қойып, Аллаһ үшін уақыт бөліңіз.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return '$id өнімі сатып алуға қолжетімсіз.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId сатып алынды!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId сатып алуы қалпына келтірілді!';
  }

  @override
  String daysCount(Object count) {
    return '$count күн';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'КЕЛЕСІ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Меккеге дейінгі қашықтық: $distance км';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes минуттан кейін еске сал';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName намазының уақыты келді';
  }

  @override
  String roundValue(Object round) {
    return 'Айналым: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language таңдалды';
  }

  @override
  String juzNumber(Object juz) {
    return 'Жүз $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Бет $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Хизб $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: аят $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count аят';
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
    return 'ДЕҢГЕЙ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Бақара сүресі 2:238)';

  @override
  String get text1juz => '1 жүз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 бет';

  @override
  String get text100dhikr => '100 зікір';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 бет';

  @override
  String get text28cclearsky => '28°C - Ашық аспан';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 бет';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Қолданба туралы';

  @override
  String get aboutQuranPro => 'Quran Pro туралы';

  @override
  String get activity => 'Белсенділік';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Жарнама жүктелуде. Сәлден соң қайталап көріңіз.';

  @override
  String get addCustomDhikr => 'Жеке зікір қосу';

  @override
  String get addCustomDhikr2 => 'Жеке Зікір Қосу';

  @override
  String get addDhikr => 'Зікір қосу';

  @override
  String get adjustPosition => 'ОРНАЛАСУЫН РЕТТЕУ';

  @override
  String get afternoon => 'ТҮСТЕН КЕЙІН';

  @override
  String get alMasjidAlHaram => 'Әл-Мәсжид әл-Харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Әлхамдулиллаһи Раббил әләмин';

  @override
  String get alignedToQibla => 'ҚҰБЫЛАҒА БАҒЫТТАЛДЫ';

  @override
  String get allPraiseIsDueToAllah => 'Барлық мақтау Аллаһқа тән';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Барлық премиум мүмкіндік жеңілдікті бағамен';

  @override
  String get allInOneQuranApp => 'Бәрі бір жердегі Құран қолданбасы';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Маған Аллаһ жеткілікті; Одан басқа құдай жоқ';

  @override
  String get allahIsTheGreatest => 'Аллаһ — ең Ұлы';

  @override
  String get allahuAkbar => 'Аллаһу Акбар';

  @override
  String get allahummaSalliAlaMuhammad => 'Аллаһумма салли ала Мұхаммад';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Геолокацияға рұқсат беріңіз немесе қосалқы кестені пайдалану үшін «Қайталау» түймесін басыңыз.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Намаз уақыттары мен күнделікті еске салуларды алу үшін хабарландыруларға рұқсат беріңіз.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Қолданбаның фондық режимде жұмыс істеуіне рұқсат беріңіз';

  @override
  String get app => 'Қолданба';

  @override
  String get arabic => 'Араб тілі';

  @override
  String get asr => 'Екінті';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Ағузу билләһи мин аш-шайтанир ражим';

  @override
  String get avg => 'Орт.';

  @override
  String get ayah => 'Аят';

  @override
  String get batteryOptimization => 'Батареяны оңтайландыру';

  @override
  String get beautifulWidgets => 'Әдемі виджеттер';

  @override
  String get bestValue => 'ЕҢ ТИІМДІ';

  @override
  String get blackOnyx => 'Қара оникс';

  @override
  String get bookmarks => 'Бетбелгілер';

  @override
  String get brightIvoryInterface => 'Ашық піл сүйегі түсті интерфейс';

  @override
  String get calculatingDistance => 'Қашықтық есептелуде...';

  @override
  String get calibrateYourDirection => 'Бағытты калибрлеңіз';

  @override
  String get cancel => 'Болдырмау';

  @override
  String get change => 'Өзгерту';

  @override
  String get changeTasbihMode => 'Тәсбих режимі өзгертілсін бе?';

  @override
  String get chooseDhikr => 'Зікір таңдаңыз';

  @override
  String get chooseDisplayLanguage => 'Интерфейс тілін таңдаңыз';

  @override
  String get chooseTheme => 'Тақырып таңдаңыз';

  @override
  String get chooseYourPreferredLanguage => 'Қалаған тіліңізді таңдаңыз';

  @override
  String get clickOrSwipeToCount => 'Санау үшін басыңыз немесе сырғытыңыз';

  @override
  String get close => 'Жабу';

  @override
  String get closeCustomGoal => 'Жеке мақсатты жабу';

  @override
  String get completeAtLeast33Dhikr => 'Кемінде 33 зікір орындаңыз';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Жүрегіңізді Қасиетті Құранмен байланыстырыңыз.';

  @override
  String get continueReading => 'Оқуды жалғастыру';

  @override
  String get countsPerRound => 'Айналымдағы саны';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Жинағыңызды шебер жасалған рухани асыл тастармен толықтырыңыз.';

  @override
  String get current => 'АҒЫМДАҒЫ';

  @override
  String get current2 => 'Ағымдағы';

  @override
  String get currentLocationToMecca => 'Ағымдағы орыннан Меккеге дейін';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Жаңа режим үшін ағымдағы прогресс нөлденеді.';

  @override
  String get currentStreak => 'Ағымдағы серия';

  @override
  String get custom => 'Жеке';

  @override
  String get customDhikr => 'Жеке зікір';

  @override
  String get customGoal => 'Жеке мақсат';

  @override
  String get customPrayerSounds => 'Жеке намаз дыбыстары';

  @override
  String get dailyGoal => 'Күнделікті мақсат';

  @override
  String get dailyQuests => 'Күнделікті тапсырмалар';

  @override
  String get dailyQuranReminder => 'Күнделікті Құран еске салуы';

  @override
  String get dailyReminders => 'Күнделікті еске салулар';

  @override
  String get dailyTasbih => 'Күнделікті тәсбих';

  @override
  String get dark => 'Қараңғы';

  @override
  String get dawn => 'ТАҢ СӘРІ';

  @override
  String get debug => 'Жөндеу';

  @override
  String get dhikr => 'Зікір';

  @override
  String get dhikrActivity => 'Зікір белсенділігі';

  @override
  String get dhuAlHijjah => 'Зулхижжа';

  @override
  String get dhuAlQadah => 'Зулқағда';

  @override
  String get dhuhr => 'Бесін';

  @override
  String get direction => 'БАҒЫТ';

  @override
  String get disableBatteryOptimization => 'Батареяны оңтайландыруды өшіру';

  @override
  String get disableOptimization => 'ОҢТАЙЛАНДЫРУДЫ ӨШІРУ';

  @override
  String get distance => 'ҚАШЫҚТЫҚ';

  @override
  String get e => 'Ш';

  @override
  String get eGHasbunallah => 'мыс. ХасбунАллаһ';

  @override
  String get east => 'Шығыс';

  @override
  String get enableAutoStart => 'Автоқосуды қосу';

  @override
  String get enableNotifications => 'Хабарландыруларды қосу';

  @override
  String get enableReminders => 'Еске салуларды қосу';

  @override
  String get english => 'Ағылшын тілі';

  @override
  String get enterYourName => 'Атыңызды енгізіңіз';

  @override
  String get equipped => 'ТАҢДАЛҒАН';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Құранмен жақсырақ жұмыс істеу үшін қажеттінің бәрі.';

  @override
  String get fajr => 'Таң';

  @override
  String get feedback => 'Пікір';

  @override
  String get first => 'Бірінші';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Ең дәл нәтиже үшін телефонды тегіс ұстап, магнитті заттардан аулақ ұстаңыз.';

  @override
  String get free => 'Тегін';

  @override
  String get fullBundle => 'Толық жинақ';

  @override
  String get getAnAdFreeExperienceForever =>
      'Жарнамасыз қолданысты мәңгілікке алыңыз';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Еске салуларды алып, тұрақты оқыңыз.';

  @override
  String get getStarted => 'Бастау';

  @override
  String get gloryAndPraiseBeToAllah => 'Аллаһ пәк, Оған мақтау болсын';

  @override
  String get gloryBeToAllah => 'Аллаһ пәк';

  @override
  String get gloryBeToAllahTheMagnificent => 'Ұлы Аллаһ пәк';

  @override
  String get goToHome => 'Басты бетке өту';

  @override
  String get goldenEngraved => 'Алтын оюлы';

  @override
  String get greenJade => 'Жасыл нефрит';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханой, Вьетнам';

  @override
  String get haptic => 'Діріл';

  @override
  String get hasanatHub => 'Хасанат орталығы';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбияллаһу ла илаһа илла Һуа';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Басты бет';

  @override
  String get howYourDataIsHandled => 'Деректеріңіз қалай өңделеді';

  @override
  String get iSeekForgivenessFromAllah => 'Аллаһтан кешірім тілеймін';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Қуылған шайтаннан Аллаһқа сиынамын';

  @override
  String get immediateAlerts => 'Дереу ескертулер';

  @override
  String get inTheNameOfAllah => 'Аллаһтың атымен';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Шын мәнінде, біз Аллаһқа тәнбіз және Оған қайтамыз';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Инна лилләһи уа инна иләйһи ражиун';

  @override
  String get isha => 'Құптан';

  @override
  String get jumadaAlAwwal => 'Жұмадил-әууәл';

  @override
  String get jumadaAlThani => 'Жұмадис-сани';

  @override
  String get juz => 'ЖҮЗ';

  @override
  String get juz2 => 'Жүз';

  @override
  String get keepAdhanAlarmsReliable => 'Азан дабылдары сенімді болсын';

  @override
  String get keepItUpYouReDoingGreat =>
      'Осылай жалғастырыңыз! Тамаша үлгерудесіз.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Қолданба жабық болса да, азан хабарлары уақытында келсін.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Ла хаула уа ла қуввата илла билләһ';

  @override
  String get laIlahaIllallah => 'Ла илаһа иллаллаһ';

  @override
  String get language => 'Тіл';

  @override
  String get lapisLazuli => 'Лазурит';

  @override
  String get last7Days => 'Соңғы 7 күн';

  @override
  String get later => 'КЕЙІНІРЕК';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Құранмен әдемі сапарыңызды бастайық.';

  @override
  String get letSPersonalizeYourExperience => 'Қолданбаны\nөзіңізге бейімдейік';

  @override
  String get light => 'Ашық';

  @override
  String get lightMode => 'Ашық режим';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Бүгін кез келген аятты тыңдаңыз немесе оқыңыз';

  @override
  String get locating => 'Орын анықталуда...';

  @override
  String get location => 'Орналасқан жер';

  @override
  String get locationPermissionsAreDenied => 'Геолокацияға рұқсат берілмеген';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Геолокацияға рұқсат біржола берілмеген.';

  @override
  String get locationServicesAreDisabled => 'Геолокация қызметтері өшірулі.';

  @override
  String get longestStreak => 'Ең ұзақ серия';

  @override
  String get maghrib => 'Ақшам';

  @override
  String get maybeLater => 'Кейінірек';

  @override
  String get meccaSaudiArabia => 'Мекке, Сауд Арабиясы';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Раббым, кешір және рақым ет';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Раббым, маған түсіретін кез келген игілікке мұқтажбын';

  @override
  String get myLordIncreaseMeInKnowledge => 'Раббым, білімімді арттыр';

  @override
  String get myLordMakeItEasyAndDoNot => 'Раббым, оңайлат, қиындатпа';

  @override
  String get n => 'С';

  @override
  String get nameOptional => 'Аты (міндетті емес)';

  @override
  String get next => 'Келесі';

  @override
  String get nextDhikr => 'Келесі зікір';

  @override
  String get nextPrayer => 'КЕЛЕСІ НАМАЗ';

  @override
  String get night => 'ТҮН';

  @override
  String get nightEmeraldInterface => 'Түнгі зүмірет интерфейсі';

  @override
  String get noBookmarksYet => 'Әзірге бетбелгі жоқ';

  @override
  String get noon => 'ТҮС';

  @override
  String get north => 'Солтүстік';

  @override
  String get northeast => 'Солтүстік-шығыс';

  @override
  String get northwest => 'Солтүстік-батыс';

  @override
  String get notificationsAlarm => 'Хабарландырулар және дабыл';

  @override
  String get notificationsForPrayerTimes =>
      'Намаз уақыттары туралы хабарландырулар';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Аллаһым, Мұхаммедке салауат ет';

  @override
  String get oEverLivingOSustainer => 'Ей, Мәңгі Тірі, ей, Қамқоршы';

  @override
  String get openAutoStart => 'АВТОҚОСУДЫ АШУ';

  @override
  String get optimizeAdhanPerformance => 'Азан жұмысын оңтайландыру';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Раббымыз, бізге бұл дүниеде игілік бер';

  @override
  String get page => 'БЕТ';

  @override
  String get pearl => 'Інжу';

  @override
  String get personalizeYourAdhanNotifications =>
      'Азан хабарландыруларын өзіңізге бейімдеңіз';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Мақтау әлемдердің Раббысы Аллаһқа тән';

  @override
  String get prayerAlarms => 'Намаз дабылдары';

  @override
  String get prayerSchedule => 'Намаз кестесі';

  @override
  String get prayerTimeNotifications => 'Намаз уақыты хабарландырулары';

  @override
  String get prayerTimesAreLoading => 'Намаз уақыттары жүктелуде';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Намаз уақыттары, құбыла, Құран оқу және тәсбих — бір күнделікті серікте.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • ҚҰРАН • ҚҰБЫЛА';

  @override
  String get premiumThemes => 'Премиум тақырыптар';

  @override
  String get preparingYourSpiritualJourney => 'Рухани сапарыңыз дайындалуда...';

  @override
  String get previousDhikr => 'Алдыңғы зікір';

  @override
  String get privacyPolicy => 'Құпиялық саясаты';

  @override
  String get qibla => 'Құбыла';

  @override
  String get qiblaFinder => 'Құбыла компасы';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Құран';

  @override
  String get quranPlayback => 'Құран тыңдау';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro намаз уақыттары, құбыла, Құран оқу және тәсбихті бір қарапайым күнделікті серікке біріктіреді.';

  @override
  String get quranProPreferences => 'Quran Pro параметрлері';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro таныстыру және прогресс параметрлерін осы құрылғыда жергілікті сақтайды. Тұрақтылық пен сапаны жақсарту үшін аналитика қолданылуы мүмкін.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro тәсбих прогресіңізді осы құрылғыда жергілікті сақтайды. Қолданба тұрақтылығы мен өнім сапасын жақсарту үшін аналитика қолданылуы мүмкін.';

  @override
  String get quranRecitation => 'Құран оқылымы';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Раббана атина фид-дуния хасана';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Рабби инни лима анзалта иләйя мин хайрин фақир';

  @override
  String get rabbiYassirWaLaTuassir => 'Рабби яссир уа ла туассир';

  @override
  String get rabbiZidniIlma => 'Рабби зидни илма';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Раббиғфир уархам уа анта хайрур-рахимин';

  @override
  String get rabiAlAwwal => 'Рабиғул-әууәл';

  @override
  String get rabiAlThani => 'Рабиғус-сани';

  @override
  String get rateApp => 'Қолданбаны бағалау';

  @override
  String get rateQuranPro => 'Quran Pro-ны бағалау';

  @override
  String get readListen => 'Оқу және тыңдау';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Құранды әсем оқылымдармен оқыңыз.';

  @override
  String get recent => 'Соңғылары';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo және Huawei үшін ұсынылады';

  @override
  String get redCarnelian => 'Қызыл ақық';

  @override
  String get remindMeAt => 'Еске салу уақыты';

  @override
  String get removeAds => 'Жарнаманы өшіру';

  @override
  String get requestingLocationPermission => 'Геолокацияға рұқсат сұралуда...';

  @override
  String get reset => 'Нөлдеу';

  @override
  String get retry => 'Қайталау';

  @override
  String get returnToCompass => 'Компасқа оралу';

  @override
  String get s => 'О';

  @override
  String get save => 'Сақтау';

  @override
  String get saveGoal => 'Мақсатты сақтау';

  @override
  String get searchSurahNumberArabic => 'Сүре, нөмір, араб тілінде іздеу...';

  @override
  String get searchSurah => 'Сүре іздеу...';

  @override
  String get selectLanguage => 'Тілді таңдау';

  @override
  String get selectTheThemeYouLike => 'Ұнаған тақырыпты таңдаңыз';

  @override
  String get selectYourBead => 'Тәсбих моншағын таңдаңыз';

  @override
  String get shop => 'Дүкен';

  @override
  String get shopCustomization => 'Дүкен және безендіру';

  @override
  String get sound => 'Дыбыс';

  @override
  String get south => 'Оңтүстік';

  @override
  String get southeast => 'Оңтүстік-шығыс';

  @override
  String get southwest => 'Оңтүстік-батыс';

  @override
  String get specialOccasionsAndMore => 'Ерекше күндер және басқасы';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Дүкендегі бағалау өнім парақшасы дайын болғанда қосылады.';

  @override
  String get subhanallahiWaBihamdihi => 'СубханАллаһи уа бихамдиһи';

  @override
  String get subhanallahilAzim => 'СубханАллаһил Азым';

  @override
  String get sunset => 'КҮН БАТУ';

  @override
  String get supportQuranProOnTheStore => 'Quran Pro-ны дүкенде қолдаңыз';

  @override
  String get surah => 'Сүре';

  @override
  String get tasbih => 'Тәсбих';

  @override
  String get tasbihSettings => 'Тәсбих параметрлері';

  @override
  String get tellUsWhatToImprove => 'Нені жақсартуды айтыңыз';

  @override
  String get termsOfUse => 'Пайдалану шарттары';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro-ны пайдаланғаныңызға рақмет. Дүкендегі бағалау өнім парақшасы дайын болғанда қосылады.';

  @override
  String get thereIsNoDeityExceptAllah => 'Аллаһтан басқа құдай жоқ';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Аллаһтан басқа күш пен қуат жоқ';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Бұл еске салуларды бейімдеуге және прогресіңізді бақылауға көмектеседі.';

  @override
  String get tigerSEye => 'Жолбарыс көзі';

  @override
  String get today => 'Бүгін';

  @override
  String get total => 'Барлығы';

  @override
  String get totalHasanat => 'БАРЛЫҚ ХАСАНАТ';

  @override
  String get trackProgress => 'Прогресті бақылау';

  @override
  String get trackYourReadingAndAchievements =>
      'Оқуыңыз бен жетістіктеріңізді бақылаңыз.';

  @override
  String get tryAgain => 'Қайталап көріңіз';

  @override
  String get undo => 'Кері қайтару';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Барлық тақырып пен безендіруді ашыңыз';

  @override
  String get usageGuidelines => 'Пайдалану ережелері';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro-ны жеке ғибадат, білім алу және күнделікті исламдық амалдар үшін құрметпен пайдаланыңыз.';

  @override
  String get viewAll => 'Барлығын көру';

  @override
  String get w => 'Б';

  @override
  String get welcome => 'Қош келдіңіз';

  @override
  String get west => 'Батыс';

  @override
  String get yaHayyuYaQayyum => 'Йа Хайю Йа Қаййум';

  @override
  String get youReAllSet => 'Бәрі дайын!';

  @override
  String get yourProgress => 'Прогресіңіз';

  @override
  String get continueLabel => 'Жалғастыру';

  @override
  String get amethyst => 'Аметист';

  @override
  String get indonesian => 'Индонезия тілі';

  @override
  String get turkish => 'Түрік тілі';

  @override
  String get vietnamese => 'Вьетнам тілі';

  @override
  String get turquoise => 'Феруза';

  @override
  String get wood => 'Ағаш';

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
  String get estimatedLocation => 'Болжамды орналасу';
}
