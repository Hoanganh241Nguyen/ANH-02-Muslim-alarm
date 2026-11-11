// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get week => 'Hét';

  @override
  String get month => 'Hónap';

  @override
  String get lifetime => 'Összes idő';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Tarts egy kis szünetet a munkádban, és szánj időt Allahra.';

  @override
  String get prayerAlarmDefaultName => 'Ima';

  @override
  String productUnavailable(Object id) {
    return 'A(z) $id termék nem vásárolható meg.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'A(z) $productId megvásárlása sikeres!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'A(z) $productId vásárlása visszaállítva!';
  }

  @override
  String daysCount(Object count) {
    return '$count nap';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'KÖVETKEZIK: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Távolság Mekkától: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Emlékeztess $minutes perc múlva';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Itt az idő a(z) $prayerName imára';
  }

  @override
  String roundValue(Object round) {
    return 'Kör: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language kiválasztva';
  }

  @override
  String juzNumber(Object juz) {
    return '$juz. dzsúz';
  }

  @override
  String pageNumber(Object page) {
    return '$page. oldal';
  }

  @override
  String hizbNumber(Object hizb) {
    return '$hizb. hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: $verse. vers';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ája';
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
    return '$level. SZINT';
  }

  @override
  String get surahAlBaqarah2238 => '(Al-Baqara szúra 2:238)';

  @override
  String get text1juz => '1 dzsúz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 oldal';

  @override
  String get text100dhikr => '100 dikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 oldal';

  @override
  String get text28cclearsky => '28°C - Tiszta égbolt';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 oldal';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Névjegy';

  @override
  String get aboutQuranPro => 'A Quran Pro névjegye';

  @override
  String get activity => 'Tevékenység';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'A hirdetés betöltődik. Kérjük, próbáld újra hamarosan.';

  @override
  String get addCustomDhikr => 'Egyéni dikr hozzáadása';

  @override
  String get addCustomDhikr2 => 'Egyéni dikr hozzáadása';

  @override
  String get addDhikr => 'Dikr hozzáadása';

  @override
  String get adjustPosition => 'POZÍCIÓ BEÁLLÍTÁSA';

  @override
  String get afternoon => 'DÉLUTÁN';

  @override
  String get alMasjidAlHaram => 'Al-Maszdzsid al-Harám';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'KIBLÁRA IGAZÍTVA';

  @override
  String get allPraiseIsDueToAllah => 'Minden dicséret Allahot illeti';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Minden prémium funkció kedvezményes áron';

  @override
  String get allInOneQuranApp => 'Mindent egyben Korán-alkalmazás';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah elegendő nekem; nincs más istenség Rajta kívül';

  @override
  String get allahIsTheGreatest => 'Allah a Legnagyobb';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Engedélyezd a helyhozzáférést, vagy koppints az Újra gombra a tartalék időrend használatához.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Engedélyezd az értesítéseket az imaidők és a napi emlékeztetők fogadásához.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Engedélyezd az alkalmazás háttérben futását';

  @override
  String get app => 'Alkalmazás';

  @override
  String get arabic => 'Arab';

  @override
  String get asr => 'Aszr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Átl.';

  @override
  String get ayah => 'Ája';

  @override
  String get batteryOptimization => 'Akkumulátoroptimalizálás';

  @override
  String get beautifulWidgets => 'Gyönyörű widgetek';

  @override
  String get bestValue => 'LEGJOBB AJÁNLAT';

  @override
  String get blackOnyx => 'Fekete ónix';

  @override
  String get bookmarks => 'Könyvjelzők';

  @override
  String get brightIvoryInterface => 'Világos elefántcsont felület';

  @override
  String get calculatingDistance => 'Távolság számítása...';

  @override
  String get calibrateYourDirection => 'Kalibráld az irányt';

  @override
  String get cancel => 'Mégse';

  @override
  String get change => 'Módosítás';

  @override
  String get changeTasbihMode => 'Módosítod a taszbih módot?';

  @override
  String get chooseDhikr => 'Válassz dikrt';

  @override
  String get chooseDisplayLanguage => 'Válaszd ki a megjelenítés nyelvét';

  @override
  String get chooseTheme => 'Válassz témát';

  @override
  String get chooseYourPreferredLanguage => 'Válaszd ki a kívánt nyelvet';

  @override
  String get clickOrSwipeToCount => 'Koppints vagy húzd a számláláshoz';

  @override
  String get close => 'Bezárás';

  @override
  String get closeCustomGoal => 'Egyéni cél bezárása';

  @override
  String get completeAtLeast33Dhikr => 'Végezz el legalább 33 dikrt';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Kapcsold össze a szíved a Szent Koránnal.';

  @override
  String get continueReading => 'Olvasás folytatása';

  @override
  String get countsPerRound => 'Számlálás körönként';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Állítsd össze gyűjteményed mesterien megmunkált spirituális drágakövekből.';

  @override
  String get current => 'JELENLEGI';

  @override
  String get current2 => 'Jelenlegi';

  @override
  String get currentLocationToMecca => 'Jelenlegi helyzet Mekkáig';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'A jelenlegi haladás nullázódik az új módhoz.';

  @override
  String get currentStreak => 'Jelenlegi sorozat';

  @override
  String get custom => 'Egyéni';

  @override
  String get customDhikr => 'Egyéni dikr';

  @override
  String get customGoal => 'Egyéni cél';

  @override
  String get customPrayerSounds => 'Egyéni imahangok';

  @override
  String get dailyGoal => 'Napi cél';

  @override
  String get dailyQuests => 'Napi küldetések';

  @override
  String get dailyQuranReminder => 'Napi Korán-emlékeztető';

  @override
  String get dailyReminders => 'Napi emlékeztetők';

  @override
  String get dailyTasbih => 'Napi taszbih';

  @override
  String get dark => 'Sötét';

  @override
  String get dawn => 'HAJNAL';

  @override
  String get debug => 'Hibakeresés';

  @override
  String get dhikr => 'Dikr';

  @override
  String get dhikrActivity => 'Dikr tevékenység';

  @override
  String get dhuAlHijjah => 'Dzul-hiddzsa';

  @override
  String get dhuAlQadah => 'Dzul-kada';

  @override
  String get dhuhr => 'Zuhr';

  @override
  String get direction => 'IRÁNY';

  @override
  String get disableBatteryOptimization =>
      'Akkumulátoroptimalizálás kikapcsolása';

  @override
  String get disableOptimization => 'OPTIMALIZÁLÁS KIKAPCSOLÁSA';

  @override
  String get distance => 'TÁVOLSÁG';

  @override
  String get e => 'K';

  @override
  String get eGHasbunallah => 'pl. HasbunAllah';

  @override
  String get east => 'Kelet';

  @override
  String get enableAutoStart => 'Automatikus indítás engedélyezése';

  @override
  String get enableNotifications => 'Értesítések engedélyezése';

  @override
  String get enableReminders => 'Emlékeztetők engedélyezése';

  @override
  String get english => 'Angol';

  @override
  String get enterYourName => 'Add meg a neved';

  @override
  String get equipped => 'HASZNÁLATBAN';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Minden, amire szükséged van a jobb Korán-élményhez.';

  @override
  String get fajr => 'Fadzsr';

  @override
  String get feedback => 'Visszajelzés';

  @override
  String get first => 'Első';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'A legpontosabb eredményért tartsd a telefont vízszintesen, mágneses tárgyaktól távol.';

  @override
  String get free => 'Ingyenes';

  @override
  String get fullBundle => 'Teljes csomag';

  @override
  String get getAnAdFreeExperienceForever => 'Örökre hirdetésmentes élmény';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Kapj emlékeztetőt az olvasásra, és maradj következetes.';

  @override
  String get getStarted => 'Kezdés';

  @override
  String get gloryAndPraiseBeToAllah => 'Dicsőség és dicséret Allahnak';

  @override
  String get gloryBeToAllah => 'Dicsőség Allahnak';

  @override
  String get gloryBeToAllahTheMagnificent => 'Dicsőség Allahnak, a Fenségesnek';

  @override
  String get goToHome => 'Ugrás a kezdőlapra';

  @override
  String get goldenEngraved => 'Aranyvésetes';

  @override
  String get greenJade => 'Zöld jáde';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnám';

  @override
  String get haptic => 'Rezgés';

  @override
  String get hasanatHub => 'Haszanát központ';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Kezdőlap';

  @override
  String get howYourDataIsHandled => 'Hogyan kezeljük az adataidat';

  @override
  String get iSeekForgivenessFromAllah => 'Allah bocsánatát kérem';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Allahnál keresek menedéket az átkozott Sátántól';

  @override
  String get immediateAlerts => 'Azonnali riasztások';

  @override
  String get inTheNameOfAllah => 'Allah nevében';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Bizony Allahé vagyunk, és Hozzá térünk vissza';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isá';

  @override
  String get jumadaAlAwwal => 'Dzsumáda al-avval';

  @override
  String get jumadaAlThani => 'Dzsumáda asz-szání';

  @override
  String get juz => 'DZSÚZ';

  @override
  String get juz2 => 'Dzsúz';

  @override
  String get keepAdhanAlarmsReliable =>
      'Tartsd megbízhatóan az ezánébresztőket';

  @override
  String get keepItUpYouReDoingGreat =>
      'Csak így tovább! Nagyszerűen csinálod.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Az ezán akkor is megbízhatóan szól, ha az alkalmazás be van zárva.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Nyelv';

  @override
  String get lapisLazuli => 'Lazurkő';

  @override
  String get last7Days => 'Utolsó 7 nap';

  @override
  String get later => 'KÉSŐBB';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Kezdjük el gyönyörű utazásodat a Koránnal.';

  @override
  String get letSPersonalizeYourExperience =>
      'Szabjuk személyre\naz élményedet';

  @override
  String get light => 'Világos';

  @override
  String get lightMode => 'Világos mód';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Hallgass meg vagy olvass el ma egy áját';

  @override
  String get locating => 'Helymeghatározás...';

  @override
  String get location => 'Hely';

  @override
  String get locationPermissionsAreDenied => 'A helyhozzáférés megtagadva';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'A helyhozzáférés véglegesen megtagadva.';

  @override
  String get locationServicesAreDisabled =>
      'A helyszolgáltatások ki vannak kapcsolva.';

  @override
  String get longestStreak => 'Leghosszabb sorozat';

  @override
  String get maghrib => 'Magrib';

  @override
  String get maybeLater => 'Talán később';

  @override
  String get meccaSaudiArabia => 'Mekka, Szaúd-Arábia';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Uram, bocsáss meg és irgalmazz';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Uram, rászorulok minden jóra, amit leküldesz';

  @override
  String get myLordIncreaseMeInKnowledge => 'Uram, gyarapítsd tudásomat';

  @override
  String get myLordMakeItEasyAndDoNot => 'Uram, könnyítsd meg, és ne nehezítsd';

  @override
  String get n => 'É';

  @override
  String get nameOptional => 'Név (nem kötelező)';

  @override
  String get next => 'Tovább';

  @override
  String get nextDhikr => 'Következő dikr';

  @override
  String get nextPrayer => 'KÖVETKEZŐ IMA';

  @override
  String get night => 'ÉJSZAKA';

  @override
  String get nightEmeraldInterface => 'Éjjeli smaragd felület';

  @override
  String get noBookmarksYet => 'Még nincs könyvjelző';

  @override
  String get noon => 'DÉL';

  @override
  String get north => 'Észak';

  @override
  String get northeast => 'Északkelet';

  @override
  String get northwest => 'Északnyugat';

  @override
  String get notificationsAlarm => 'Értesítések és ébresztő';

  @override
  String get notificationsForPrayerTimes => 'Értesítések az imaidőkről';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Ó Allah, áldd meg Mohamedet';

  @override
  String get oEverLivingOSustainer => 'Ó Örökké Élő, ó Fenntartó';

  @override
  String get openAutoStart => 'AUTOMATIKUS INDÍTÁS MEGNYITÁSA';

  @override
  String get optimizeAdhanPerformance => 'Ezán teljesítményének optimalizálása';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Urunk, adj nekünk jót ezen a világon';

  @override
  String get page => 'OLDAL';

  @override
  String get pearl => 'Gyöngy';

  @override
  String get personalizeYourAdhanNotifications =>
      'Szabd személyre az ezánértesítéseidet';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Dicsőség Allahnak, a Világok Urának';

  @override
  String get prayerAlarms => 'Imaébresztők';

  @override
  String get prayerSchedule => 'Imarend';

  @override
  String get prayerTimeNotifications => 'Imaidő-értesítések';

  @override
  String get prayerTimesAreLoading => 'Az imaidők betöltődnek';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Imaidők, kibla, Korán-olvasás és taszbih egyetlen napi társban.';

  @override
  String get prayerQuranQibla => 'IMA • KORÁN • KIBLA';

  @override
  String get premiumThemes => 'Prémium témák';

  @override
  String get preparingYourSpiritualJourney =>
      'Spirituális utazásod előkészítése...';

  @override
  String get previousDhikr => 'Előző dikr';

  @override
  String get privacyPolicy => 'Adatvédelmi irányelvek';

  @override
  String get qibla => 'Kibla';

  @override
  String get qiblaFinder => 'Kiblakereső';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Korán';

  @override
  String get quranPlayback => 'Korán lejátszása';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'A Quran Pro egyetlen egyszerű napi társba fogja az imaidőket, a kiblát, a Korán-olvasást és a taszbihot.';

  @override
  String get quranProPreferences => 'Quran Pro beállítások';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'A Quran Pro helyben, ezen az eszközön tárolja a bevezető és a haladási beállításokat. Az analitika a stabilitás és a minőség javítására szolgálhat.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'A Quran Pro helyben, ezen az eszközön tárolja a taszbih haladásodat. Az analitika az alkalmazás stabilitásának és a termék minőségének javítására szolgálhat.';

  @override
  String get quranRecitation => 'Korán-recitáció';

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
  String get rabiAlAwwal => 'Rabí al-avval';

  @override
  String get rabiAlThani => 'Rabí asz-szání';

  @override
  String get rateApp => 'Alkalmazás értékelése';

  @override
  String get rateQuranPro => 'Quran Pro értékelése';

  @override
  String get readListen => 'Olvasás és hallgatás';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Olvasd a Koránt gyönyörű recitációkkal.';

  @override
  String get recent => 'Legutóbbi';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo és Huawei készülékekhez ajánlott';

  @override
  String get redCarnelian => 'Vörös karneol';

  @override
  String get remindMeAt => 'Emlékeztess ekkor';

  @override
  String get removeAds => 'Hirdetések eltávolítása';

  @override
  String get requestingLocationPermission => 'Helyhozzáférés kérése...';

  @override
  String get reset => 'Visszaállítás';

  @override
  String get retry => 'Újra';

  @override
  String get returnToCompass => 'Vissza az iránytűhöz';

  @override
  String get s => 'D';

  @override
  String get save => 'Mentés';

  @override
  String get saveGoal => 'Cél mentése';

  @override
  String get searchSurahNumberArabic => 'Keresés szúra, szám, arab szerint...';

  @override
  String get searchSurah => 'Szúra keresése...';

  @override
  String get selectLanguage => 'Nyelv kiválasztása';

  @override
  String get selectTheThemeYouLike => 'Válaszd ki a neked tetsző témát';

  @override
  String get selectYourBead => 'Válaszd ki a gyöngyöd';

  @override
  String get shop => 'Bolt';

  @override
  String get shopCustomization => 'Bolt és testreszabás';

  @override
  String get sound => 'Hang';

  @override
  String get south => 'Dél';

  @override
  String get southeast => 'Délkelet';

  @override
  String get southwest => 'Délnyugat';

  @override
  String get specialOccasionsAndMore => 'Különleges alkalmak és még sok más';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Az áruházi értékelés akkor lesz elérhető, amikor az éles megjelenés elkészül.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'NAPNYUGTA';

  @override
  String get supportQuranProOnTheStore => 'Támogasd a Quran Prót az áruházban';

  @override
  String get surah => 'Szúra';

  @override
  String get tasbih => 'Taszbih';

  @override
  String get tasbihSettings => 'Taszbih beállítások';

  @override
  String get tellUsWhatToImprove => 'Mondd el, min javítsunk';

  @override
  String get termsOfUse => 'Felhasználási feltételek';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Köszönjük, hogy a Quran Prót használod. Az áruházi értékelés akkor lesz elérhető, amikor az éles áruházi megjelenés elkészül.';

  @override
  String get thereIsNoDeityExceptAllah => 'Nincs más istenség, csak Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Nincs hatalom és erő, csak Allah által';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Ez segít személyre szabni az emlékeztetőket és követni a haladásodat.';

  @override
  String get tigerSEye => 'Tigrisszem';

  @override
  String get today => 'Ma';

  @override
  String get total => 'Összesen';

  @override
  String get totalHasanat => 'ÖSSZES HASZANÁT';

  @override
  String get trackProgress => 'Haladás követése';

  @override
  String get trackYourReadingAndAchievements =>
      'Kövesd az olvasásodat és az eredményeidet.';

  @override
  String get tryAgain => 'Próbáld újra';

  @override
  String get undo => 'Visszavonás';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Oldd fel az összes témát és testreszabást';

  @override
  String get usageGuidelines => 'Használati irányelvek';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Használd a Quran Prót tisztelettel a személyes istentisztelethez, a tanuláshoz és a napi iszlám rutinokhoz.';

  @override
  String get viewAll => 'Összes megtekintése';

  @override
  String get w => 'NY';

  @override
  String get welcome => 'Üdvözlünk';

  @override
  String get west => 'Nyugat';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Minden készen áll!';

  @override
  String get yourProgress => 'A haladásod';

  @override
  String get continueLabel => 'Folytatás';

  @override
  String get amethyst => 'Ametiszt';

  @override
  String get indonesian => 'Indonéz';

  @override
  String get turkish => 'Török';

  @override
  String get vietnamese => 'Vietnami';

  @override
  String get turquoise => 'Türkiz';

  @override
  String get wood => 'Fa';

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
