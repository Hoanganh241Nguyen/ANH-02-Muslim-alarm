// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get week => 'Тыдзень';

  @override
  String get month => 'Месяц';

  @override
  String get lifetime => 'За ўвесь час';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Зрабіце паўзу ў справах і знайдзіце час для Алаха.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return 'Тавар $id недаступны для куплі.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Пакупка $productId завершана!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Пакупка $productId адноўлена!';
  }

  @override
  String daysCount(Object count) {
    return '$count дзён';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'НЕЎЗАБАВЕ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Адлегласць да Мекі: $distance км';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Нагадаць праз $minutes хв.';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Надышоў час намазу $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Кола: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Выбрана мова: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Джуз $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Старонка $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Хізб $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: аят $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count аятаў';
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
    return 'УЗРОВЕНЬ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Сура Аль-Бакара 2:238)';

  @override
  String get text1juz => '1 джуз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 старонак';

  @override
  String get text100dhikr => '100 зікраў';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 старонак';

  @override
  String get text28cclearsky => '28°C - Яснае неба';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 старонак';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Пра праграму';

  @override
  String get aboutQuranPro => 'Пра Quran Pro';

  @override
  String get activity => 'Актыўнасць';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Рэклама загружаецца. Паспрабуйце крыху пазней.';

  @override
  String get addCustomDhikr => 'Дадаць свой зікр';

  @override
  String get addCustomDhikr2 => 'Дадаць свой зікр';

  @override
  String get addDhikr => 'Дадаць зікр';

  @override
  String get adjustPosition => 'НАЛАДЗІЦЬ ПАЛАЖЭННЕ';

  @override
  String get afternoon => 'ДЗЕНЬ';

  @override
  String get alMasjidAlHaram => 'Аль-Масджыд аль-Харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Альхамдуліляхі Рабіль Алямін';

  @override
  String get alignedToQibla => 'НАКІРАВАНА НА КІБЛУ';

  @override
  String get allPraiseIsDueToAllah => 'Уся хвала належыць Алаху';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Усе прэміум-функцыі па зніжанай цане';

  @override
  String get allInOneQuranApp => 'Усё для Карана ў адной праграме';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Мне дастаткова Алаха; няма бажаства, акрамя Яго';

  @override
  String get allahIsTheGreatest => 'Алах Найвялікшы';

  @override
  String get allahuAkbar => 'Алаху Акбар';

  @override
  String get allahummaSalliAlaMuhammad => 'Алахума салі аля Мухамад';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Дазвольце доступ да месцазнаходжання або націсніце «Паўтарыць», каб выкарыстаць рэзервовы расклад.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Дазвольце апавяшчэнні, каб атрымліваць час намазаў і штодзённыя нагадванні.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Дазвольце праграме працаваць у фоне';

  @override
  String get app => 'Праграма';

  @override
  String get arabic => 'Арабская';

  @override
  String get asr => 'Аср';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Аўзу біляхі мін аш-шайтані р-раджым';

  @override
  String get avg => 'Сяр.';

  @override
  String get ayah => 'Аят';

  @override
  String get batteryOptimization => 'Аптымізацыя батарэі';

  @override
  String get beautifulWidgets => 'Прыгожыя віджэты';

  @override
  String get bestValue => 'ЛЕПШАЯ ЦАНА';

  @override
  String get blackOnyx => 'Чорны анікс';

  @override
  String get bookmarks => 'Закладкі';

  @override
  String get brightIvoryInterface => 'Светлы інтэрфейс колеру слановай косці';

  @override
  String get calculatingDistance => 'Разлік адлегласці...';

  @override
  String get calibrateYourDirection => 'Адкалібруйце напрамак';

  @override
  String get cancel => 'Скасаваць';

  @override
  String get change => 'Змяніць';

  @override
  String get changeTasbihMode => 'Змяніць рэжым тасбіху?';

  @override
  String get chooseDhikr => 'Выберыце зікр';

  @override
  String get chooseDisplayLanguage => 'Выберыце мову інтэрфейсу';

  @override
  String get chooseTheme => 'Выберыце тэму';

  @override
  String get chooseYourPreferredLanguage => 'Выберыце зручную мову';

  @override
  String get clickOrSwipeToCount => 'Націскайце або праводзьце, каб лічыць';

  @override
  String get close => 'Закрыць';

  @override
  String get closeCustomGoal => 'Закрыць сваю мэту';

  @override
  String get completeAtLeast33Dhikr => 'Зрабіце не менш за 33 зікры';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Злучыце сэрца са Свяшчэнным Каранам.';

  @override
  String get continueReading => 'Працягнуць чытанне';

  @override
  String get countsPerRound => 'Паўтораў у коле';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Збірайце калекцыю з майстэрску створаных духоўных самацветаў.';

  @override
  String get current => 'БЯГУЧЫ';

  @override
  String get current2 => 'Бягучы';

  @override
  String get currentLocationToMecca => 'Ад вашага месца да Мекі';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Бягучы прагрэс скінецца для новага рэжыму.';

  @override
  String get currentStreak => 'Бягучая серыя';

  @override
  String get custom => 'Свой';

  @override
  String get customDhikr => 'Свой зікр';

  @override
  String get customGoal => 'Свая мэта';

  @override
  String get customPrayerSounds => 'Свае гукі для намазаў';

  @override
  String get dailyGoal => 'Штодзённая мэта';

  @override
  String get dailyQuests => 'Штодзённыя заданні';

  @override
  String get dailyQuranReminder => 'Штодзённае нагадванне пра Каран';

  @override
  String get dailyReminders => 'Штодзённыя нагадванні';

  @override
  String get dailyTasbih => 'Штодзённы тасбіх';

  @override
  String get dark => 'Цёмная';

  @override
  String get dawn => 'СВІТАНАК';

  @override
  String get debug => 'Адладка';

  @override
  String get dhikr => 'Зікр';

  @override
  String get dhikrActivity => 'Актыўнасць зікру';

  @override
  String get dhuAlHijjah => 'Зуль-Хіджа';

  @override
  String get dhuAlQadah => 'Зуль-Када';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get direction => 'НАПРАМАК';

  @override
  String get disableBatteryOptimization => 'Адключыць аптымізацыю батарэі';

  @override
  String get disableOptimization => 'АДКЛЮЧЫЦЬ АПТЫМІЗАЦЫЮ';

  @override
  String get distance => 'АДЛЕГЛАСЦЬ';

  @override
  String get e => 'У';

  @override
  String get eGHasbunallah => 'напр. ХасбунАлах';

  @override
  String get east => 'Усход';

  @override
  String get enableAutoStart => 'Уключыць аўтазапуск';

  @override
  String get enableNotifications => 'Уключыць апавяшчэнні';

  @override
  String get enableReminders => 'Уключыць нагадванні';

  @override
  String get english => 'Англійская';

  @override
  String get enterYourName => 'Увядзіце імя';

  @override
  String get equipped => 'АБРАНА';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Усё патрэбнае для зручнага чытання Карана.';

  @override
  String get fajr => 'Фаджр';

  @override
  String get feedback => 'Водгук';

  @override
  String get first => 'Першы';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Для найбольшай дакладнасці трымайце тэлефон роўна і далей ад магнітных прадметаў.';

  @override
  String get free => 'Бясплатна';

  @override
  String get fullBundle => 'Поўны набор';

  @override
  String get getAnAdFreeExperienceForever => 'Назаўсёды прыбярыце рэкламу';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Атрымлівайце нагадванні і чытайце рэгулярна.';

  @override
  String get getStarted => 'Пачаць';

  @override
  String get gloryAndPraiseBeToAllah => 'Прачысты Алах і хвала Яму';

  @override
  String get gloryBeToAllah => 'Прачысты Алах';

  @override
  String get gloryBeToAllahTheMagnificent => 'Прачысты Алах Вялікі';

  @override
  String get goToHome => 'На галоўную';

  @override
  String get goldenEngraved => 'Залатая гравіроўка';

  @override
  String get greenJade => 'Зялёны нефрыт';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханой, В\'етнам';

  @override
  String get haptic => 'Вібрацыя';

  @override
  String get hasanatHub => 'Цэнтр хасанат';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбіялаху ля іляха іля Хува';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Галоўная';

  @override
  String get howYourDataIsHandled => 'Як апрацоўваюцца вашы даныя';

  @override
  String get iSeekForgivenessFromAllah => 'Прашу прабачэння ў Алаха';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Прыбягаю да Алаха ад праклятага шайтана';

  @override
  String get immediateAlerts => 'Імгненныя апавяшчэнні';

  @override
  String get inTheNameOfAllah => 'З імем Алаха';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Сапраўды, мы належым Алаху і да Яго вяртаемся';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Іна ліляхі ва іна іляйхі раджыун';

  @override
  String get isha => 'Іша';

  @override
  String get jumadaAlAwwal => 'Джумада аль-Аваль';

  @override
  String get jumadaAlThani => 'Джумада ас-Сані';

  @override
  String get juz => 'ДЖУЗ';

  @override
  String get juz2 => 'Джуз';

  @override
  String get keepAdhanAlarmsReliable => 'Каб азан гучаў своечасова';

  @override
  String get keepItUpYouReDoingGreat =>
      'Так трымаць! У вас выдатна атрымліваецца.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Азан прагучыць своечасова, нават калі праграма закрыта.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'Ля хаўля ва ля кувата іля білях';

  @override
  String get laIlahaIllallah => 'Ля іляха ілялах';

  @override
  String get language => 'Мова';

  @override
  String get lapisLazuli => 'Лазурыт';

  @override
  String get last7Days => 'Апошнія 7 дзён';

  @override
  String get later => 'ПАЗНЕЙ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Пачнём ваш цудоўны шлях з Каранам.';

  @override
  String get letSPersonalizeYourExperience => 'Наладзім праграму\nпад вас';

  @override
  String get light => 'Светлая';

  @override
  String get lightMode => 'Светлая тэма';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Паслухайце або прачытайце любы аят сёння';

  @override
  String get locating => 'Вызначэнне месца...';

  @override
  String get location => 'Месцазнаходжанне';

  @override
  String get locationPermissionsAreDenied =>
      'Доступ да месцазнаходжання забаронены';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Доступ да месцазнаходжання забаронены назаўсёды.';

  @override
  String get locationServicesAreDisabled =>
      'Службы месцазнаходжання адключаны.';

  @override
  String get longestStreak => 'Найлепшая серыя';

  @override
  String get maghrib => 'Магрыб';

  @override
  String get maybeLater => 'Магчыма, пазней';

  @override
  String get meccaSaudiArabia => 'Мека, Саудаўская Аравія';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Госпадзе мой, прабач і памілуй';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Госпадзе мой, я маю патрэбу ў любым дабры, якое Ты нізашлеш';

  @override
  String get myLordIncreaseMeInKnowledge => 'Госпадзе мой, памножы мае веды';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Госпадзе мой, палегчы і не абцяжарвай';

  @override
  String get n => 'Пн';

  @override
  String get nameOptional => 'Імя (неабавязкова)';

  @override
  String get next => 'Далей';

  @override
  String get nextDhikr => 'Наступны зікр';

  @override
  String get nextPrayer => 'НАСТУПНЫ НАМАЗ';

  @override
  String get night => 'НОЧ';

  @override
  String get nightEmeraldInterface => 'Начны смарагдавы інтэрфейс';

  @override
  String get noBookmarksYet => 'Закладак пакуль няма';

  @override
  String get noon => 'ПОЎДЗЕНЬ';

  @override
  String get north => 'Поўнач';

  @override
  String get northeast => 'Паўночны ўсход';

  @override
  String get northwest => 'Паўночны захад';

  @override
  String get notificationsAlarm => 'Апавяшчэнні і будзільнік';

  @override
  String get notificationsForPrayerTimes => 'Апавяшчэнні пра час намазаў';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'О Алах, благаславі Мухамада';

  @override
  String get oEverLivingOSustainer => 'О Жывы, О Уседзяржыцель';

  @override
  String get openAutoStart => 'АДКРЫЦЬ АЎТАЗАПУСК';

  @override
  String get optimizeAdhanPerformance => 'Аптымізаваць працу азана';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Госпадзе наш, даруй нам дабро ў гэтым свеце';

  @override
  String get page => 'СТАРОНКА';

  @override
  String get pearl => 'Жэмчуг';

  @override
  String get personalizeYourAdhanNotifications => 'Наладзьце апавяшчэнні азана';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'Хвала Алаху, Госпаду светаў';

  @override
  String get prayerAlarms => 'Будзільнікі намазаў';

  @override
  String get prayerSchedule => 'Расклад намазаў';

  @override
  String get prayerTimeNotifications => 'Апавяшчэнні пра час намазаў';

  @override
  String get prayerTimesAreLoading => 'Час намазаў загружаецца';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Час намазаў, кібла, чытанне Карана і тасбіх у адным штодзённым спадарожніку.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • КАРАН • КІБЛА';

  @override
  String get premiumThemes => 'Прэміум-тэмы';

  @override
  String get preparingYourSpiritualJourney => 'Рыхтуем ваш духоўны шлях...';

  @override
  String get previousDhikr => 'Папярэдні зікр';

  @override
  String get privacyPolicy => 'Палітыка прыватнасці';

  @override
  String get qibla => 'Кібла';

  @override
  String get qiblaFinder => 'Пошук кіблы';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Каран';

  @override
  String get quranPlayback => 'Прайграванне Карана';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro аб\'ядноўвае час намазаў, кіблу, чытанне Карана і тасбіх у адным простым штодзённым спадарожніку.';

  @override
  String get quranProPreferences => 'Налады Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro захоўвае налады знаёмства і прагрэсу лакальна на гэтай прыладзе. Аналітыка можа выкарыстоўвацца для паляпшэння стабільнасці і якасці.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro захоўвае ваш прагрэс тасбіху лакальна на гэтай прыладзе. Аналітыка можа выкарыстоўвацца для паляпшэння стабільнасці праграмы і якасці прадукту.';

  @override
  String get quranRecitation => 'Рэцытацыя Карана';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Рабана аціна фід-дунья хасана';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Рабі іні ліма анзальта іляйя мін хайрын факір';

  @override
  String get rabbiYassirWaLaTuassir => 'Рабі ясір ва ля туасір';

  @override
  String get rabbiZidniIlma => 'Рабі зідні ільма';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Рабігфір вархам ва анта хайрур-рахімін';

  @override
  String get rabiAlAwwal => 'Рабі аль-Аваль';

  @override
  String get rabiAlThani => 'Рабі ас-Сані';

  @override
  String get rateApp => 'Ацаніць праграму';

  @override
  String get rateQuranPro => 'Ацаніць Quran Pro';

  @override
  String get readListen => 'Чытанне і аўдыя';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Чытайце Каран у цудоўным выкананні чытальнікаў.';

  @override
  String get recent => 'Нядаўнія';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Рэкамендуецца для Xiaomi, Oppo, Vivo і Huawei';

  @override
  String get redCarnelian => 'Чырвоны сердалік';

  @override
  String get remindMeAt => 'Нагадаць у';

  @override
  String get removeAds => 'Прыбраць рэкламу';

  @override
  String get requestingLocationPermission =>
      'Запыт доступу да месцазнаходжання...';

  @override
  String get reset => 'Скінуць';

  @override
  String get retry => 'Паўтарыць';

  @override
  String get returnToCompass => 'Вярнуцца да компаса';

  @override
  String get s => 'Пд';

  @override
  String get save => 'Захаваць';

  @override
  String get saveGoal => 'Захаваць мэту';

  @override
  String get searchSurahNumberArabic => 'Пошук: сура, нумар, арабская...';

  @override
  String get searchSurah => 'Пошук суры...';

  @override
  String get selectLanguage => 'Выберыце мову';

  @override
  String get selectTheThemeYouLike => 'Выберыце тэму, якая падабаецца';

  @override
  String get selectYourBead => 'Выберыце пацеркі';

  @override
  String get shop => 'Крама';

  @override
  String get shopCustomization => 'Крама і афармленне';

  @override
  String get sound => 'Гук';

  @override
  String get south => 'Поўдзень';

  @override
  String get southeast => 'Паўднёвы ўсход';

  @override
  String get southwest => 'Паўднёвы захад';

  @override
  String get specialOccasionsAndMore => 'Асаблівыя даты і не толькі';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Ацэнка ў краме стане даступнай, калі старонка праграмы будзе апублікавана.';

  @override
  String get subhanallahiWaBihamdihi => 'СубханАлахі ва біхамдзіхі';

  @override
  String get subhanallahilAzim => 'СубханАлахіль Азым';

  @override
  String get sunset => 'ЗАХАД СОНЦА';

  @override
  String get supportQuranProOnTheStore => 'Падтрымайце Quran Pro у краме';

  @override
  String get surah => 'Сура';

  @override
  String get tasbih => 'Тасбіх';

  @override
  String get tasbihSettings => 'Налады тасбіху';

  @override
  String get tellUsWhatToImprove => 'Раскажыце, што палепшыць';

  @override
  String get termsOfUse => 'Умовы выкарыстання';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Дзякуй, што карыстаецеся Quran Pro. Ацэнка ў краме стане даступнай, калі старонка праграмы будзе апублікавана.';

  @override
  String get thereIsNoDeityExceptAllah => 'Няма бажаства, акрамя Алаха';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Няма моцы і сілы ні ў кога, акрамя Алаха';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Гэта дапаможа наладзіць нагадванні і сачыць за вашым прагрэсам.';

  @override
  String get tigerSEye => 'Тыгровае вока';

  @override
  String get today => 'Сёння';

  @override
  String get total => 'Усяго';

  @override
  String get totalHasanat => 'УСЯГО ХАСАНАТ';

  @override
  String get trackProgress => 'Адсочванне прагрэсу';

  @override
  String get trackYourReadingAndAchievements =>
      'Сачыце за чытаннем і дасягненнямі.';

  @override
  String get tryAgain => 'Паўтарыць';

  @override
  String get undo => 'Адмяніць';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Адкрыйце ўсе тэмы і налады афармлення';

  @override
  String get usageGuidelines => 'Правілы выкарыстання';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Карыстайцеся Quran Pro з павагай — для асабістага пакланення, навучання і штодзённых ісламскіх практык.';

  @override
  String get viewAll => 'Паказаць усе';

  @override
  String get w => 'З';

  @override
  String get welcome => 'Вітаем';

  @override
  String get west => 'Захад';

  @override
  String get yaHayyuYaQayyum => 'Я Хайю Я Каюм';

  @override
  String get youReAllSet => 'Усё гатова!';

  @override
  String get yourProgress => 'Ваш прагрэс';

  @override
  String get continueLabel => 'Працягнуць';

  @override
  String get amethyst => 'Аметыст';

  @override
  String get indonesian => 'Інданезійская';

  @override
  String get turkish => 'Турэцкая';

  @override
  String get vietnamese => 'В\'етнамская';

  @override
  String get turquoise => 'Біруза';

  @override
  String get wood => 'Дрэва';

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
