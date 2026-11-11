// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Mongolian (`mn`).
class AppLocalizationsMn extends AppLocalizations {
  AppLocalizationsMn([String locale = 'mn']) : super(locale);

  @override
  String get week => 'Долоо хоног';

  @override
  String get month => 'Сар';

  @override
  String get lifetime => 'Бүх хугацаа';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ажлаасаа түр завсарлаж, Аллахад цаг гаргаарай.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return '$id бүтээгдэхүүнийг худалдан авах боломжгүй.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId худалдан авалт амжилттай!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId худалдан авалт сэргээгдлээ!';
  }

  @override
  String daysCount(Object count) {
    return '$count өдөр';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'УДАХГҮЙ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Мекка хүртэлх зай: $distance км';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes минутын дараа сануулах';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName намазын цаг болов';
  }

  @override
  String roundValue(Object round) {
    return 'Тойрог: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language сонгогдлоо';
  }

  @override
  String juzNumber(Object juz) {
    return '$juz-р жуз';
  }

  @override
  String pageNumber(Object page) {
    return '$page-р хуудас';
  }

  @override
  String hizbNumber(Object hizb) {
    return '$hizb-р хизб';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: $verse-р аят';
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
    return '$level-Р ТҮВШИН';
  }

  @override
  String get surahAlBaqarah2238 => '(Аль-Бакара сура 2:238)';

  @override
  String get text1juz => '1 жуз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 хуудас';

  @override
  String get text100dhikr => '100 зикр';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 хуудас';

  @override
  String get text28cclearsky => '28°C - Цэлмэг тэнгэр';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 хуудас';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Аппын тухай';

  @override
  String get aboutQuranPro => 'Quran Pro-гийн тухай';

  @override
  String get activity => 'Идэвх';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Сурталчилгаа ачаалж байна. Түр хүлээгээд дахин оролдоно уу.';

  @override
  String get addCustomDhikr => 'Өөрийн зикр нэмэх';

  @override
  String get addCustomDhikr2 => 'Өөрийн зикр нэмэх';

  @override
  String get addDhikr => 'Зикр нэмэх';

  @override
  String get adjustPosition => 'БАЙРЛАЛЫГ ТОХИРУУЛАХ';

  @override
  String get afternoon => 'ҮДЭЭС ХОЙШ';

  @override
  String get alMasjidAlHaram => 'Аль-Масжид аль-Харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Альхамдулиллахи Раббиль Аламин';

  @override
  String get alignedToQibla => 'КИБЛА РУУ ЧИГЛЭВ';

  @override
  String get allPraiseIsDueToAllah => 'Бүх магтаал Аллахад буй';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Бүх премиум боломж хямдралтай үнээр';

  @override
  String get allInOneQuranApp => 'Бүгд нэг дор багтсан Коран апп';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Аллах надад хангалттай; Түүнээс өөр бурхан үгүй';

  @override
  String get allahIsTheGreatest => 'Аллах хамгийн Их';

  @override
  String get allahuAkbar => 'Аллаху Акбар';

  @override
  String get allahummaSalliAlaMuhammad => 'Аллахумма салли аля Мухаммад';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Байршлын зөвшөөрөл өгөх эсвэл нөөц хуваарийг ашиглахын тулд «Дахин оролдох» товчийг дарна уу.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Намазын цаг болон өдөр тутмын сануулга авахын тулд мэдэгдлийг зөвшөөрнө үү.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Аппыг ард ажиллахыг зөвшөөрнө үү';

  @override
  String get app => 'Апп';

  @override
  String get arabic => 'Араб';

  @override
  String get asr => 'Аср';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Аузу билляхи мин аш-шайтани р-ражим';

  @override
  String get avg => 'Дунд.';

  @override
  String get ayah => 'Аят';

  @override
  String get batteryOptimization => 'Батерейн оновчлол';

  @override
  String get beautifulWidgets => 'Гоё виджетүүд';

  @override
  String get bestValue => 'ХАМГИЙН АШИГТАЙ';

  @override
  String get blackOnyx => 'Хар оникс';

  @override
  String get bookmarks => 'Хавчуургууд';

  @override
  String get brightIvoryInterface => 'Цайвар зааны ясан өнгийн интерфейс';

  @override
  String get calculatingDistance => 'Зайг тооцоолж байна...';

  @override
  String get calibrateYourDirection => 'Чиглэлээ тохируулна уу';

  @override
  String get cancel => 'Цуцлах';

  @override
  String get change => 'Өөрчлөх';

  @override
  String get changeTasbihMode => 'Тасбихын горимыг өөрчлөх үү?';

  @override
  String get chooseDhikr => 'Зикр сонгох';

  @override
  String get chooseDisplayLanguage => 'Харагдах хэлээ сонгоно уу';

  @override
  String get chooseTheme => 'Загвар сонгох';

  @override
  String get chooseYourPreferredLanguage => 'Тохиромжтой хэлээ сонгоно уу';

  @override
  String get clickOrSwipeToCount => 'Тоолохын тулд дарах эсвэл шудрана уу';

  @override
  String get close => 'Хаах';

  @override
  String get closeCustomGoal => 'Өөрийн зорилгыг хаах';

  @override
  String get completeAtLeast33Dhikr => 'Дор хаяж 33 зикр хийнэ үү';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Зүрх сэтгэлээ Ариун Корантай холбоорой.';

  @override
  String get continueReading => 'Үргэлжлүүлэн унших';

  @override
  String get countsPerRound => 'Нэг тойрогт ногдох тоо';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Уран нарийн урласан сүнслэг эрдэнийн чулуугаар цуглуулгаа баяжуулаарай.';

  @override
  String get current => 'ОДООГИЙН';

  @override
  String get current2 => 'Одоогийн';

  @override
  String get currentLocationToMecca => 'Одоогийн байршлаас Мекка хүртэл';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Шинэ горимд одоогийн явц тэглэгдэнэ.';

  @override
  String get currentStreak => 'Одоогийн цуваа';

  @override
  String get custom => 'Өөрийн';

  @override
  String get customDhikr => 'Өөрийн зикр';

  @override
  String get customGoal => 'Өөрийн зорилго';

  @override
  String get customPrayerSounds => 'Намазын өөрийн дуу';

  @override
  String get dailyGoal => 'Өдрийн зорилго';

  @override
  String get dailyQuests => 'Өдөр тутмын даалгавар';

  @override
  String get dailyQuranReminder => 'Өдөр тутмын Коран сануулга';

  @override
  String get dailyReminders => 'Өдөр тутмын сануулга';

  @override
  String get dailyTasbih => 'Өдөр тутмын тасбих';

  @override
  String get dark => 'Харанхуй';

  @override
  String get dawn => 'ҮҮР ЦАЙХ';

  @override
  String get debug => 'Алдаа засах';

  @override
  String get dhikr => 'Зикр';

  @override
  String get dhikrActivity => 'Зикрийн идэвх';

  @override
  String get dhuAlHijjah => 'Зуль-Хижжа';

  @override
  String get dhuAlQadah => 'Зуль-Када';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get direction => 'ЧИГЛЭЛ';

  @override
  String get disableBatteryOptimization => 'Батерейн оновчлолыг унтраах';

  @override
  String get disableOptimization => 'ОНОВЧЛОЛЫГ УНТРААХ';

  @override
  String get distance => 'ЗАЙ';

  @override
  String get e => 'З';

  @override
  String get eGHasbunallah => 'ж.нь ХасбунАллах';

  @override
  String get east => 'Зүүн';

  @override
  String get enableAutoStart => 'Автомат эхлүүлэлтийг идэвхжүүлэх';

  @override
  String get enableNotifications => 'Мэдэгдлийг идэвхжүүлэх';

  @override
  String get enableReminders => 'Сануулгыг идэвхжүүлэх';

  @override
  String get english => 'Англи';

  @override
  String get enterYourName => 'Нэрээ оруулна уу';

  @override
  String get equipped => 'СОНГОГДСОН';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Коран уншихад хэрэгтэй бүхэн энд байна.';

  @override
  String get fajr => 'Фажр';

  @override
  String get feedback => 'Санал хүсэлт';

  @override
  String get first => 'Эхний';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Хамгийн нарийн үр дүнд утсаа хэвтээ байрлалд, соронзон эд зүйлсээс хол байлгана уу.';

  @override
  String get free => 'Чөлөөт';

  @override
  String get fullBundle => 'Бүрэн багц';

  @override
  String get getAnAdFreeExperienceForever =>
      'Сурталчилгаагүй байдлыг үүрд аваарай';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Сануулга аван тогтмол уншаарай.';

  @override
  String get getStarted => 'Эхлэх';

  @override
  String get gloryAndPraiseBeToAllah => 'Аллах ариун бөгөөд Түүнд магтаал буй';

  @override
  String get gloryBeToAllah => 'Аллах ариун';

  @override
  String get gloryBeToAllahTheMagnificent => 'Агуу Аллах ариун';

  @override
  String get goToHome => 'Нүүр хуудас руу очих';

  @override
  String get goldenEngraved => 'Алтан сийлбэр';

  @override
  String get greenJade => 'Ногоон хаш';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханой, Вьетнам';

  @override
  String get haptic => 'Чичиргээ';

  @override
  String get hasanatHub => 'Хасанат төв';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбияллаху ля иляха илля Хуа';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Нүүр';

  @override
  String get howYourDataIsHandled => 'Таны мэдээллийг хэрхэн боловсруулдаг вэ';

  @override
  String get iSeekForgivenessFromAllah => 'Би Аллахаас өршөөл гуйя';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Хараагдсан шайтанаас Аллахад хоргодъё';

  @override
  String get immediateAlerts => 'Шуурхай мэдэгдэл';

  @override
  String get inTheNameOfAllah => 'Аллахын нэрээр';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Үнэхээр бид Аллахынх бөгөөд Түүн рүү буцна';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Инна лилляхи ва инна иляйхи ражиун';

  @override
  String get isha => 'Иша';

  @override
  String get jumadaAlAwwal => 'Жумада аль-Аввал';

  @override
  String get jumadaAlThani => 'Жумада ас-Сани';

  @override
  String get juz => 'ЖУЗ';

  @override
  String get juz2 => 'Жуз';

  @override
  String get keepAdhanAlarmsReliable => 'Азаны сэрүүлэг найдвартай ажиллана';

  @override
  String get keepItUpYouReDoingGreat => 'Ингэсээр бай! Та маш сайн байна.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Апп хаалттай үед ч азан цагтаа сонсогдоно.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Ля хаула ва ля куввата илля биллях';

  @override
  String get laIlahaIllallah => 'Ля иляха иллаллах';

  @override
  String get language => 'Хэл';

  @override
  String get lapisLazuli => 'Лазурит';

  @override
  String get last7Days => 'Сүүлийн 7 хоног';

  @override
  String get later => 'ДАРАА';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Корантай хамт сайхан аялалаа эхлүүлье.';

  @override
  String get letSPersonalizeYourExperience => 'Аппыг өөрт тань\nтохируулъя';

  @override
  String get light => 'Гэрэлтэй';

  @override
  String get lightMode => 'Гэрэлтэй горим';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Өнөөдөр дурын аятыг сонсох эсвэл унших';

  @override
  String get locating => 'Байршлыг тогтоож байна...';

  @override
  String get location => 'Байршил';

  @override
  String get locationPermissionsAreDenied => 'Байршлын зөвшөөрөл олгогдоогүй';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Байршлын зөвшөөрөл бүрмөсөн хаагдсан.';

  @override
  String get locationServicesAreDisabled =>
      'Байршлын үйлчилгээ унтраалттай байна.';

  @override
  String get longestStreak => 'Хамгийн урт цуваа';

  @override
  String get maghrib => 'Магриб';

  @override
  String get maybeLater => 'Дараа нь';

  @override
  String get meccaSaudiArabia => 'Мекка, Саудын Араб';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Эзэн минь, уучилж, өршөөгөөч';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Эзэн минь, Таны буулгах аливаа сайн сайханд би гачигдаж байна';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Эзэн минь, миний мэдлэгийг нэмэгдүүлээч';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Эзэн минь, хөнгөвчилж, хүндрүүлэхгүй байгаач';

  @override
  String get n => 'Х';

  @override
  String get nameOptional => 'Нэр (заавал бус)';

  @override
  String get next => 'Дараах';

  @override
  String get nextDhikr => 'Дараагийн зикр';

  @override
  String get nextPrayer => 'ДАРААГИЙН НАМАЗ';

  @override
  String get night => 'ШӨНӨ';

  @override
  String get nightEmeraldInterface => 'Шөнийн маргад ногоон интерфейс';

  @override
  String get noBookmarksYet => 'Одоогоор хавчуурга алга';

  @override
  String get noon => 'ҮД';

  @override
  String get north => 'Хойд';

  @override
  String get northeast => 'Зүүн хойд';

  @override
  String get northwest => 'Баруун хойд';

  @override
  String get notificationsAlarm => 'Мэдэгдэл ба сэрүүлэг';

  @override
  String get notificationsForPrayerTimes => 'Намазын цагийн мэдэгдэл';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Өө Аллах, Мухаммадад ерөөл хайрла';

  @override
  String get oEverLivingOSustainer => 'Өө Мөнх Амьд, Өө Тэтгэн Оршоогч';

  @override
  String get openAutoStart => 'АВТОМАТ ЭХЛҮҮЛЭЛТИЙГ НЭЭХ';

  @override
  String get optimizeAdhanPerformance => 'Азаны ажиллагааг сайжруулах';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Эзэн минь, бидэнд энэ хорвоод сайн сайхныг хайрлаач';

  @override
  String get page => 'ХУУДАС';

  @override
  String get pearl => 'Сувд';

  @override
  String get personalizeYourAdhanNotifications =>
      'Азаны мэдэгдлээ тохируулаарай';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Ертөнцүүдийн Эзэн Аллахад магтаал буй';

  @override
  String get prayerAlarms => 'Намазын сэрүүлэг';

  @override
  String get prayerSchedule => 'Намазын хуваарь';

  @override
  String get prayerTimeNotifications => 'Намазын цагийн мэдэгдлүүд';

  @override
  String get prayerTimesAreLoading => 'Намазын цаг ачаалж байна';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Намазын цаг, кибла, Коран унших, тасбих — өдөр тутмын нэг хамтрагчид.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • КОРАН • КИБЛА';

  @override
  String get premiumThemes => 'Премиум загварууд';

  @override
  String get preparingYourSpiritualJourney =>
      'Сүнслэг аялалыг тань бэлдэж байна...';

  @override
  String get previousDhikr => 'Өмнөх зикр';

  @override
  String get privacyPolicy => 'Нууцлалын бодлого';

  @override
  String get qibla => 'Кибла';

  @override
  String get qiblaFinder => 'Кибла хайгч';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Коран';

  @override
  String get quranPlayback => 'Коран тоглуулах';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro нь намазын цаг, кибла, Коран унших, тасбихыг өдөр тутмын нэг энгийн хамтрагчид нэгтгэдэг.';

  @override
  String get quranProPreferences => 'Quran Pro тохиргоо';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro танилцуулга болон явцын тохиргоог энэ төхөөрөмж дээр хадгалдаг. Тогтвортой байдал, чанарыг сайжруулахад аналитик ашиглаж болно.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro таны тасбихын явцыг энэ төхөөрөмж дээр хадгалдаг. Аппын тогтвортой байдал, бүтээгдэхүүний чанарыг сайжруулахад аналитик ашиглаж болно.';

  @override
  String get quranRecitation => 'Коран уншлага';

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
  String get rateApp => 'Аппыг үнэлэх';

  @override
  String get rateQuranPro => 'Quran Pro-г үнэлэх';

  @override
  String get readListen => 'Унших ба сонсох';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Коран судрыг сайхан уншлагатай уншаарай.';

  @override
  String get recent => 'Сүүлд';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo, Huawei-д зөвлөж байна';

  @override
  String get redCarnelian => 'Улаан сердолик';

  @override
  String get remindMeAt => 'Сануулах цаг';

  @override
  String get removeAds => 'Сурталчилгаа арилгах';

  @override
  String get requestingLocationPermission =>
      'Байршлын зөвшөөрөл хүсэж байна...';

  @override
  String get reset => 'Тэглэх';

  @override
  String get retry => 'Дахин оролдох';

  @override
  String get returnToCompass => 'Луужин руу буцах';

  @override
  String get s => 'У';

  @override
  String get save => 'Хадгалах';

  @override
  String get saveGoal => 'Зорилгыг хадгалах';

  @override
  String get searchSurahNumberArabic => 'Сура, дугаар, араб хайх...';

  @override
  String get searchSurah => 'Сура хайх...';

  @override
  String get selectLanguage => 'Хэл сонгох';

  @override
  String get selectTheThemeYouLike => 'Таалагдсан загвараа сонгоно уу';

  @override
  String get selectYourBead => 'Эрихийн сувсаа сонгоно уу';

  @override
  String get shop => 'Дэлгүүр';

  @override
  String get shopCustomization => 'Дэлгүүр ба тохируулга';

  @override
  String get sound => 'Дуу';

  @override
  String get south => 'Урд';

  @override
  String get southeast => 'Зүүн урд';

  @override
  String get southwest => 'Баруун урд';

  @override
  String get specialOccasionsAndMore => 'Онцгой өдрүүд ба бусад';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Дэлгүүрийн үнэлгээ нь аппын хуудас нийтлэгдсэний дараа холбогдоно.';

  @override
  String get subhanallahiWaBihamdihi => 'СубханАллахи ва бихамдихи';

  @override
  String get subhanallahilAzim => 'СубханАллахиль Азим';

  @override
  String get sunset => 'НАР ЖАРГАХ';

  @override
  String get supportQuranProOnTheStore => 'Дэлгүүрт Quran Pro-г дэмжээрэй';

  @override
  String get surah => 'Сура';

  @override
  String get tasbih => 'Тасбих';

  @override
  String get tasbihSettings => 'Тасбихын тохиргоо';

  @override
  String get tellUsWhatToImprove => 'Юуг сайжруулахыг бидэнд хэлээрэй';

  @override
  String get termsOfUse => 'Ашиглах нөхцөл';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro-г ашигласанд баярлалаа. Дэлгүүрийн үнэлгээ нь аппын хуудас нийтлэгдсэний дараа холбогдоно.';

  @override
  String get thereIsNoDeityExceptAllah => 'Аллахаас өөр бурхан үгүй';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Аллахаас өөр хүч ч, чадал ч үгүй';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Энэ нь сануулгыг тохируулж, таны явцыг хянахад тусална.';

  @override
  String get tigerSEye => 'Барын нүд';

  @override
  String get today => 'Өнөөдөр';

  @override
  String get total => 'Нийт';

  @override
  String get totalHasanat => 'НИЙТ ХАСАНАТ';

  @override
  String get trackProgress => 'Явцыг хянах';

  @override
  String get trackYourReadingAndAchievements => 'Уншлага, амжилтаа хянаарай.';

  @override
  String get tryAgain => 'Дахин оролдох';

  @override
  String get undo => 'Буцаах';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Бүх загвар, тохируулгыг нээх';

  @override
  String get usageGuidelines => 'Ашиглалтын журам';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro-г хувийн мөргөл, суралцахуй, өдөр тутмын Исламын зан үйлд хүндэтгэлтэйгээр ашиглана уу.';

  @override
  String get viewAll => 'Бүгдийг харах';

  @override
  String get w => 'Б';

  @override
  String get welcome => 'Тавтай морил';

  @override
  String get west => 'Баруун';

  @override
  String get yaHayyuYaQayyum => 'Я Хайю Я Кайюм';

  @override
  String get youReAllSet => 'Бүх зүйл бэлэн!';

  @override
  String get yourProgress => 'Таны явц';

  @override
  String get continueLabel => 'Үргэлжлүүлэх';

  @override
  String get amethyst => 'Аметист';

  @override
  String get indonesian => 'Индонези';

  @override
  String get turkish => 'Турк';

  @override
  String get vietnamese => 'Вьетнам';

  @override
  String get turquoise => 'Оюу';

  @override
  String get wood => 'Мод';

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
