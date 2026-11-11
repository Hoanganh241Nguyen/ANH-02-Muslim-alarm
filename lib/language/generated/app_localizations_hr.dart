// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get week => 'Tjedan';

  @override
  String get month => 'Mjesec';

  @override
  String get lifetime => 'Sve vrijeme';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Zastanite na trenutak od posla i posvetite vrijeme Allahu.';

  @override
  String get prayerAlarmDefaultName => 'Namaz';

  @override
  String productUnavailable(Object id) {
    return 'Proizvod $id nije dostupan za kupnju.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Kupnja $productId je uspješna!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Kupnja $productId je obnovljena!';
  }

  @override
  String daysCount(Object count) {
    return '$count dana';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'SLIJEDI: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Udaljenost do Meke: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Podsjeti me za $minutes minuta';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Nastupilo je vrijeme za $prayerName namaz';
  }

  @override
  String roundValue(Object round) {
    return 'Krug: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Odabran jezik: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Džuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Stranica $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ajet $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ajeta';
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
    return 'RAZINA $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura El-Bekara 2:238)';

  @override
  String get text1juz => '1 džuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 stranica';

  @override
  String get text100dhikr => '100 zikrova';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 stranica';

  @override
  String get text28cclearsky => '28°C - Vedro';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 stranica';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'O aplikaciji';

  @override
  String get aboutQuranPro => 'O Quran Pro';

  @override
  String get activity => 'Aktivnost';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Oglas se učitava. Pokušajte ponovno uskoro.';

  @override
  String get addCustomDhikr => 'Dodaj vlastiti zikr';

  @override
  String get addCustomDhikr2 => 'Dodaj vlastiti zikr';

  @override
  String get addDhikr => 'Dodaj zikr';

  @override
  String get adjustPosition => 'PODESI POLOŽAJ';

  @override
  String get afternoon => 'POSLIJEPODNE';

  @override
  String get alMasjidAlHaram => 'Mesdžidul-haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'USMJERENO PREMA KIBLI';

  @override
  String get allPraiseIsDueToAllah => 'Sva hvala pripada Allahu';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Sve premium mogućnosti po sniženoj cijeni';

  @override
  String get allInOneQuranApp => 'Kur\'anska aplikacija sve u jednom';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah mi je dovoljan; nema boga osim Njega';

  @override
  String get allahIsTheGreatest => 'Allah je najveći';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Dopustite pristup lokaciji ili dodirnite Pokušaj ponovno za rezervni raspored.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Dopustite obavijesti kako biste primali vaktove i dnevne podsjetnike.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Dopustite aplikaciji rad u pozadini';

  @override
  String get app => 'Aplikacija';

  @override
  String get arabic => 'Arapski';

  @override
  String get asr => 'Ikindija';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Pros.';

  @override
  String get ayah => 'Ajet';

  @override
  String get batteryOptimization => 'Optimizacija baterije';

  @override
  String get beautifulWidgets => 'Prekrasni widgeti';

  @override
  String get bestValue => 'NAJPOVOLJNIJE';

  @override
  String get blackOnyx => 'Crni oniks';

  @override
  String get bookmarks => 'Oznake';

  @override
  String get brightIvoryInterface => 'Svijetlo sučelje boje slonovače';

  @override
  String get calculatingDistance => 'Izračun udaljenosti...';

  @override
  String get calibrateYourDirection => 'Kalibrirajte smjer';

  @override
  String get cancel => 'Odustani';

  @override
  String get change => 'Promijeni';

  @override
  String get changeTasbihMode => 'Promijeniti način tesbiha?';

  @override
  String get chooseDhikr => 'Odaberi zikr';

  @override
  String get chooseDisplayLanguage => 'Odaberite jezik prikaza';

  @override
  String get chooseTheme => 'Odaberi temu';

  @override
  String get chooseYourPreferredLanguage => 'Odaberite željeni jezik';

  @override
  String get clickOrSwipeToCount => 'Dodirnite ili povucite za brojanje';

  @override
  String get close => 'Zatvori';

  @override
  String get closeCustomGoal => 'Zatvori vlastiti cilj';

  @override
  String get completeAtLeast33Dhikr => 'Završite najmanje 33 zikra';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Povežite svoje srce s časnim Kur\'anom.';

  @override
  String get continueReading => 'Nastavi čitanje';

  @override
  String get countsPerRound => 'Broj po krugu';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Uredite svoju zbirku majstorski izrađenim duhovnim draguljima.';

  @override
  String get current => 'TRENUTNO';

  @override
  String get current2 => 'Trenutno';

  @override
  String get currentLocationToMecca => 'Od trenutne lokacije do Meke';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Trenutni napredak poništit će se za novi način.';

  @override
  String get currentStreak => 'Trenutni niz';

  @override
  String get custom => 'Prilagođeno';

  @override
  String get customDhikr => 'Vlastiti zikr';

  @override
  String get customGoal => 'Vlastiti cilj';

  @override
  String get customPrayerSounds => 'Vlastiti zvukovi ezana';

  @override
  String get dailyGoal => 'Dnevni cilj';

  @override
  String get dailyQuests => 'Dnevni zadaci';

  @override
  String get dailyQuranReminder => 'Dnevni podsjetnik za Kur\'an';

  @override
  String get dailyReminders => 'Dnevni podsjetnici';

  @override
  String get dailyTasbih => 'Dnevni tesbih';

  @override
  String get dark => 'Tamna';

  @override
  String get dawn => 'ZORA';

  @override
  String get debug => 'Otklanjanje pogrešaka';

  @override
  String get dhikr => 'Zikr';

  @override
  String get dhikrActivity => 'Aktivnost zikra';

  @override
  String get dhuAlHijjah => 'Zul-hidždže';

  @override
  String get dhuAlQadah => 'Zul-ka\'de';

  @override
  String get dhuhr => 'Podne';

  @override
  String get direction => 'SMJER';

  @override
  String get disableBatteryOptimization => 'Isključite optimizaciju baterije';

  @override
  String get disableOptimization => 'ISKLJUČI OPTIMIZACIJU';

  @override
  String get distance => 'UDALJENOST';

  @override
  String get e => 'I';

  @override
  String get eGHasbunallah => 'npr. HasbunAllah';

  @override
  String get east => 'Istok';

  @override
  String get enableAutoStart => 'Omogući automatsko pokretanje';

  @override
  String get enableNotifications => 'Omogući obavijesti';

  @override
  String get enableReminders => 'Omogući podsjetnike';

  @override
  String get english => 'Engleski';

  @override
  String get enterYourName => 'Unesite svoje ime';

  @override
  String get equipped => 'AKTIVNO';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Sve što vam treba za bolji doživljaj Kur\'ana.';

  @override
  String get fajr => 'Sabah';

  @override
  String get feedback => 'Povratne informacije';

  @override
  String get first => 'Prvi';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Za najtočnije rezultate držite telefon vodoravno i podalje od magnetnih predmeta.';

  @override
  String get free => 'Besplatno';

  @override
  String get fullBundle => 'Kompletan paket';

  @override
  String get getAnAdFreeExperienceForever => 'Uživajte zauvijek bez oglasa';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Primajte podsjetnike za učenje i budite dosljedni.';

  @override
  String get getStarted => 'Započni';

  @override
  String get gloryAndPraiseBeToAllah => 'Slavljen i hvaljen neka je Allah';

  @override
  String get gloryBeToAllah => 'Slavljen neka je Allah';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'Slavljen neka je Allah, Veličanstveni';

  @override
  String get goToHome => 'Idi na početnu';

  @override
  String get goldenEngraved => 'Zlatno gravirano';

  @override
  String get greenJade => 'Zeleni žad';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vijetnam';

  @override
  String get haptic => 'Vibracija';

  @override
  String get hasanatHub => 'Centar hasenata';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Početna';

  @override
  String get howYourDataIsHandled => 'Kako se postupa s vašim podacima';

  @override
  String get iSeekForgivenessFromAllah => 'Tražim oprost od Allaha';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Utječem se Allahu od prokletog šejtana';

  @override
  String get immediateAlerts => 'Trenutna upozorenja';

  @override
  String get inTheNameOfAllah => 'U ime Allaha';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Mi Allahu pripadamo i Njemu se vraćamo';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Jacija';

  @override
  String get jumadaAlAwwal => 'Džumadel-ula';

  @override
  String get jumadaAlThani => 'Džumadel-uhra';

  @override
  String get juz => 'DŽUZ';

  @override
  String get juz2 => 'Džuz';

  @override
  String get keepAdhanAlarmsReliable => 'Neka ezan alarmi budu pouzdani';

  @override
  String get keepItUpYouReDoingGreat => 'Samo naprijed! Odlično vam ide.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Ezan ostaje pouzdan i kada je aplikacija zatvorena.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Jezik';

  @override
  String get lapisLazuli => 'Lapis lazuli';

  @override
  String get last7Days => 'Posljednjih 7 dana';

  @override
  String get later => 'KASNIJE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Započnimo vaše lijepo putovanje s Kur\'anom.';

  @override
  String get letSPersonalizeYourExperience => 'Prilagodimo\nvaše iskustvo';

  @override
  String get light => 'Svijetla';

  @override
  String get lightMode => 'Svijetli način';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Poslušajte ili proučite bilo koji ajet danas';

  @override
  String get locating => 'Traženje lokacije...';

  @override
  String get location => 'Lokacija';

  @override
  String get locationPermissionsAreDenied => 'Pristup lokaciji je odbijen';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Pristup lokaciji je trajno odbijen.';

  @override
  String get locationServicesAreDisabled => 'Usluge lokacije su isključene.';

  @override
  String get longestStreak => 'Najduži niz';

  @override
  String get maghrib => 'Akšam';

  @override
  String get maybeLater => 'Možda kasnije';

  @override
  String get meccaSaudiArabia => 'Meka, Saudijska Arabija';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Gospodaru moj, oprosti i smiluj se';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Gospodaru moj, potrebno mi je svako dobro koje mi spustiš';

  @override
  String get myLordIncreaseMeInKnowledge => 'Gospodaru moj, povećaj mi znanje';

  @override
  String get myLordMakeItEasyAndDoNot => 'Gospodaru moj, olakšaj, a ne otežaj';

  @override
  String get n => 'S';

  @override
  String get nameOptional => 'Ime (nije obavezno)';

  @override
  String get next => 'Dalje';

  @override
  String get nextDhikr => 'Sljedeći zikr';

  @override
  String get nextPrayer => 'SLJEDEĆI NAMAZ';

  @override
  String get night => 'NOĆ';

  @override
  String get nightEmeraldInterface => 'Noćno smaragdno sučelje';

  @override
  String get noBookmarksYet => 'Još nema oznaka';

  @override
  String get noon => 'PODNE';

  @override
  String get north => 'Sjever';

  @override
  String get northeast => 'Sjeveroistok';

  @override
  String get northwest => 'Sjeverozapad';

  @override
  String get notificationsAlarm => 'Obavijesti i alarm';

  @override
  String get notificationsForPrayerTimes => 'Obavijesti za vaktove';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Allahu moj, blagoslovi Muhammeda';

  @override
  String get oEverLivingOSustainer => 'O Vječno Živi, o Održavatelju';

  @override
  String get openAutoStart => 'OTVORI AUTOMATSKO POKRETANJE';

  @override
  String get optimizeAdhanPerformance => 'Optimizirajte rad ezana';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Gospodaru naš, podari nam dobro na ovom svijetu';

  @override
  String get page => 'STRANICA';

  @override
  String get pearl => 'Biser';

  @override
  String get personalizeYourAdhanNotifications =>
      'Prilagodite obavijesti za ezan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Hvala Allahu, Gospodaru svjetova';

  @override
  String get prayerAlarms => 'Alarmi za namaz';

  @override
  String get prayerSchedule => 'Vaktija';

  @override
  String get prayerTimeNotifications => 'Obavijesti o vaktovima';

  @override
  String get prayerTimesAreLoading => 'Vaktovi se učitavaju';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Vaktovi, kibla, učenje Kur\'ana i tesbih u jednom dnevnom pratitelju.';

  @override
  String get prayerQuranQibla => 'NAMAZ • KUR\'AN • KIBLA';

  @override
  String get premiumThemes => 'Premium teme';

  @override
  String get preparingYourSpiritualJourney =>
      'Pripremamo vaše duhovno putovanje...';

  @override
  String get previousDhikr => 'Prethodni zikr';

  @override
  String get privacyPolicy => 'Pravila privatnosti';

  @override
  String get qibla => 'Kibla';

  @override
  String get qiblaFinder => 'Tražilica kible';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Kur\'an';

  @override
  String get quranPlayback => 'Reprodukcija Kur\'ana';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro objedinjuje vaktove, kiblu, učenje Kur\'ana i tesbih u jednom jednostavnom dnevnom pratitelju.';

  @override
  String get quranProPreferences => 'Postavke Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro pohranjuje postavke uvoda i napretka lokalno na ovom uređaju. Analitika se može koristiti za poboljšanje stabilnosti i kvalitete.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro pohranjuje vaš napredak u tesbihu lokalno na ovom uređaju. Analitika se može koristiti za poboljšanje stabilnosti aplikacije i kvalitete proizvoda.';

  @override
  String get quranRecitation => 'Učenje Kur\'ana';

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
  String get rabiAlAwwal => 'Rebiul-evvel';

  @override
  String get rabiAlThani => 'Rebiul-ahir';

  @override
  String get rateApp => 'Ocijenite aplikaciju';

  @override
  String get rateQuranPro => 'Ocijenite Quran Pro';

  @override
  String get readListen => 'Čitaj i slušaj';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Učite Kur\'an uz prekrasna učenja.';

  @override
  String get recent => 'Nedavno';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Preporučeno za Xiaomi, Oppo, Vivo i Huawei';

  @override
  String get redCarnelian => 'Crveni karneol';

  @override
  String get remindMeAt => 'Podsjeti me u';

  @override
  String get removeAds => 'Ukloni oglase';

  @override
  String get requestingLocationPermission =>
      'Traženje dopuštenja za lokaciju...';

  @override
  String get reset => 'Resetiraj';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get returnToCompass => 'Natrag na kompas';

  @override
  String get s => 'J';

  @override
  String get save => 'Spremi';

  @override
  String get saveGoal => 'Spremi cilj';

  @override
  String get searchSurahNumberArabic => 'Pretraži suru, broj, arapski...';

  @override
  String get searchSurah => 'Pretraži suru...';

  @override
  String get selectLanguage => 'Odaberi jezik';

  @override
  String get selectTheThemeYouLike => 'Odaberite temu koja vam se sviđa';

  @override
  String get selectYourBead => 'Odaberite zrno tesbiha';

  @override
  String get shop => 'Trgovina';

  @override
  String get shopCustomization => 'Trgovina i prilagodbe';

  @override
  String get sound => 'Zvuk';

  @override
  String get south => 'Jug';

  @override
  String get southeast => 'Jugoistok';

  @override
  String get southwest => 'Jugozapad';

  @override
  String get specialOccasionsAndMore => 'Posebne prigode i još mnogo toga';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Ocjenjivanje u trgovini bit će omogućeno kada produkcijska stranica bude spremna.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'ZALAZAK SUNCA';

  @override
  String get supportQuranProOnTheStore => 'Podržite Quran Pro u trgovini';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tesbih';

  @override
  String get tasbihSettings => 'Postavke tesbiha';

  @override
  String get tellUsWhatToImprove => 'Recite nam što poboljšati';

  @override
  String get termsOfUse => 'Uvjeti korištenja';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Hvala što koristite Quran Pro. Ocjenjivanje u trgovini bit će omogućeno kada produkcijska stranica bude spremna.';

  @override
  String get thereIsNoDeityExceptAllah => 'Nema boga osim Allaha';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Nema snage ni moći osim kod Allaha';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Ovo nam pomaže prilagoditi podsjetnike i pratiti vaš napredak.';

  @override
  String get tigerSEye => 'Tigrovo oko';

  @override
  String get today => 'Danas';

  @override
  String get total => 'Ukupno';

  @override
  String get totalHasanat => 'UKUPNO HASENATA';

  @override
  String get trackProgress => 'Prati napredak';

  @override
  String get trackYourReadingAndAchievements =>
      'Pratite svoje učenje i postignuća.';

  @override
  String get tryAgain => 'Pokušaj ponovno';

  @override
  String get undo => 'Poništi';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Otključajte sve teme i prilagodbe aplikacije';

  @override
  String get usageGuidelines => 'Smjernice za korištenje';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Koristite Quran Pro s poštovanjem za osobni ibadet, učenje i svakodnevne islamske navike.';

  @override
  String get viewAll => 'Prikaži sve';

  @override
  String get w => 'Z';

  @override
  String get welcome => 'Dobro došli';

  @override
  String get west => 'Zapad';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Sve je spremno!';

  @override
  String get yourProgress => 'Vaš napredak';

  @override
  String get continueLabel => 'Nastavi';

  @override
  String get amethyst => 'Ametist';

  @override
  String get indonesian => 'Indonezijski';

  @override
  String get turkish => 'Turski';

  @override
  String get vietnamese => 'Vijetnamski';

  @override
  String get turquoise => 'Tirkiz';

  @override
  String get wood => 'Drvo';

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
