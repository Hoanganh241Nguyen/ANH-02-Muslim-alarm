// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kurdish (`ku`).
class AppLocalizationsKu extends AppLocalizations {
  AppLocalizationsKu([String locale = 'ku']) : super(locale);

  @override
  String get week => 'Hefte';

  @override
  String get month => 'Meh';

  @override
  String get lifetime => 'Hemû dem';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ji karê xwe bêhnekê bide û ji bo Allah wextekî veqetîne.';

  @override
  String get prayerAlarmDefaultName => 'Nimêj';

  @override
  String productUnavailable(Object id) {
    return 'Berhema $id ji bo kirînê tune ye.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Kirîna $productId bi serkeftî pêk hat!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Kirîna $productId hate vegerandin!';
  }

  @override
  String daysCount(Object count) {
    return '$count roj';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'YA BÊ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Dûrahiya Mekkeyê: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Piştî $minutes deqîqeyan bi bîr bîne';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Wextê nimêja $prayerName e';
  }

  @override
  String roundValue(Object round) {
    return 'Dor: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language hat hilbijartin';
  }

  @override
  String juzNumber(Object juz) {
    return 'Cuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Rûpel $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: Ayet $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ayet';
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
    return 'AST $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sûreya El-Beqere 2:238)';

  @override
  String get text1juz => '1 cuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 rûpel';

  @override
  String get text100dhikr => '100 zikir';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 rûpel';

  @override
  String get text28cclearsky => '28°C - Ezmanê Sayî';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 rûpel';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Derbarê';

  @override
  String get aboutQuranPro => 'Derbarê Quran Pro';

  @override
  String get activity => 'Çalakî';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklam tê barkirin. Ji kerema xwe piştî demekê dîsa biceribîne.';

  @override
  String get addCustomDhikr => 'Zikrê taybet zêde bike';

  @override
  String get addCustomDhikr2 => 'Zikrê Taybet Zêde Bike';

  @override
  String get addDhikr => 'Zikir Zêde Bike';

  @override
  String get adjustPosition => 'POZÎSYONÊ SAZ BIKE';

  @override
  String get afternoon => 'PIŞTÎ NÎVRO';

  @override
  String get alMasjidAlHaram => 'El-Mescîdul-Heram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'BER BI QIBLEYÊ VE';

  @override
  String get allPraiseIsDueToAllah => 'Hemû pesin ji bo Allah in';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Hemû taybetmendiyên premium bi bihayekî erzantir';

  @override
  String get allInOneQuranApp => 'Hemû tişt di yek sepana Qur\'anê de';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah ji min re bes e; ji bilî Wî tu îlah tune ye';

  @override
  String get allahIsTheGreatest => 'Allah ji her tiştî mezintir e';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Destûra cih bide an jî pêl «Dîsa biceribîne» bike da ku bernameya alternatîf were bikaranîn.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Ji bo wergirtina wextên nimêjê û bîrxistinên rojane destûrê bide agahdariyan.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Destûrê bide sepanê ku di paşperdeyê de bixebite';

  @override
  String get app => 'Sepan';

  @override
  String get arabic => 'Erebî';

  @override
  String get asr => 'Esir';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Nav.';

  @override
  String get ayah => 'Ayet';

  @override
  String get batteryOptimization => 'Optîmîzekirina Bataryayê';

  @override
  String get beautifulWidgets => 'Widgetên xweşik';

  @override
  String get bestValue => 'TEKLÎFA HERÎ BAŞ';

  @override
  String get blackOnyx => 'Onîksa Reş';

  @override
  String get bookmarks => 'Rûpelnîşan';

  @override
  String get brightIvoryInterface => 'Navrûya ronî ya fîldînî';

  @override
  String get calculatingDistance => 'Dûrahî tê hesibandin...';

  @override
  String get calibrateYourDirection => 'Arasteya xwe eyar bike';

  @override
  String get cancel => 'Betal bike';

  @override
  String get change => 'Biguhere';

  @override
  String get changeTasbihMode => 'Moda tizbiyê bê guhertin?';

  @override
  String get chooseDhikr => 'Zikir hilbijêre';

  @override
  String get chooseDisplayLanguage => 'Zimanê nîşandanê hilbijêre';

  @override
  String get chooseTheme => 'Temayê Hilbijêre';

  @override
  String get chooseYourPreferredLanguage => 'Zimanê xwe yê bijarte hilbijêre';

  @override
  String get clickOrSwipeToCount => 'Ji bo jimartinê bitikîne an bişemitîne';

  @override
  String get close => 'Bigire';

  @override
  String get closeCustomGoal => 'Armanca taybet bigire';

  @override
  String get completeAtLeast33Dhikr => 'Herî kêm 33 zikir temam bike';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Dilê xwe bi Qur\'ana pîroz ve girê bide.';

  @override
  String get continueReading => 'Xwendinê Bidomîne';

  @override
  String get countsPerRound => 'Jimar di her dorê de';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Berhevoka xwe bi kevirên ruhanî yên bi destên hosta hatine çêkirin xemilîne.';

  @override
  String get current => 'YA NIHA';

  @override
  String get current2 => 'Ya niha';

  @override
  String get currentLocationToMecca => 'Ji cihê niha heta Mekkeyê';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Pêşketina niha ji bo moda nû wê sifir bibe.';

  @override
  String get currentStreak => 'Rêzeya Niha';

  @override
  String get custom => 'Taybet';

  @override
  String get customDhikr => 'Zikrê taybet';

  @override
  String get customGoal => 'Armanca Taybet';

  @override
  String get customPrayerSounds => 'Dengên Nimêjê yên Taybet';

  @override
  String get dailyGoal => 'Armanca Rojane';

  @override
  String get dailyQuests => 'Erkên Rojane';

  @override
  String get dailyQuranReminder => 'Bîrxistina rojane ya Qur\'anê';

  @override
  String get dailyReminders => 'Bîrxistinên Rojane';

  @override
  String get dailyTasbih => 'Tizbiya Rojane';

  @override
  String get dark => 'Tarî';

  @override
  String get dawn => 'BERBANG';

  @override
  String get debug => 'Rastkirina çewtiyan';

  @override
  String get dhikr => 'Zikir';

  @override
  String get dhikrActivity => 'Çalakiya zikir';

  @override
  String get dhuAlHijjah => 'Zilhicce';

  @override
  String get dhuAlQadah => 'Zilqade';

  @override
  String get dhuhr => 'Nîvro';

  @override
  String get direction => 'ARASTE';

  @override
  String get disableBatteryOptimization =>
      'Optîmîzekirina Bataryayê Neçalak Bike';

  @override
  String get disableOptimization => 'OPTÎMÎZEKIRINÊ NEÇALAK BIKE';

  @override
  String get distance => 'DÛRAHÎ';

  @override
  String get e => 'Rh';

  @override
  String get eGHasbunallah => 'wek HasbunAllah';

  @override
  String get east => 'Rojhilat';

  @override
  String get enableAutoStart => 'Xwe-destpêkirinê Çalak Bike';

  @override
  String get enableNotifications => 'Agahdariyan Çalak Bike';

  @override
  String get enableReminders => 'Bîrxistinan Çalak Bike';

  @override
  String get english => 'Îngilîzî';

  @override
  String get enterYourName => 'Navê xwe binivîse';

  @override
  String get equipped => 'TÊ BIKARANÎN';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Ji bo ezmûneke Qur\'anê ya çêtir her tişt.';

  @override
  String get fajr => 'Beyanî';

  @override
  String get feedback => 'Bertek';

  @override
  String get first => 'Yekem';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Ji bo encamên herî rast, telefona xwe rast bigire û ji tiştên magnetîk dûr bixe.';

  @override
  String get free => 'Belaş';

  @override
  String get fullBundle => 'Pakêta Tevahî';

  @override
  String get getAnAdFreeExperienceForever => 'Her û her bê reklam bikar bîne';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Bila bê bîra te ku bixwînî û berdewam bî.';

  @override
  String get getStarted => 'Dest pê bike';

  @override
  String get gloryAndPraiseBeToAllah => 'Pakî û pesin ji bo Allah in';

  @override
  String get gloryBeToAllah => 'Pakî ji bo Allah e';

  @override
  String get gloryBeToAllahTheMagnificent => 'Pakî ji bo Allahê Mezin e';

  @override
  String get goToHome => 'Here Destpêkê';

  @override
  String get goldenEngraved => 'Zêrê Neqişandî';

  @override
  String get greenJade => 'Yeşma Kesk';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Viyetnam';

  @override
  String get haptic => 'Lerz';

  @override
  String get hasanatHub => 'Navenda Hesenatê';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Destpêk';

  @override
  String get howYourDataIsHandled => 'Daneyên te çawa tên birêvebirin';

  @override
  String get iSeekForgivenessFromAllah => 'Ez ji Allah lêborînê dixwazim';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Ez ji şeytanê ricîm xwe davêjim ber Allah';

  @override
  String get immediateAlerts => 'Hişyariyên tavilê';

  @override
  String get inTheNameOfAllah => 'Bi navê Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Bi rastî em ên Allah in û em ê vegerin cem Wî';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Îşa';

  @override
  String get jumadaAlAwwal => 'Cemaziyelewwel';

  @override
  String get jumadaAlThani => 'Cemaziyelahir';

  @override
  String get juz => 'CUZ';

  @override
  String get juz2 => 'Cuz';

  @override
  String get keepAdhanAlarmsReliable => 'Hişyariyên bangê pêbawer bihêle';

  @override
  String get keepItUpYouReDoingGreat => 'Wisa bidomîne! Tu gelek baş dikî.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Bila bangên nimêjê dema sepan girtî be jî pêbawer bimînin.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Ziman';

  @override
  String get lapisLazuli => 'Lacîwerd';

  @override
  String get last7Days => '7 Rojên Dawî';

  @override
  String get later => 'PAŞÊ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Werin em rêwîtiya te ya xweş bi Qur\'anê re dest pê bikin.';

  @override
  String get letSPersonalizeYourExperience =>
      'Werin em ezmûna te\ntaybet bikin';

  @override
  String get light => 'Ronî';

  @override
  String get lightMode => 'Moda Ronî';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Îro ayetekê guhdarî bike an bixwîne';

  @override
  String get locating => 'Cih tê dîtin...';

  @override
  String get location => 'Cih';

  @override
  String get locationPermissionsAreDenied => 'Destûrên cih hatine red kirin';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Destûrên cih bi awayekî mayînde hatine red kirin.';

  @override
  String get locationServicesAreDisabled => 'Servîsên cih neçalak in.';

  @override
  String get longestStreak => 'Rêzeya Herî Dirêj';

  @override
  String get maghrib => 'Mexrib';

  @override
  String get maybeLater => 'Belkî paşê';

  @override
  String get meccaSaudiArabia => 'Mekke, Erebistana Siûdî';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Ya Rebbê min, bibexşîne û rehmê bike';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Ya Rebbê min, ez hewceyê her xêra ku Tu dişînî me';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Ya Rebbê min, zanîna min zêde bike';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Ya Rebbê min, hêsan bike û zehmet neke';

  @override
  String get n => 'Bk';

  @override
  String get nameOptional => 'Nav (ne mecbûrî)';

  @override
  String get next => 'Pêş';

  @override
  String get nextDhikr => 'Zikrê bê';

  @override
  String get nextPrayer => 'NIMÊJA BÊ';

  @override
  String get night => 'ŞEV';

  @override
  String get nightEmeraldInterface => 'Navrûya şevê ya zimrûdî';

  @override
  String get noBookmarksYet => 'Hêj rûpelnîşan tune ne';

  @override
  String get noon => 'NÎVRO';

  @override
  String get north => 'Bakur';

  @override
  String get northeast => 'Bakurê Rojhilat';

  @override
  String get northwest => 'Bakurê Rojava';

  @override
  String get notificationsAlarm => 'Agahdarî û Hişyarî';

  @override
  String get notificationsForPrayerTimes => 'Agahdarî ji bo wextên nimêjê';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Ya Allah, salawatê li Muhammed bişîne';

  @override
  String get oEverLivingOSustainer => 'Ey Zindiyê Herheyî, Ey Xwedanê Hebûnê';

  @override
  String get openAutoStart => 'XWE-DESTPÊKIRINÊ VEKE';

  @override
  String get optimizeAdhanPerformance => 'Performansa Bangê Baştir Bike';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Ya Rebbê me, di vê dinyayê de xêrê bide me';

  @override
  String get page => 'RÛPEL';

  @override
  String get pearl => 'Mirwarî';

  @override
  String get personalizeYourAdhanNotifications =>
      'Agahdariyên bangê taybet bike';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Pesin ji bo Allah, Xwedanê hemû cîhanan';

  @override
  String get prayerAlarms => 'Hişyariyên Nimêjê';

  @override
  String get prayerSchedule => 'Bernameya Nimêjê';

  @override
  String get prayerTimeNotifications => 'Agahdariyên wextê nimêjê';

  @override
  String get prayerTimesAreLoading => 'Wextên nimêjê tên barkirin';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Wextên nimêjê, qible, xwendina Qur\'anê û tizbî di yek hevalê rojane de.';

  @override
  String get prayerQuranQibla => 'NIMÊJ • QUR\'AN • QIBLE';

  @override
  String get premiumThemes => 'Temayên Premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Rêwîtiya te ya ruhanî tê amadekirin...';

  @override
  String get previousDhikr => 'Zikrê berê';

  @override
  String get privacyPolicy => 'Polîtîkaya Nepenîtiyê';

  @override
  String get qibla => 'Qible';

  @override
  String get qiblaFinder => 'Qiblenîşan';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Qur\'an';

  @override
  String get quranPlayback => 'Lêdana Qur\'anê';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro wextên nimêjê, qible, xwendina Qur\'anê û tizbiyê dixe nav yek hevalê rojane yê hêsan.';

  @override
  String get quranProPreferences => 'Vebijarkên Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro vebijarkên destpêkê û pêşketinê li ser vê amûrê bi cih dike. Ji bo baştirkirina aramî û kalîteyê dibe ku analîtîk bê bikaranîn.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro pêşketina te ya tizbiyê li ser vê amûrê bi cih dike. Ji bo baştirkirina aramiya sepanê û kalîteya berhemê dibe ku analîtîk bê bikaranîn.';

  @override
  String get quranRecitation => 'Tîlaweta Qur\'anê';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Rabbana atina fid-dunya hasanah';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Rabbi inni lima anzalta ilayya min khayrin faqir';

  @override
  String get rabbiYassirWaLaTuassir => 'Rabbi yassir wa la tuassir';

  @override
  String get rabbiZidniIlma => 'Rabbi zidni ilma';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Rabbighfir warham wa anta khayrur rahimin';

  @override
  String get rabiAlAwwal => 'Rebîulewwel';

  @override
  String get rabiAlThani => 'Rebîulahir';

  @override
  String get rateApp => 'Sepanê binirxîne';

  @override
  String get rateQuranPro => 'Quran Pro binirxîne';

  @override
  String get readListen => 'Bixwîne û Guhdarî Bike';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Qur\'anê bi tîlawetên xweş bixwîne.';

  @override
  String get recent => 'Yên dawî';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Ji bo Xiaomi, Oppo, Vivo û Huawei tê pêşniyarkirin';

  @override
  String get redCarnelian => 'Eqîqa Sor';

  @override
  String get remindMeAt => 'Wextê Bîrxistinê';

  @override
  String get removeAds => 'Reklaman Rake';

  @override
  String get requestingLocationPermission => 'Destûra cih tê xwestin...';

  @override
  String get reset => 'Sifir bike';

  @override
  String get retry => 'Dîsa biceribîne';

  @override
  String get returnToCompass => 'Vegere Pusulayê';

  @override
  String get s => 'Bş';

  @override
  String get save => 'Tomar bike';

  @override
  String get saveGoal => 'Armancê Tomar Bike';

  @override
  String get searchSurahNumberArabic => 'Sûre, hejmar, erebî bigere...';

  @override
  String get searchSurah => 'Sûreyê bigere...';

  @override
  String get selectLanguage => 'Ziman Hilbijêre';

  @override
  String get selectTheThemeYouLike => 'Temaya ku tu jê hez dikî hilbijêre';

  @override
  String get selectYourBead => 'Morîka Xwe Hilbijêre';

  @override
  String get shop => 'Dikan';

  @override
  String get shopCustomization => 'Dikan û Taybetkirin';

  @override
  String get sound => 'Deng';

  @override
  String get south => 'Başûr';

  @override
  String get southeast => 'Başûrê Rojhilat';

  @override
  String get southwest => 'Başûrê Rojava';

  @override
  String get specialOccasionsAndMore => 'Rojên taybet û hêj bêtir';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Nirxandina dikanê wê were girêdan dema lîsteya hilberînê amade be.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'ROJAVABÛN';

  @override
  String get supportQuranProOnTheStore => 'Li dikanê piştgiriyê bide Quran Pro';

  @override
  String get surah => 'Sûre';

  @override
  String get tasbih => 'Tizbî';

  @override
  String get tasbihSettings => 'Sazkariyên Tizbiyê';

  @override
  String get tellUsWhatToImprove => 'Ji me re bêje em çi baştir bikin';

  @override
  String get termsOfUse => 'Mercên Bikaranînê';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Spas ji bo bikaranîna Quran Pro. Nirxandina dikanê wê were girêdan dema lîsteya dikanê ya hilberînê amade be.';

  @override
  String get thereIsNoDeityExceptAllah => 'Ji bilî Allah tu îlah tune ye';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Bêyî Allah tu hêz û qewet tune ye';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Ev alîkariya me dike ku em bîrxistinan taybet bikin û pêşketina te bişopînin.';

  @override
  String get tigerSEye => 'Çavê Piling';

  @override
  String get today => 'Îro';

  @override
  String get total => 'Giştî';

  @override
  String get totalHasanat => 'HESENATA GIŞTÎ';

  @override
  String get trackProgress => 'Pêşketinê Bişopîne';

  @override
  String get trackYourReadingAndAchievements =>
      'Xwendin û serkeftinên xwe bişopîne.';

  @override
  String get tryAgain => 'Dîsa Biceribîne';

  @override
  String get undo => 'Vegerîne';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Hemû tema û taybetkirinên sepanê veke';

  @override
  String get usageGuidelines => 'Rênîşanên bikaranînê';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro bi rêzdarî ji bo îbadeta kesane, fêrbûn û adetên rojane yên îslamî bikar bîne.';

  @override
  String get viewAll => 'Hemûyan Bibîne';

  @override
  String get w => 'Rv';

  @override
  String get welcome => 'Bi xêr hatî';

  @override
  String get west => 'Rojava';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Her tişt amade ye!';

  @override
  String get yourProgress => 'Pêşketina Te';

  @override
  String get continueLabel => 'Bidomîne';

  @override
  String get amethyst => 'Ametîst';

  @override
  String get indonesian => 'Îndonezî';

  @override
  String get turkish => 'Tirkî';

  @override
  String get vietnamese => 'Viyetnamî';

  @override
  String get turquoise => 'Firûze';

  @override
  String get wood => 'Dar';

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
