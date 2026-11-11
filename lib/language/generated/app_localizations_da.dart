// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get week => 'Uge';

  @override
  String get month => 'Måned';

  @override
  String get lifetime => 'Livstid';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Tag en pause fra dit arbejde, og giv tid til Allah.';

  @override
  String get prayerAlarmDefaultName => 'Bøn';

  @override
  String productUnavailable(Object id) {
    return 'Produktet $id kan ikke købes.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Køb af $productId gennemført!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Køb af $productId gendannet!';
  }

  @override
  String daysCount(Object count) {
    return '$count dage';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'NÆSTE: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Afstand til Mekka: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Mind mig om det om $minutes minutter';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Det er tid til $prayerName-bønnen';
  }

  @override
  String roundValue(Object round) {
    return 'Runde: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language valgt';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Side $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: vers $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count vers';
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
    return 'NIVEAU $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 sider';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 sider';

  @override
  String get text28cclearsky => '28°C - Klar himmel';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 sider';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Om';

  @override
  String get aboutQuranPro => 'Om Quran Pro';

  @override
  String get activity => 'Aktivitet';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklamen indlæses. Prøv igen om lidt.';

  @override
  String get addCustomDhikr => 'Tilføj egen dhikr';

  @override
  String get addCustomDhikr2 => 'Tilføj Egen Dhikr';

  @override
  String get addDhikr => 'Tilføj dhikr';

  @override
  String get adjustPosition => 'JUSTER POSITION';

  @override
  String get afternoon => 'EFTERMIDDAG';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'RETTET MOD QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Al lovprisning tilkommer Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Alle premiumfunktioner til nedsat pris';

  @override
  String get allInOneQuranApp => 'Alt-i-én Koran-app';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah er mig nok; der er ingen gud undtagen Ham';

  @override
  String get allahIsTheGreatest => 'Allah er den Største';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Tillad placeringstilladelse, eller tryk på Prøv igen for at bruge reserveplanen.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Tillad notifikationer for at modtage bønnetider og daglige påmindelser.';

  @override
  String get allowTheAppToRunInTheBackground => 'Lad appen køre i baggrunden';

  @override
  String get app => 'App';

  @override
  String get arabic => 'Arabisk';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Gns.';

  @override
  String get ayah => 'Vers';

  @override
  String get batteryOptimization => 'Batterioptimering';

  @override
  String get beautifulWidgets => 'Smukke widgets';

  @override
  String get bestValue => 'BEDSTE VÆRDI';

  @override
  String get blackOnyx => 'Sort onyks';

  @override
  String get bookmarks => 'Bogmærker';

  @override
  String get brightIvoryInterface => 'Lys elfenbensgrænseflade';

  @override
  String get calculatingDistance => 'Beregner afstand...';

  @override
  String get calibrateYourDirection => 'Kalibrer din retning';

  @override
  String get cancel => 'Annuller';

  @override
  String get change => 'Skift';

  @override
  String get changeTasbihMode => 'Skift tasbih-tilstand?';

  @override
  String get chooseDhikr => 'Vælg dhikr';

  @override
  String get chooseDisplayLanguage => 'Vælg visningssprog';

  @override
  String get chooseTheme => 'Vælg tema';

  @override
  String get chooseYourPreferredLanguage => 'Vælg dit foretrukne sprog';

  @override
  String get clickOrSwipeToCount => 'Tryk eller stryg for at tælle';

  @override
  String get close => 'Luk';

  @override
  String get closeCustomGoal => 'Luk eget mål';

  @override
  String get completeAtLeast33Dhikr => 'Fuldfør mindst 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Forbind dit hjerte med den hellige Koran.';

  @override
  String get continueReading => 'Fortsæt læsning';

  @override
  String get countsPerRound => 'Antal pr. runde';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Sammensæt din samling af mesterligt forarbejdede åndelige ædelsten.';

  @override
  String get current => 'AKTUEL';

  @override
  String get current2 => 'Aktuel';

  @override
  String get currentLocationToMecca => 'Nuværende placering til Mekka';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Den nuværende fremgang nulstilles til den nye tilstand.';

  @override
  String get currentStreak => 'Nuværende serie';

  @override
  String get custom => 'Tilpasset';

  @override
  String get customDhikr => 'Egen dhikr';

  @override
  String get customGoal => 'Eget mål';

  @override
  String get customPrayerSounds => 'Egne bønnelyde';

  @override
  String get dailyGoal => 'Dagligt mål';

  @override
  String get dailyQuests => 'Daglige opgaver';

  @override
  String get dailyQuranReminder => 'Daglig Koran-påmindelse';

  @override
  String get dailyReminders => 'Daglige påmindelser';

  @override
  String get dailyTasbih => 'Daglig tasbih';

  @override
  String get dark => 'Mørk';

  @override
  String get dawn => 'DAGGRY';

  @override
  String get debug => 'Fejlfinding';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Dhikr-aktivitet';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'RETNING';

  @override
  String get disableBatteryOptimization => 'Slå batterioptimering fra';

  @override
  String get disableOptimization => 'SLÅ OPTIMERING FRA';

  @override
  String get distance => 'AFSTAND';

  @override
  String get e => 'Ø';

  @override
  String get eGHasbunallah => 'f.eks. HasbunAllah';

  @override
  String get east => 'Øst';

  @override
  String get enableAutoStart => 'Aktivér autostart';

  @override
  String get enableNotifications => 'Aktivér notifikationer';

  @override
  String get enableReminders => 'Aktivér påmindelser';

  @override
  String get english => 'Engelsk';

  @override
  String get enterYourName => 'Indtast dit navn';

  @override
  String get equipped => 'VALGT';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Alt hvad du har brug for til en bedre Koran-oplevelse.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Feedback';

  @override
  String get first => 'Først';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'For det mest præcise resultat skal du holde telefonen fladt og væk fra magnetiske genstande.';

  @override
  String get free => 'Gratis';

  @override
  String get fullBundle => 'Hele pakken';

  @override
  String get getAnAdFreeExperienceForever =>
      'Få en reklamefri oplevelse for altid';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Bliv mindet om at læse, og hold rytmen.';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get gloryAndPraiseBeToAllah => 'Ære og pris være Allah';

  @override
  String get gloryBeToAllah => 'Ære være Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Ære være Allah, den Mægtige';

  @override
  String get goToHome => 'Gå til startsiden';

  @override
  String get goldenEngraved => 'Graveret guld';

  @override
  String get greenJade => 'Grøn jade';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Vibration';

  @override
  String get hasanatHub => 'Hasanat-center';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Hjem';

  @override
  String get howYourDataIsHandled => 'Sådan behandles dine data';

  @override
  String get iSeekForgivenessFromAllah => 'Jeg beder Allah om tilgivelse';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Jeg søger tilflugt hos Allah mod den forbandede Satan';

  @override
  String get immediateAlerts => 'Øjeblikkelige notifikationer';

  @override
  String get inTheNameOfAllah => 'I Allahs navn';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Vi tilhører sandelig Allah, og til Ham vender vi tilbage';

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
  String get keepAdhanAlarmsReliable => 'Hold adhan-alarmerne pålidelige';

  @override
  String get keepItUpYouReDoingGreat => 'Bliv ved! Du klarer det flot.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Hold bønnekaldene pålidelige, også når appen er lukket.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Sprog';

  @override
  String get lapisLazuli => 'Lapis lazuli';

  @override
  String get last7Days => 'Sidste 7 dage';

  @override
  String get later => 'SENERE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Lad os begynde din smukke rejse med Koranen.';

  @override
  String get letSPersonalizeYourExperience => 'Lad os tilpasse\ndin oplevelse';

  @override
  String get light => 'Lys';

  @override
  String get lightMode => 'Lys tilstand';

  @override
  String get listenToOrReadAnyAyahToday => 'Lyt til eller læs et vers i dag';

  @override
  String get locating => 'Finder placering...';

  @override
  String get location => 'Placering';

  @override
  String get locationPermissionsAreDenied => 'Placeringstilladelser er afvist';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Placeringstilladelser er permanent afvist.';

  @override
  String get locationServicesAreDisabled => 'Placeringstjenester er slået fra.';

  @override
  String get longestStreak => 'Længste serie';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Måske senere';

  @override
  String get meccaSaudiArabia => 'Mekka, Saudi-Arabien';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Min Herre, tilgiv og vær barmhjertig';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Min Herre, jeg har brug for alt det gode, Du sender ned';

  @override
  String get myLordIncreaseMeInKnowledge => 'Min Herre, forøg min viden';

  @override
  String get myLordMakeItEasyAndDoNot => 'Min Herre, gør det let og ikke svært';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Navn (valgfrit)';

  @override
  String get next => 'Næste';

  @override
  String get nextDhikr => 'Næste dhikr';

  @override
  String get nextPrayer => 'NÆSTE BØN';

  @override
  String get night => 'NAT';

  @override
  String get nightEmeraldInterface => 'Mørk smaragdgrøn grænseflade';

  @override
  String get noBookmarksYet => 'Ingen bogmærker endnu';

  @override
  String get noon => 'MIDDAG';

  @override
  String get north => 'Nord';

  @override
  String get northeast => 'Nordøst';

  @override
  String get northwest => 'Nordvest';

  @override
  String get notificationsAlarm => 'Notifikationer og alarm';

  @override
  String get notificationsForPrayerTimes => 'Notifikationer for bønnetider';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'O Allah, velsign Muhammad';

  @override
  String get oEverLivingOSustainer => 'O Evigt Levende, O Opretholder';

  @override
  String get openAutoStart => 'ÅBN AUTOSTART';

  @override
  String get optimizeAdhanPerformance => 'Optimér adhan-ydelsen';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Vor Herre, skænk os det gode i denne verden';

  @override
  String get page => 'SIDE';

  @override
  String get pearl => 'Perle';

  @override
  String get personalizeYourAdhanNotifications =>
      'Tilpas dine adhan-notifikationer';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Lovet være Allah, verdenernes Herre';

  @override
  String get prayerAlarms => 'Bønnealarmer';

  @override
  String get prayerSchedule => 'Bønneskema';

  @override
  String get prayerTimeNotifications => 'Notifikationer om bønnetider';

  @override
  String get prayerTimesAreLoading => 'Bønnetiderne indlæses';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Bønnetider, qibla, Koranlæsning og tasbih i én daglig ledsager.';

  @override
  String get prayerQuranQibla => 'BØN • KORANEN • QIBLA';

  @override
  String get premiumThemes => 'Premiumtemaer';

  @override
  String get preparingYourSpiritualJourney =>
      'Forbereder din åndelige rejse...';

  @override
  String get previousDhikr => 'Forrige dhikr';

  @override
  String get privacyPolicy => 'Privatlivspolitik';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Qibla-finder';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Koranen';

  @override
  String get quranPlayback => 'Koranafspilning';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro samler bønnetider, qibla, Koranlæsning og tasbih i én enkel daglig ledsager.';

  @override
  String get quranProPreferences => 'Indstillinger for Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro gemmer introduktions- og fremgangsindstillinger lokalt på denne enhed. Analysedata kan bruges til at forbedre stabilitet og kvalitet.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro gemmer din tasbih-fremgang lokalt på denne enhed. Analysedata kan bruges til at forbedre appens stabilitet og kvalitet.';

  @override
  String get quranRecitation => 'Koranrecitation';

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
  String get rateApp => 'Bedøm appen';

  @override
  String get rateQuranPro => 'Bedøm Quran Pro';

  @override
  String get readListen => 'Læs og lyt';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Læs Koranen med smukke recitationer.';

  @override
  String get recent => 'Seneste';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Anbefales til Xiaomi, Oppo, Vivo og Huawei';

  @override
  String get redCarnelian => 'Rød karneol';

  @override
  String get remindMeAt => 'Mind mig om det kl.';

  @override
  String get removeAds => 'Fjern reklamer';

  @override
  String get requestingLocationPermission =>
      'Anmoder om placeringstilladelse...';

  @override
  String get reset => 'Nulstil';

  @override
  String get retry => 'Prøv igen';

  @override
  String get returnToCompass => 'Tilbage til kompasset';

  @override
  String get s => 'S';

  @override
  String get save => 'Gem';

  @override
  String get saveGoal => 'Gem mål';

  @override
  String get searchSurahNumberArabic => 'Søg sura, nummer, arabisk...';

  @override
  String get searchSurah => 'Søg sura...';

  @override
  String get selectLanguage => 'Vælg sprog';

  @override
  String get selectTheThemeYouLike => 'Vælg det tema, du kan lide';

  @override
  String get selectYourBead => 'Vælg din perle';

  @override
  String get shop => 'Butik';

  @override
  String get shopCustomization => 'Butik og tilpasning';

  @override
  String get sound => 'Lyd';

  @override
  String get south => 'Syd';

  @override
  String get southeast => 'Sydøst';

  @override
  String get southwest => 'Sydvest';

  @override
  String get specialOccasionsAndMore => 'Særlige lejligheder og mere';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Butiksbedømmelse tilkobles, når butikssiden er klar.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SOLNEDGANG';

  @override
  String get supportQuranProOnTheStore => 'Støt Quran Pro i butikken';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Tasbih-indstillinger';

  @override
  String get tellUsWhatToImprove => 'Fortæl os, hvad vi kan forbedre';

  @override
  String get termsOfUse => 'Brugsvilkår';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Tak fordi du bruger Quran Pro. Butiksbedømmelse tilkobles, når butikssiden er klar.';

  @override
  String get thereIsNoDeityExceptAllah => 'Der er ingen gud undtagen Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Der er ingen magt eller styrke undtagen gennem Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Det hjælper os med at tilpasse påmindelser og følge din fremgang.';

  @override
  String get tigerSEye => 'Tigerøje';

  @override
  String get today => 'I dag';

  @override
  String get total => 'I alt';

  @override
  String get totalHasanat => 'HASANAT I ALT';

  @override
  String get trackProgress => 'Følg fremgang';

  @override
  String get trackYourReadingAndAchievements =>
      'Følg din læsning og dine resultater.';

  @override
  String get tryAgain => 'Prøv igen';

  @override
  String get undo => 'Fortryd';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Lås alle temaer og tilpasninger op';

  @override
  String get usageGuidelines => 'Retningslinjer for brug';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Brug Quran Pro respektfuldt til personlig tilbedelse, læring og daglige islamiske rutiner.';

  @override
  String get viewAll => 'Vis alle';

  @override
  String get w => 'V';

  @override
  String get welcome => 'Velkommen';

  @override
  String get west => 'Vest';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Du er klar!';

  @override
  String get yourProgress => 'Din fremgang';

  @override
  String get continueLabel => 'Fortsæt';

  @override
  String get amethyst => 'Ametyst';

  @override
  String get indonesian => 'Indonesisk';

  @override
  String get turkish => 'Tyrkisk';

  @override
  String get vietnamese => 'Vietnamesisk';

  @override
  String get turquoise => 'Turkis';

  @override
  String get wood => 'Træ';

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
