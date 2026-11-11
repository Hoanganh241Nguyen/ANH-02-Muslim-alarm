// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get week => 'Nädal';

  @override
  String get month => 'Kuu';

  @override
  String get lifetime => 'Kogu aeg';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Tee tööst hetkeks pausi ja leia aega Allahi jaoks.';

  @override
  String get prayerAlarmDefaultName => 'Palvus';

  @override
  String productUnavailable(Object id) {
    return 'Toode $id ei ole ostmiseks saadaval.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Toote $productId ost õnnestus!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Toote $productId ost on taastatud!';
  }

  @override
  String daysCount(Object count) {
    return '$count päeva';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'TULEMAS: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Kaugus Mekast: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Tuleta mulle meelde $minutes minuti pärast';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'On aeg $prayerName palvuseks';
  }

  @override
  String roundValue(Object round) {
    return 'Ring: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language on valitud';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Lehekülg $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: salm $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count salmi';
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
    return 'TASE $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Suura Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 lehekülge';

  @override
  String get text100dhikr => '100 dhikri';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 lehekülge';

  @override
  String get text28cclearsky => '28°C - Selge taevas';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 lehekülge';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Teave';

  @override
  String get aboutQuranPro => 'Teave Quran Pro kohta';

  @override
  String get activity => 'Tegevus';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklaam laadib. Proovi peagi uuesti.';

  @override
  String get addCustomDhikr => 'Lisa oma dhikr';

  @override
  String get addCustomDhikr2 => 'Lisa oma dhikr';

  @override
  String get addDhikr => 'Lisa dhikr';

  @override
  String get adjustPosition => 'KOHENDA ASENDIT';

  @override
  String get afternoon => 'PÄRASTLÕUNA';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'QIBLA SUUNAS';

  @override
  String get allPraiseIsDueToAllah => 'Kogu kiitus kuulub Allahile';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Kõik premium-funktsioonid soodushinnaga';

  @override
  String get allInOneQuranApp => 'Kõik-ühes Koraani rakendus';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allahist piisab mulle; pole muud jumalust peale Tema';

  @override
  String get allahIsTheGreatest => 'Allah on suurim';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Luba asukoha kasutamine või puuduta Proovi uuesti, et kasutada varugraafikut.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Luba teavitused, et saada palveaegu ja igapäevaseid meeldetuletusi.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Luba rakendusel taustal töötada';

  @override
  String get app => 'Rakendus';

  @override
  String get arabic => 'Araabia';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Keskm.';

  @override
  String get ayah => 'Salm';

  @override
  String get batteryOptimization => 'Aku optimeerimine';

  @override
  String get beautifulWidgets => 'Kaunid vidinad';

  @override
  String get bestValue => 'PARIM PAKKUMINE';

  @override
  String get blackOnyx => 'Must onüks';

  @override
  String get bookmarks => 'Järjehoidjad';

  @override
  String get brightIvoryInterface => 'Hele elevandiluust liides';

  @override
  String get calculatingDistance => 'Arvutan kaugust...';

  @override
  String get calibrateYourDirection => 'Kalibreeri oma suund';

  @override
  String get cancel => 'Tühista';

  @override
  String get change => 'Muuda';

  @override
  String get changeTasbihMode => 'Kas muuta tasbihi režiimi?';

  @override
  String get chooseDhikr => 'Vali dhikr';

  @override
  String get chooseDisplayLanguage => 'Vali kuvakeel';

  @override
  String get chooseTheme => 'Vali teema';

  @override
  String get chooseYourPreferredLanguage => 'Vali endale sobiv keel';

  @override
  String get clickOrSwipeToCount => 'Loendamiseks klõpsa või libista';

  @override
  String get close => 'Sulge';

  @override
  String get closeCustomGoal => 'Sulge oma eesmärk';

  @override
  String get completeAtLeast33Dhikr => 'Soorita vähemalt 33 dhikri';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Ühenda oma süda püha Koraaniga.';

  @override
  String get continueReading => 'Jätka lugemist';

  @override
  String get countsPerRound => 'Loendusi ühes ringis';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Kujunda oma kogu meisterlikult loodud vaimsete kalliskividega.';

  @override
  String get current => 'PRAEGUNE';

  @override
  String get current2 => 'Praegune';

  @override
  String get currentLocationToMecca => 'Praegusest asukohast Mekasse';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Praegune edenemine lähtestatakse uue režiimi jaoks.';

  @override
  String get currentStreak => 'Praegune seeria';

  @override
  String get custom => 'Kohandatud';

  @override
  String get customDhikr => 'Oma dhikr';

  @override
  String get customGoal => 'Oma eesmärk';

  @override
  String get customPrayerSounds => 'Kohandatud palvehelid';

  @override
  String get dailyGoal => 'Päevane eesmärk';

  @override
  String get dailyQuests => 'Päevased ülesanded';

  @override
  String get dailyQuranReminder => 'Igapäevane Koraani meeldetuletus';

  @override
  String get dailyReminders => 'Igapäevased meeldetuletused';

  @override
  String get dailyTasbih => 'Igapäevane tasbih';

  @override
  String get dark => 'Tume';

  @override
  String get dawn => 'KOIDIK';

  @override
  String get debug => 'Silumine';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Dhikri tegevus';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'SUUND';

  @override
  String get disableBatteryOptimization => 'Keela aku optimeerimine';

  @override
  String get disableOptimization => 'KEELA OPTIMEERIMINE';

  @override
  String get distance => 'KAUGUS';

  @override
  String get e => 'I';

  @override
  String get eGHasbunallah => 'nt HasbunAllah';

  @override
  String get east => 'Ida';

  @override
  String get enableAutoStart => 'Luba automaatkäivitus';

  @override
  String get enableNotifications => 'Luba teavitused';

  @override
  String get enableReminders => 'Luba meeldetuletused';

  @override
  String get english => 'Inglise';

  @override
  String get enterYourName => 'Sisesta oma nimi';

  @override
  String get equipped => 'KASUTUSEL';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Kõik, mida vajad paremaks Koraani kogemuseks.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Tagasiside';

  @override
  String get first => 'Esimene';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Kõige täpsema tulemuse saamiseks hoia telefoni tasapinnal ja eemal magnetesemetest.';

  @override
  String get free => 'Tasuta';

  @override
  String get fullBundle => 'Täispakett';

  @override
  String get getAnAdFreeExperienceForever =>
      'Naudi igavesti reklaamivaba kogemust';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Saa meeldetuletusi lugemiseks ja püsi järjepidev.';

  @override
  String get getStarted => 'Alusta';

  @override
  String get gloryAndPraiseBeToAllah => 'Au ja kiitus olgu Allahile';

  @override
  String get gloryBeToAllah => 'Au olgu Allahile';

  @override
  String get gloryBeToAllahTheMagnificent => 'Au olgu Allahile, ülevaimale';

  @override
  String get goToHome => 'Ava avaleht';

  @override
  String get goldenEngraved => 'Kuldgraveeritud';

  @override
  String get greenJade => 'Roheline nefriit';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Vibratsioon';

  @override
  String get hasanatHub => 'Hasanati keskus';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Avaleht';

  @override
  String get howYourDataIsHandled => 'Kuidas sinu andmeid käideldakse';

  @override
  String get iSeekForgivenessFromAllah => 'Palun Allahilt andestust';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Otsin Allahi juures kaitset neetud saatana eest';

  @override
  String get immediateAlerts => 'Kohesed märguanded';

  @override
  String get inTheNameOfAllah => 'Allahi nimel';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Tõesti, me kuulume Allahile ja Tema juurde me pöördume tagasi';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isha';

  @override
  String get jumadaAlAwwal => 'Jumada Al-Awwal';

  @override
  String get jumadaAlThani => 'Jumada Al-Thani';

  @override
  String get juz => 'JUZ';

  @override
  String get juz2 => 'Juz';

  @override
  String get keepAdhanAlarmsReliable => 'Hoia adhaani äratused töökindlad';

  @override
  String get keepItUpYouReDoingGreat =>
      'Jätka samas vaimus! Sul läheb suurepäraselt.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Hoia palvekutsed töökindlad ka siis, kui rakendus on suletud.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Keel';

  @override
  String get lapisLazuli => 'Lasuriit';

  @override
  String get last7Days => 'Viimased 7 päeva';

  @override
  String get later => 'HILJEM';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Alustame sinu kaunist teekonda Koraaniga.';

  @override
  String get letSPersonalizeYourExperience => 'Kohandame\nsinu kogemust';

  @override
  String get light => 'Hele';

  @override
  String get lightMode => 'Hele režiim';

  @override
  String get listenToOrReadAnyAyahToday => 'Kuula või loe täna mõnda salmi';

  @override
  String get locating => 'Määran asukohta...';

  @override
  String get location => 'Asukoht';

  @override
  String get locationPermissionsAreDenied => 'Asukohaload on keelatud';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Asukohaload on püsivalt keelatud.';

  @override
  String get locationServicesAreDisabled =>
      'Asukohateenused on välja lülitatud.';

  @override
  String get longestStreak => 'Pikim seeria';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Võib-olla hiljem';

  @override
  String get meccaSaudiArabia => 'Meka, Saudi Araabia';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Mu Issand, andesta ja halasta';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Mu Issand, ma vajan kõike head, mida Sa alla saadad';

  @override
  String get myLordIncreaseMeInKnowledge => 'Mu Issand, kasvata mu teadmisi';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Mu Issand, tee see kergeks ja ära tee seda raskeks';

  @override
  String get n => 'P';

  @override
  String get nameOptional => 'Nimi (valikuline)';

  @override
  String get next => 'Edasi';

  @override
  String get nextDhikr => 'Järgmine dhikr';

  @override
  String get nextPrayer => 'JÄRGMINE PALVUS';

  @override
  String get night => 'ÖÖ';

  @override
  String get nightEmeraldInterface => 'Öine smaragdroheline liides';

  @override
  String get noBookmarksYet => 'Järjehoidjaid veel pole';

  @override
  String get noon => 'KESKPÄEV';

  @override
  String get north => 'Põhi';

  @override
  String get northeast => 'Kirre';

  @override
  String get northwest => 'Loe';

  @override
  String get notificationsAlarm => 'Teavitused ja äratus';

  @override
  String get notificationsForPrayerTimes => 'Teavitused palveaegade kohta';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Oh Allah, õnnista Muhammadi';

  @override
  String get oEverLivingOSustainer => 'Oh Igavesti Elav, oh Ülalhoidja';

  @override
  String get openAutoStart => 'AVA AUTOMAATKÄIVITUS';

  @override
  String get optimizeAdhanPerformance => 'Optimeeri adhaani jõudlust';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Meie Issand, anna meile head selles maailmas';

  @override
  String get page => 'LEHEKÜLG';

  @override
  String get pearl => 'Pärl';

  @override
  String get personalizeYourAdhanNotifications =>
      'Kohanda oma adhaani teavitusi';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Kiitus olgu Allahile, maailmade Issandale';

  @override
  String get prayerAlarms => 'Palveäratused';

  @override
  String get prayerSchedule => 'Palveajakava';

  @override
  String get prayerTimeNotifications => 'Palveaegade teavitused';

  @override
  String get prayerTimesAreLoading => 'Palveajad laadivad';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Palveajad, qibla, Koraani lugemine ja tasbih ühes igapäevases kaaslases.';

  @override
  String get prayerQuranQibla => 'PALVUS • KORAAN • QIBLA';

  @override
  String get premiumThemes => 'Premium-teemad';

  @override
  String get preparingYourSpiritualJourney =>
      'Valmistan ette sinu vaimset teekonda...';

  @override
  String get previousDhikr => 'Eelmine dhikr';

  @override
  String get privacyPolicy => 'Privaatsuspoliitika';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Qibla otsija';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Koraan';

  @override
  String get quranPlayback => 'Koraani taasesitus';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro koondab palveajad, qibla, Koraani lugemise ja tasbihi üheks lihtsaks igapäevaseks kaaslaseks.';

  @override
  String get quranProPreferences => 'Quran Pro eelistused';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro salvestab tutvustuse ja edenemise eelistused selles seadmes. Analüütikat võidakse kasutada stabiilsuse ja kvaliteedi parandamiseks.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro salvestab sinu tasbihi edenemise selles seadmes. Analüütikat võidakse kasutada rakenduse stabiilsuse ja kvaliteedi parandamiseks.';

  @override
  String get quranRecitation => 'Koraani retsiteerimine';

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
  String get rabiAlAwwal => 'Rabi Al-Awwal';

  @override
  String get rabiAlThani => 'Rabi Al-Thani';

  @override
  String get rateApp => 'Hinda rakendust';

  @override
  String get rateQuranPro => 'Hinda rakendust Quran Pro';

  @override
  String get readListen => 'Loe ja kuula';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Loe Koraani kauni retsiteerimise saatel.';

  @override
  String get recent => 'Hiljutised';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Soovitatav Xiaomi, Oppo, Vivo ja Huawei seadmetele';

  @override
  String get redCarnelian => 'Punane karneool';

  @override
  String get remindMeAt => 'Tuleta meelde kell';

  @override
  String get removeAds => 'Eemalda reklaamid';

  @override
  String get requestingLocationPermission => 'Küsin asukohaluba...';

  @override
  String get reset => 'Lähtesta';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get returnToCompass => 'Tagasi kompassile';

  @override
  String get s => 'L';

  @override
  String get save => 'Salvesta';

  @override
  String get saveGoal => 'Salvesta eesmärk';

  @override
  String get searchSurahNumberArabic =>
      'Otsi suurat, numbrit, araabia keeles...';

  @override
  String get searchSurah => 'Otsi suurat...';

  @override
  String get selectLanguage => 'Vali keel';

  @override
  String get selectTheThemeYouLike => 'Vali teema, mis sulle meeldib';

  @override
  String get selectYourBead => 'Vali oma helmes';

  @override
  String get shop => 'Pood';

  @override
  String get shopCustomization => 'Pood ja kohandamine';

  @override
  String get sound => 'Heli';

  @override
  String get south => 'Lõuna';

  @override
  String get southeast => 'Kagu';

  @override
  String get southwest => 'Edel';

  @override
  String get specialOccasionsAndMore => 'Erilised sündmused ja muu';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Poehinnangu andmine ühendatakse, kui pood on avaldamiseks valmis.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'PÄIKESELOOJANG';

  @override
  String get supportQuranProOnTheStore => 'Toeta rakendust Quran Pro poes';

  @override
  String get surah => 'Suura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Tasbihi seaded';

  @override
  String get tellUsWhatToImprove => 'Ütle meile, mida parandada';

  @override
  String get termsOfUse => 'Kasutustingimused';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Aitäh, et kasutad rakendust Quran Pro. Poehinnangu andmine ühendatakse, kui pood on avaldamiseks valmis.';

  @override
  String get thereIsNoDeityExceptAllah => 'Pole muud jumalust peale Allahi';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Pole väge ega jõudu muidu kui Allahi läbi';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'See aitab meil meeldetuletusi kohandada ja sinu edenemist jälgida.';

  @override
  String get tigerSEye => 'Tiigrisilm';

  @override
  String get today => 'Täna';

  @override
  String get total => 'Kokku';

  @override
  String get totalHasanat => 'HASANAT KOKKU';

  @override
  String get trackProgress => 'Jälgi edenemist';

  @override
  String get trackYourReadingAndAchievements =>
      'Jälgi oma lugemist ja saavutusi.';

  @override
  String get tryAgain => 'Proovi veel kord';

  @override
  String get undo => 'Võta tagasi';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Ava kõik rakenduse teemad ja kohandused';

  @override
  String get usageGuidelines => 'Kasutusjuhised';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Kasuta rakendust Quran Pro austusega isiklikuks palveks, õppimiseks ja igapäevasteks islami tavadeks.';

  @override
  String get viewAll => 'Vaata kõiki';

  @override
  String get w => 'W';

  @override
  String get welcome => 'Tere tulemast';

  @override
  String get west => 'Lääs';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Kõik on valmis!';

  @override
  String get yourProgress => 'Sinu edenemine';

  @override
  String get continueLabel => 'Jätka';

  @override
  String get amethyst => 'Ametüst';

  @override
  String get indonesian => 'Indoneesia';

  @override
  String get turkish => 'Türgi';

  @override
  String get vietnamese => 'Vietnami';

  @override
  String get turquoise => 'Türkiis';

  @override
  String get wood => 'Puit';

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
