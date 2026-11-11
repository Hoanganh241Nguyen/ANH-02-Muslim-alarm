// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get week => 'Седмица';

  @override
  String get month => 'Месец';

  @override
  String get lifetime => 'Све време';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Застаните на тренутак од посла и посветите време Аллаху.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return 'Производ $id није доступан за куповину.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Куповина $productId је успешна!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Куповина $productId је обновљена!';
  }

  @override
  String daysCount(Object count) {
    return '$count дана';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'СЛЕДИ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Удаљеност до Меке: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Подсети ме за $minutes минута';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Наступило је време за $prayerName намаз';
  }

  @override
  String roundValue(Object round) {
    return 'Круг: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Изабран језик: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Џуз $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Страница $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Хизб $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ајет $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ајета';
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
    return 'НИВО $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Сура Ел-Бекара 2:238)';

  @override
  String get text1juz => '1 џуз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 страница';

  @override
  String get text100dhikr => '100 зикрова';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 страница';

  @override
  String get text28cclearsky => '28°C - Ведро';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 страница';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'О апликацији';

  @override
  String get aboutQuranPro => 'О Quran Pro';

  @override
  String get activity => 'Активност';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Реклама се учитава. Покушајте поново ускоро.';

  @override
  String get addCustomDhikr => 'Додај сопствени зикр';

  @override
  String get addCustomDhikr2 => 'Додај сопствени зикр';

  @override
  String get addDhikr => 'Додај зикр';

  @override
  String get adjustPosition => 'ПОДЕСИ ПОЛОЖАЈ';

  @override
  String get afternoon => 'ПОПОДНЕ';

  @override
  String get alMasjidAlHaram => 'Месџидул-харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Елхамдулиллахи Раббил алемин';

  @override
  String get alignedToQibla => 'УСМЕРЕНО ПРЕМА КИБЛИ';

  @override
  String get allPraiseIsDueToAllah => 'Сва хвала припада Аллаху';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Све премијум могућности по сниженој цени';

  @override
  String get allInOneQuranApp => 'Кур\'анска апликација све у једном';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Аллах ми је довољан; нема бога осим Њега';

  @override
  String get allahIsTheGreatest => 'Аллах је највећи';

  @override
  String get allahuAkbar => 'Аллаху екбер';

  @override
  String get allahummaSalliAlaMuhammad => 'Аллахумме салли ала Мухаммед';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Дозволите приступ локацији или додирните Покушај поново за резервни распоред.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Дозволите обавештења да бисте примали вактове и дневне подсетнике.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Дозволите апликацији рад у позадини';

  @override
  String get app => 'Апликација';

  @override
  String get arabic => 'Арапски';

  @override
  String get asr => 'Икиндија';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Еузу биллахи мине-шејтанир-раџим';

  @override
  String get avg => 'Прос.';

  @override
  String get ayah => 'Ајет';

  @override
  String get batteryOptimization => 'Оптимизација батерије';

  @override
  String get beautifulWidgets => 'Прелепи виџети';

  @override
  String get bestValue => 'НАЈПОВОЉНИЈЕ';

  @override
  String get blackOnyx => 'Црни оникс';

  @override
  String get bookmarks => 'Обележивачи';

  @override
  String get brightIvoryInterface => 'Светли интерфејс боје слоноваче';

  @override
  String get calculatingDistance => 'Рачунање удаљености...';

  @override
  String get calibrateYourDirection => 'Калибришите смер';

  @override
  String get cancel => 'Откажи';

  @override
  String get change => 'Промени';

  @override
  String get changeTasbihMode => 'Променити режим тесбиха?';

  @override
  String get chooseDhikr => 'Изабери зикр';

  @override
  String get chooseDisplayLanguage => 'Изаберите језик приказа';

  @override
  String get chooseTheme => 'Изабери тему';

  @override
  String get chooseYourPreferredLanguage => 'Изаберите жељени језик';

  @override
  String get clickOrSwipeToCount => 'Додирните или превуците за бројање';

  @override
  String get close => 'Затвори';

  @override
  String get closeCustomGoal => 'Затвори сопствени циљ';

  @override
  String get completeAtLeast33Dhikr => 'Завршите најмање 33 зикра';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Повежите своје срце са часним Кур\'аном.';

  @override
  String get continueReading => 'Настави читање';

  @override
  String get countsPerRound => 'Број у кругу';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Уредите своју колекцију мајсторски израђеним духовним драгуљима.';

  @override
  String get current => 'ТРЕНУТНО';

  @override
  String get current2 => 'Тренутно';

  @override
  String get currentLocationToMecca => 'Од тренутне локације до Меке';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Тренутни напредак ће се поништити за нови режим.';

  @override
  String get currentStreak => 'Тренутни низ';

  @override
  String get custom => 'Прилагођено';

  @override
  String get customDhikr => 'Сопствени зикр';

  @override
  String get customGoal => 'Сопствени циљ';

  @override
  String get customPrayerSounds => 'Сопствени звуци езана';

  @override
  String get dailyGoal => 'Дневни циљ';

  @override
  String get dailyQuests => 'Дневни задаци';

  @override
  String get dailyQuranReminder => 'Дневни подсетник за Кур\'ан';

  @override
  String get dailyReminders => 'Дневни подсетници';

  @override
  String get dailyTasbih => 'Дневни тесбих';

  @override
  String get dark => 'Тамна';

  @override
  String get dawn => 'ЗОРА';

  @override
  String get debug => 'Отклањање грешака';

  @override
  String get dhikr => 'Зикр';

  @override
  String get dhikrActivity => 'Активност зикра';

  @override
  String get dhuAlHijjah => 'Зул-хиџџе';

  @override
  String get dhuAlQadah => 'Зул-каде';

  @override
  String get dhuhr => 'Подне';

  @override
  String get direction => 'СМЕР';

  @override
  String get disableBatteryOptimization => 'Искључите оптимизацију батерије';

  @override
  String get disableOptimization => 'ИСКЉУЧИ ОПТИМИЗАЦИЈУ';

  @override
  String get distance => 'УДАЉЕНОСТ';

  @override
  String get e => 'И';

  @override
  String get eGHasbunallah => 'нпр. Хасбуналлах';

  @override
  String get east => 'Исток';

  @override
  String get enableAutoStart => 'Омогући аутоматско покретање';

  @override
  String get enableNotifications => 'Омогући обавештења';

  @override
  String get enableReminders => 'Омогући подсетнике';

  @override
  String get english => 'Енглески';

  @override
  String get enterYourName => 'Унесите своје име';

  @override
  String get equipped => 'АКТИВНО';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Све што вам треба за бољи доживљај Кур\'ана.';

  @override
  String get fajr => 'Сабах';

  @override
  String get feedback => 'Повратне информације';

  @override
  String get first => 'Први';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'За најтачније резултате држите телефон водоравно и подаље од магнетних предмета.';

  @override
  String get free => 'Бесплатно';

  @override
  String get fullBundle => 'Комплетан пакет';

  @override
  String get getAnAdFreeExperienceForever => 'Уживајте заувек без реклама';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Примајте подсетнике за учење и будите доследни.';

  @override
  String get getStarted => 'Започни';

  @override
  String get gloryAndPraiseBeToAllah => 'Слављен и хваљен нека је Аллах';

  @override
  String get gloryBeToAllah => 'Слављен нека је Аллах';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'Слављен нека је Аллах, Величанствени';

  @override
  String get goToHome => 'Иди на почетну';

  @override
  String get goldenEngraved => 'Златно гравирано';

  @override
  String get greenJade => 'Зелени жад';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханој, Вијетнам';

  @override
  String get haptic => 'Вибрација';

  @override
  String get hasanatHub => 'Центар хасената';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбијаллаху ла илахе илла Хуве';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Почетна';

  @override
  String get howYourDataIsHandled => 'Како се поступа са вашим подацима';

  @override
  String get iSeekForgivenessFromAllah => 'Тражим опрост од Аллаха';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Утичем се Аллаху од проклетог шејтана';

  @override
  String get immediateAlerts => 'Тренутна упозорења';

  @override
  String get inTheNameOfAllah => 'У име Аллаха';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Ми Аллаху припадамо и Њему се враћамо';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Инна лиллахи ве инна илејхи раџиун';

  @override
  String get isha => 'Јација';

  @override
  String get jumadaAlAwwal => 'Џумадел-ула';

  @override
  String get jumadaAlThani => 'Џумадел-ухра';

  @override
  String get juz => 'ЏУЗ';

  @override
  String get juz2 => 'Џуз';

  @override
  String get keepAdhanAlarmsReliable => 'Нека езан аларми буду поуздани';

  @override
  String get keepItUpYouReDoingGreat => 'Само напред! Одлично вам иде.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Езан остаје поуздан и када је апликација затворена.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Ла хавле ве ла кувете илла биллах';

  @override
  String get laIlahaIllallah => 'Ла илахе иллаллах';

  @override
  String get language => 'Језик';

  @override
  String get lapisLazuli => 'Лапис лазули';

  @override
  String get last7Days => 'Последњих 7 дана';

  @override
  String get later => 'КАСНИЈЕ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Започнимо ваше лепо путовање са Кур\'аном.';

  @override
  String get letSPersonalizeYourExperience => 'Прилагодимо\nваше искуство';

  @override
  String get light => 'Светла';

  @override
  String get lightMode => 'Светли режим';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Послушајте или проучите било који ајет данас';

  @override
  String get locating => 'Тражење локације...';

  @override
  String get location => 'Локација';

  @override
  String get locationPermissionsAreDenied => 'Приступ локацији је одбијен';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Приступ локацији је трајно одбијен.';

  @override
  String get locationServicesAreDisabled => 'Услуге локације су искључене.';

  @override
  String get longestStreak => 'Најдужи низ';

  @override
  String get maghrib => 'Акшам';

  @override
  String get maybeLater => 'Можда касније';

  @override
  String get meccaSaudiArabia => 'Мека, Саудијска Арабија';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Господару мој, опрости и смилуј се';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Господару мој, потребно ми је свако добро које ми спустиш';

  @override
  String get myLordIncreaseMeInKnowledge => 'Господару мој, повећај ми знање';

  @override
  String get myLordMakeItEasyAndDoNot => 'Господару мој, олакшај, а не отежај';

  @override
  String get n => 'С';

  @override
  String get nameOptional => 'Име (није обавезно)';

  @override
  String get next => 'Даље';

  @override
  String get nextDhikr => 'Следећи зикр';

  @override
  String get nextPrayer => 'СЛЕДЕЋИ НАМАЗ';

  @override
  String get night => 'НОЋ';

  @override
  String get nightEmeraldInterface => 'Ноћни смарагдни интерфејс';

  @override
  String get noBookmarksYet => 'Још нема обележивача';

  @override
  String get noon => 'ПОДНЕ';

  @override
  String get north => 'Север';

  @override
  String get northeast => 'Североисток';

  @override
  String get northwest => 'Северозапад';

  @override
  String get notificationsAlarm => 'Обавештења и аларм';

  @override
  String get notificationsForPrayerTimes => 'Обавештења за вактове';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Аллаху мој, благослови Мухаммеда';

  @override
  String get oEverLivingOSustainer => 'О Вечно Живи, о Одржаваоче';

  @override
  String get openAutoStart => 'ОТВОРИ АУТОМАТСКО ПОКРЕТАЊЕ';

  @override
  String get optimizeAdhanPerformance => 'Оптимизујте рад езана';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Господару наш, подари нам добро на овом свету';

  @override
  String get page => 'СТРАНИЦА';

  @override
  String get pearl => 'Бисер';

  @override
  String get personalizeYourAdhanNotifications =>
      'Прилагодите обавештења за езан';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Хвала Аллаху, Господару светова';

  @override
  String get prayerAlarms => 'Аларми за намаз';

  @override
  String get prayerSchedule => 'Вактија';

  @override
  String get prayerTimeNotifications => 'Обавештења о вактовима';

  @override
  String get prayerTimesAreLoading => 'Вактови се учитавају';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Вактови, кибла, учење Кур\'ана и тесбих у једном дневном пратиоцу.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • КУР\'АН • КИБЛА';

  @override
  String get premiumThemes => 'Премијум теме';

  @override
  String get preparingYourSpiritualJourney =>
      'Припремамо ваше духовно путовање...';

  @override
  String get previousDhikr => 'Претходни зикр';

  @override
  String get privacyPolicy => 'Политика приватности';

  @override
  String get qibla => 'Кибла';

  @override
  String get qiblaFinder => 'Тражилац кибле';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Кур\'ан';

  @override
  String get quranPlayback => 'Репродукција Кур\'ана';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro обједињује вактове, киблу, учење Кур\'ана и тесбих у једном једноставном дневном пратиоцу.';

  @override
  String get quranProPreferences => 'Подешавања Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro чува подешавања увода и напретка локално на овом уређају. Аналитика се може користити за побољшање стабилности и квалитета.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro чува ваш напредак у тесбиху локално на овом уређају. Аналитика се може користити за побољшање стабилности апликације и квалитета производа.';

  @override
  String get quranRecitation => 'Учење Кур\'ана';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Раббена атина фид-дунја хасенех';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Рабби инни лима ензелте илејје мин хајрин факир';

  @override
  String get rabbiYassirWaLaTuassir => 'Рабби јессир ве ла туассир';

  @override
  String get rabbiZidniIlma => 'Рабби зидни илма';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Раббигфир верхам ве енте хајрур-рахимин';

  @override
  String get rabiAlAwwal => 'Ребиул-евел';

  @override
  String get rabiAlThani => 'Ребиул-ахир';

  @override
  String get rateApp => 'Оцените апликацију';

  @override
  String get rateQuranPro => 'Оцените Quran Pro';

  @override
  String get readListen => 'Читај и слушај';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Учите Кур\'ан уз прелепа учења.';

  @override
  String get recent => 'Недавно';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Препоручено за Xiaomi, Oppo, Vivo и Huawei';

  @override
  String get redCarnelian => 'Црвени карнеол';

  @override
  String get remindMeAt => 'Подсети ме у';

  @override
  String get removeAds => 'Уклони рекламе';

  @override
  String get requestingLocationPermission => 'Тражење дозволе за локацију...';

  @override
  String get reset => 'Ресетуј';

  @override
  String get retry => 'Покушај поново';

  @override
  String get returnToCompass => 'Назад на компас';

  @override
  String get s => 'Ј';

  @override
  String get save => 'Сачувај';

  @override
  String get saveGoal => 'Сачувај циљ';

  @override
  String get searchSurahNumberArabic => 'Претражи суру, број, арапски...';

  @override
  String get searchSurah => 'Претражи суру...';

  @override
  String get selectLanguage => 'Изабери језик';

  @override
  String get selectTheThemeYouLike => 'Изаберите тему која вам се свиђа';

  @override
  String get selectYourBead => 'Изаберите зрно тесбиха';

  @override
  String get shop => 'Продавница';

  @override
  String get shopCustomization => 'Продавница и прилагођавања';

  @override
  String get sound => 'Звук';

  @override
  String get south => 'Југ';

  @override
  String get southeast => 'Југоисток';

  @override
  String get southwest => 'Југозапад';

  @override
  String get specialOccasionsAndMore => 'Посебне прилике и још много тога';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Оцењивање у продавници биће омогућено када продукцијска страница буде спремна.';

  @override
  String get subhanallahiWaBihamdihi => 'Субханаллахи ве бихамдихи';

  @override
  String get subhanallahilAzim => 'Субханаллахил азим';

  @override
  String get sunset => 'ЗАЛАЗАК СУНЦА';

  @override
  String get supportQuranProOnTheStore => 'Подржите Quran Pro у продавници';

  @override
  String get surah => 'Сура';

  @override
  String get tasbih => 'Тесбих';

  @override
  String get tasbihSettings => 'Подешавања тесбиха';

  @override
  String get tellUsWhatToImprove => 'Реците нам шта да побољшамо';

  @override
  String get termsOfUse => 'Услови коришћења';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Хвала што користите Quran Pro. Оцењивање у продавници биће омогућено када продукцијска страница буде спремна.';

  @override
  String get thereIsNoDeityExceptAllah => 'Нема бога осим Аллаха';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Нема снаге ни моћи осим код Аллаха';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Ово нам помаже да прилагодимо подсетнике и пратимо ваш напредак.';

  @override
  String get tigerSEye => 'Тигрово око';

  @override
  String get today => 'Данас';

  @override
  String get total => 'Укупно';

  @override
  String get totalHasanat => 'УКУПНО ХАСЕНАТА';

  @override
  String get trackProgress => 'Прати напредак';

  @override
  String get trackYourReadingAndAchievements =>
      'Пратите своје учење и постигнућа.';

  @override
  String get tryAgain => 'Покушај поново';

  @override
  String get undo => 'Поништи';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Откључајте све теме и прилагођавања апликације';

  @override
  String get usageGuidelines => 'Смернице за коришћење';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Користите Quran Pro са поштовањем за лични ибадет, учење и свакодневне исламске навике.';

  @override
  String get viewAll => 'Прикажи све';

  @override
  String get w => 'З';

  @override
  String get welcome => 'Добро дошли';

  @override
  String get west => 'Запад';

  @override
  String get yaHayyuYaQayyum => 'Ја Хајју ја Кајјум';

  @override
  String get youReAllSet => 'Све је спремно!';

  @override
  String get yourProgress => 'Ваш напредак';

  @override
  String get continueLabel => 'Настави';

  @override
  String get amethyst => 'Аметист';

  @override
  String get indonesian => 'Индонежански';

  @override
  String get turkish => 'Турски';

  @override
  String get vietnamese => 'Вијетнамски';

  @override
  String get turquoise => 'Тиркиз';

  @override
  String get wood => 'Дрво';

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
