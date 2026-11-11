// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kirghiz Kyrgyz (`ky`).
class AppLocalizationsKy extends AppLocalizations {
  AppLocalizationsKy([String locale = 'ky']) : super(locale);

  @override
  String get week => 'Апта';

  @override
  String get month => 'Ай';

  @override
  String get lifetime => 'Бардык убакыт';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ишиңизден бир аз тыныгып, Аллах үчүн убакыт бөлүңүз.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return '$id товары сатып алууга жеткиликсиз.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId сатып алынды!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId сатып алуусу калыбына келтирилди!';
  }

  @override
  String daysCount(Object count) {
    return '$count күн';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'КИЙИНКИ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Меккеге чейинки аралык: $distance км';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes мүнөттөн кийин эскертүү';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName намазынын убактысы келди';
  }

  @override
  String roundValue(Object round) {
    return 'Айлампа: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language тандалды';
  }

  @override
  String juzNumber(Object juz) {
    return '$juz-жуз';
  }

  @override
  String pageNumber(Object page) {
    return '$page-бет';
  }

  @override
  String hizbNumber(Object hizb) {
    return '$hizb-хизб';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: $verse-аят';
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
    return '$level-ДЕҢГЭЭЛ';
  }

  @override
  String get surahAlBaqarah2238 => '(Бакара сүрөсү 2:238)';

  @override
  String get text1juz => '1 жуз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 бет';

  @override
  String get text100dhikr => '100 зикир';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 бет';

  @override
  String get text28cclearsky => '28°C - Ачык асман';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 бет';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Тиркеме жөнүндө';

  @override
  String get aboutQuranPro => 'Quran Pro жөнүндө';

  @override
  String get activity => 'Активдүүлүк';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Жарнама жүктөлүүдө. Бир аздан кийин кайра аракет кылыңыз.';

  @override
  String get addCustomDhikr => 'Өз зикириңизди кошуу';

  @override
  String get addCustomDhikr2 => 'Өз зикириңизди кошуу';

  @override
  String get addDhikr => 'Зикир кошуу';

  @override
  String get adjustPosition => 'ОРДУН ТУУРАЛОО';

  @override
  String get afternoon => 'ТҮШТӨН КИЙИН';

  @override
  String get alMasjidAlHaram => 'Аль-Масжид аль-Харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Алхамдулиллахи Раббиль Аламин';

  @override
  String get alignedToQibla => 'КЫБЫЛАГА БАГЫТТАЛДЫ';

  @override
  String get allPraiseIsDueToAllah => 'Бардык мактоо Аллахка таандык';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Бардык премиум мүмкүнчүлүктөр арзандатылган баада';

  @override
  String get allInOneQuranApp => 'Баары бириккен Куран тиркемеси';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Аллах мага жетиштүү; Андан башка кудай жок';

  @override
  String get allahIsTheGreatest => 'Аллах — эң Улуу';

  @override
  String get allahuAkbar => 'Аллаху Акбар';

  @override
  String get allahummaSalliAlaMuhammad => 'Аллахумма салли аля Мухаммад';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Жайгашууга уруксат бериңиз же камдык графикти колдонуу үчүн «Кайталоо» баскычын басыңыз.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Намаз убактыларын жана күнүмдүк эскертүүлөрдү алуу үчүн билдирмелерге уруксат бериңиз.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Тиркемеге фондо иштөөгө уруксат бериңиз';

  @override
  String get app => 'Тиркеме';

  @override
  String get arabic => 'Арабча';

  @override
  String get asr => 'Аср';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Аузу билляхи мин аш-шайтани р-ражим';

  @override
  String get avg => 'Орт.';

  @override
  String get ayah => 'Аят';

  @override
  String get batteryOptimization => 'Батареяны оптималдаштыруу';

  @override
  String get beautifulWidgets => 'Кооз виджеттер';

  @override
  String get bestValue => 'ЭҢ ПАЙДАЛУУ';

  @override
  String get blackOnyx => 'Кара оникс';

  @override
  String get bookmarks => 'Кыстармалар';

  @override
  String get brightIvoryInterface => 'Ачык пил сөөгү түсүндөгү интерфейс';

  @override
  String get calculatingDistance => 'Аралык эсептелүүдө...';

  @override
  String get calibrateYourDirection => 'Багытыңызды тууралаңыз';

  @override
  String get cancel => 'Жокко чыгаруу';

  @override
  String get change => 'Өзгөртүү';

  @override
  String get changeTasbihMode => 'Тасбих режимин өзгөртөсүзбү?';

  @override
  String get chooseDhikr => 'Зикирди тандаңыз';

  @override
  String get chooseDisplayLanguage => 'Интерфейс тилин тандаңыз';

  @override
  String get chooseTheme => 'Теманы тандаңыз';

  @override
  String get chooseYourPreferredLanguage => 'Өзүңүзгө ыңгайлуу тилди тандаңыз';

  @override
  String get clickOrSwipeToCount => 'Саноо үчүн басыңыз же сыдырыңыз';

  @override
  String get close => 'Жабуу';

  @override
  String get closeCustomGoal => 'Өзүмдүк максатты жабуу';

  @override
  String get completeAtLeast33Dhikr => 'Кеминде 33 зикир аткарыңыз';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Жүрөгүңүздү Ыйык Куран менен байланыштырыңыз.';

  @override
  String get continueReading => 'Окууну улантуу';

  @override
  String get countsPerRound => 'Бир айлампадагы саны';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Чебер жасалган руханий асыл таштар менен коллекцияңызды толуктаңыз.';

  @override
  String get current => 'УЧУРДАГЫ';

  @override
  String get current2 => 'Учурдагы';

  @override
  String get currentLocationToMecca => 'Учурдагы жайгашуудан Меккеге чейин';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Жаңы режимде учурдагы прогресс нөлгө түшөт.';

  @override
  String get currentStreak => 'Учурдагы серия';

  @override
  String get custom => 'Өзүмдүк';

  @override
  String get customDhikr => 'Өзүмдүк зикир';

  @override
  String get customGoal => 'Өзүмдүк максат';

  @override
  String get customPrayerSounds => 'Өз намаз үндөрүңүз';

  @override
  String get dailyGoal => 'Күндүк максат';

  @override
  String get dailyQuests => 'Күндүк тапшырмалар';

  @override
  String get dailyQuranReminder => 'Күнүмдүк Куран эскертүүсү';

  @override
  String get dailyReminders => 'Күнүмдүк эскертүүлөр';

  @override
  String get dailyTasbih => 'Күндүк тасбих';

  @override
  String get dark => 'Караңгы';

  @override
  String get dawn => 'ТАҢ';

  @override
  String get debug => 'Мүчүлүштүктөрдү оңдоо';

  @override
  String get dhikr => 'Зикир';

  @override
  String get dhikrActivity => 'Зикир активдүүлүгү';

  @override
  String get dhuAlHijjah => 'Зулхижжа';

  @override
  String get dhuAlQadah => 'Зулкада';

  @override
  String get dhuhr => 'Бешим';

  @override
  String get direction => 'БАГЫТ';

  @override
  String get disableBatteryOptimization => 'Батареяны оптималдаштырууну өчүрүү';

  @override
  String get disableOptimization => 'ОПТИМАЛДАШТЫРУУНУ ӨЧҮРҮҮ';

  @override
  String get distance => 'АРАЛЫК';

  @override
  String get e => 'Ч';

  @override
  String get eGHasbunallah => 'мис. ХасбунАллах';

  @override
  String get east => 'Чыгыш';

  @override
  String get enableAutoStart => 'Автостартты күйгүзүү';

  @override
  String get enableNotifications => 'Билдирмелерди күйгүзүү';

  @override
  String get enableReminders => 'Эскертүүлөрдү күйгүзүү';

  @override
  String get english => 'Англисче';

  @override
  String get enterYourName => 'Атыңызды жазыңыз';

  @override
  String get equipped => 'ТАНДАЛГАН';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Куран окууну жагымдуу кылган бардык нерсе.';

  @override
  String get fajr => 'Багымдат';

  @override
  String get feedback => 'Пикир';

  @override
  String get first => 'Биринчи';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Так натыйжа үчүн телефонду тегиз кармаңыз жана магниттик буюмдардан алыс болуңуз.';

  @override
  String get free => 'Эркин';

  @override
  String get fullBundle => 'Толук топтом';

  @override
  String get getAnAdFreeExperienceForever =>
      'Жарнамасыз колдонууну түбөлүккө алыңыз';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Эскертүү алып, окууну үзгүлтүксүз улантыңыз.';

  @override
  String get getStarted => 'Баштоо';

  @override
  String get gloryAndPraiseBeToAllah => 'Аллах пак жана Ага мактоо болсун';

  @override
  String get gloryBeToAllah => 'Аллах бардык кемчиликтен пак';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'Улуу Аллах бардык кемчиликтен пак';

  @override
  String get goToHome => 'Башкы бетке өтүү';

  @override
  String get goldenEngraved => 'Алтын оюмдуу';

  @override
  String get greenJade => 'Жашыл нефрит';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханой, Вьетнам';

  @override
  String get haptic => 'Дирилдөө';

  @override
  String get hasanatHub => 'Хасанат борбору';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбияллаху ля иляха илля Хува';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Башкы бет';

  @override
  String get howYourDataIsHandled => 'Маалыматыңыз кандай иштетилет';

  @override
  String get iSeekForgivenessFromAllah => 'Аллахтан кечирим сурайм';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Каргышка калган шайтандан Аллахка сыйынам';

  @override
  String get immediateAlerts => 'Дароо эскертүүлөр';

  @override
  String get inTheNameOfAllah => 'Аллахтын ысымы менен';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Чындыгында биз Аллахка таандыкпыз жана Ага кайтабыз';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Инна лилляхи ва инна иляйхи ражиун';

  @override
  String get isha => 'Куптан';

  @override
  String get jumadaAlAwwal => 'Жумада аль-Аввал';

  @override
  String get jumadaAlThani => 'Жумада ас-Сани';

  @override
  String get juz => 'ЖУЗ';

  @override
  String get juz2 => 'Жуз';

  @override
  String get keepAdhanAlarmsReliable => 'Азан сигналдары ишенимдүү болсун';

  @override
  String get keepItUpYouReDoingGreat =>
      'Ушундай улантыңыз! Сонун жасап жатасыз.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Тиркеме жабылса да, азан өз убагында угулат.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Ля хаула ва ля куввата илля биллях';

  @override
  String get laIlahaIllallah => 'Ля иляха иллаллах';

  @override
  String get language => 'Тил';

  @override
  String get lapisLazuli => 'Лазурит';

  @override
  String get last7Days => 'Акыркы 7 күн';

  @override
  String get later => 'КИЙИНЧЕРЭЭК';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Куран менен кооз сапарыңызды баштайлы.';

  @override
  String get letSPersonalizeYourExperience =>
      'Тиркемени өзүңүзгө\nыңгайлаштыралы';

  @override
  String get light => 'Жарык';

  @override
  String get lightMode => 'Жарык режим';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Бүгүн каалаган аятты угуңуз же окуңуз';

  @override
  String get locating => 'Жайгашуу аныкталууда...';

  @override
  String get location => 'Жайгашуу';

  @override
  String get locationPermissionsAreDenied => 'Жайгашууга уруксат берилген жок';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Жайгашууга уруксат биротоло тыюу салынган.';

  @override
  String get locationServicesAreDisabled => 'Жайгашуу кызматтары өчүрүлгөн.';

  @override
  String get longestStreak => 'Эң узун серия';

  @override
  String get maghrib => 'Шам';

  @override
  String get maybeLater => 'Балким кийинчерээк';

  @override
  String get meccaSaudiArabia => 'Мекке, Сауд Арабиясы';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Раббим, кечир жана ырайым кыл';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Раббим, Сен түшүргөн ар бир жакшылыкка муктажмын';

  @override
  String get myLordIncreaseMeInKnowledge => 'Раббим, илимимди арттыр';

  @override
  String get myLordMakeItEasyAndDoNot => 'Раббим, жеңилдет, кыйындатпа';

  @override
  String get n => 'Т';

  @override
  String get nameOptional => 'Аты (милдеттүү эмес)';

  @override
  String get next => 'Кийинки';

  @override
  String get nextDhikr => 'Кийинки зикир';

  @override
  String get nextPrayer => 'КИЙИНКИ НАМАЗ';

  @override
  String get night => 'ТҮН';

  @override
  String get nightEmeraldInterface => 'Түнкү изумруд интерфейс';

  @override
  String get noBookmarksYet => 'Азырынча кыстармалар жок';

  @override
  String get noon => 'ТҮШ';

  @override
  String get north => 'Түндүк';

  @override
  String get northeast => 'Түндүк-чыгыш';

  @override
  String get northwest => 'Түндүк-батыш';

  @override
  String get notificationsAlarm => 'Билдирмелер жана ойготкуч';

  @override
  String get notificationsForPrayerTimes => 'Намаз убактылары үчүн билдирмелер';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Оо Аллах, Мухаммадга салават бере көр';

  @override
  String get oEverLivingOSustainer => 'Оо Тирүү Зат, оо Баарын Кармоочу';

  @override
  String get openAutoStart => 'АВТОСТАРТТЫ АЧУУ';

  @override
  String get optimizeAdhanPerformance => 'Азандын иштешин жакшыртуу';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Раббибиз, бизге бул дүйнөдө жакшылык бере көр';

  @override
  String get page => 'БЕТ';

  @override
  String get pearl => 'Бермет';

  @override
  String get personalizeYourAdhanNotifications =>
      'Азан билдирмелерин ыңгайлаштырыңыз';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Ааламдардын Раббиси Аллахка мактоо болсун';

  @override
  String get prayerAlarms => 'Намаз ойготкучтары';

  @override
  String get prayerSchedule => 'Намаз убактылары';

  @override
  String get prayerTimeNotifications => 'Намаз убактысынын билдирмелери';

  @override
  String get prayerTimesAreLoading => 'Намаз убактылары жүктөлүүдө';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Намаз убактылары, кыбыла, Куран окуу жана тасбих — бир күнүмдүк жолдошто.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • КУРАН • КЫБЫЛА';

  @override
  String get premiumThemes => 'Премиум темалар';

  @override
  String get preparingYourSpiritualJourney =>
      'Руханий сапарыңыз даярдалууда...';

  @override
  String get previousDhikr => 'Мурунку зикир';

  @override
  String get privacyPolicy => 'Купуялык саясаты';

  @override
  String get qibla => 'Кыбыла';

  @override
  String get qiblaFinder => 'Кыбыланы табуу';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Куран';

  @override
  String get quranPlayback => 'Куранды ойнотуу';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro намаз убактыларын, кыбыланы, Куран окууну жана тасбихти бир жөнөкөй күнүмдүк жолдошко бириктирет.';

  @override
  String get quranProPreferences => 'Quran Pro жөндөөлөрү';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro таанышуу жана прогресс жөндөөлөрүн ушул түзмөктө сактайт. Аналитика туруктуулукту жана сапатты жакшыртуу үчүн колдонулушу мүмкүн.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro тасбих прогрессиңизди ушул түзмөктө сактайт. Аналитика тиркеменин туруктуулугун жана сапатын жакшыртуу үчүн колдонулушу мүмкүн.';

  @override
  String get quranRecitation => 'Куран кырааты';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Раббана атина фид-дунья хасана';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Рабби инни лима анзальта иляйя мин хайрин факир';

  @override
  String get rabbiYassirWaLaTuassir => 'Рабби яссир ва ля туассир';

  @override
  String get rabbiZidniIlma => 'Рабби зидни ильма';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Раббигфир вархам ва анта хайрур-рахимин';

  @override
  String get rabiAlAwwal => 'Раби аль-Аввал';

  @override
  String get rabiAlThani => 'Раби ас-Сани';

  @override
  String get rateApp => 'Тиркемени баалоо';

  @override
  String get rateQuranPro => 'Quran Pro\'ну баалоо';

  @override
  String get readListen => 'Окуу жана угуу';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Куранды кооз кыраат менен окуңуз.';

  @override
  String get recent => 'Акыркылар';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo жана Huawei үчүн сунушталат';

  @override
  String get redCarnelian => 'Кызыл акык';

  @override
  String get remindMeAt => 'Эскертүү убактысы';

  @override
  String get removeAds => 'Жарнаманы өчүрүү';

  @override
  String get requestingLocationPermission => 'Жайгашууга уруксат суралууда...';

  @override
  String get reset => 'Тазалоо';

  @override
  String get retry => 'Кайталоо';

  @override
  String get returnToCompass => 'Компаска кайтуу';

  @override
  String get s => 'Тү';

  @override
  String get save => 'Сактоо';

  @override
  String get saveGoal => 'Максатты сактоо';

  @override
  String get searchSurahNumberArabic => 'Сүрө, номер, арабча издөө...';

  @override
  String get searchSurah => 'Сүрө издөө...';

  @override
  String get selectLanguage => 'Тилди тандаңыз';

  @override
  String get selectTheThemeYouLike => 'Жаккан теманы тандаңыз';

  @override
  String get selectYourBead => 'Тасбих данегин тандаңыз';

  @override
  String get shop => 'Дүкөн';

  @override
  String get shopCustomization => 'Дүкөн жана жасалгалоо';

  @override
  String get sound => 'Үн';

  @override
  String get south => 'Түштүк';

  @override
  String get southeast => 'Түштүк-чыгыш';

  @override
  String get southwest => 'Түштүк-батыш';

  @override
  String get specialOccasionsAndMore => 'Өзгөчө күндөр жана башкалар';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Дүкөндөгү баалоо тиркеменин барагы жарыялангандан кийин иштейт.';

  @override
  String get subhanallahiWaBihamdihi => 'СубханАллахи ва бихамдихи';

  @override
  String get subhanallahilAzim => 'СубханАллахиль Азим';

  @override
  String get sunset => 'КҮН БАТЫШЫ';

  @override
  String get supportQuranProOnTheStore => 'Quran Pro\'ну дүкөндө колдоңуз';

  @override
  String get surah => 'Сүрө';

  @override
  String get tasbih => 'Тасбих';

  @override
  String get tasbihSettings => 'Тасбих жөндөөлөрү';

  @override
  String get tellUsWhatToImprove => 'Эмнени жакшыртуу керектигин жазыңыз';

  @override
  String get termsOfUse => 'Колдонуу шарттары';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro\'ну колдонгонуңуз үчүн рахмат. Дүкөндөгү баалоо тиркеменин барагы жарыялангандан кийин иштейт.';

  @override
  String get thereIsNoDeityExceptAllah => 'Аллахтан башка кудай жок';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Аллахтан башка эч кимде күч да, кубат да жок';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Бул эскертүүлөрдү ыңгайлаштырууга жана прогрессиңизди көзөмөлдөөгө жардам берет.';

  @override
  String get tigerSEye => 'Жолборс көзү';

  @override
  String get today => 'Бүгүн';

  @override
  String get total => 'Баары';

  @override
  String get totalHasanat => 'БАРДЫК ХАСАНАТ';

  @override
  String get trackProgress => 'Прогрессти көзөмөлдөө';

  @override
  String get trackYourReadingAndAchievements =>
      'Окууңузду жана жетишкендиктериңизди көзөмөлдөңүз.';

  @override
  String get tryAgain => 'Кайра аракет кылуу';

  @override
  String get undo => 'Артка кайтаруу';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Бардык темаларды жана жасалгаларды ачыңыз';

  @override
  String get usageGuidelines => 'Колдонуу эрежелери';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro\'ну сый-урмат менен жеке ибадат, билим алуу жана күнүмдүк исламий адаттар үчүн колдонуңуз.';

  @override
  String get viewAll => 'Баарын көрүү';

  @override
  String get w => 'Б';

  @override
  String get welcome => 'Кош келиңиз';

  @override
  String get west => 'Батыш';

  @override
  String get yaHayyuYaQayyum => 'Я Хайю Я Кайюм';

  @override
  String get youReAllSet => 'Баары даяр!';

  @override
  String get yourProgress => 'Прогрессиңиз';

  @override
  String get continueLabel => 'Улантуу';

  @override
  String get amethyst => 'Аметист';

  @override
  String get indonesian => 'Индонезияча';

  @override
  String get turkish => 'Түркчө';

  @override
  String get vietnamese => 'Вьетнамча';

  @override
  String get turquoise => 'Фируза';

  @override
  String get wood => 'Жыгач';

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
  String get estimatedLocation => 'Болжолдуу жайгашуу';
}
