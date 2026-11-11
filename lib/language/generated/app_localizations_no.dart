// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian (`no`).
class AppLocalizationsNo extends AppLocalizations {
  AppLocalizationsNo([String locale = 'no']) : super(locale);

  @override
  String get week => 'Uke';

  @override
  String get month => 'Måned';

  @override
  String get lifetime => 'Alle tider';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ta en pause fra arbeidet og sett av tid til Allah.';

  @override
  String get prayerAlarmDefaultName => 'Bønn';

  @override
  String productUnavailable(Object id) {
    return 'Produktet $id er ikke tilgjengelig for kjøp.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Kjøpet av $productId er fullført!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Kjøpet av $productId er gjenopprettet!';
  }

  @override
  String daysCount(Object count) {
    return '$count dager';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'KOMMER: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Avstand til Mekka: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Påminn meg om $minutes minutter';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Det er tid for $prayerName-bønnen';
  }

  @override
  String roundValue(Object round) {
    return 'Runde: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language er valgt';
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
    return '$surahName: Vers $verse';
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
    return 'NIVÅ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sure Al-Baqarah 2:238)';

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
      'Annonsen lastes inn. Prøv igjen om litt.';

  @override
  String get addCustomDhikr => 'Legg til egen dhikr';

  @override
  String get addCustomDhikr2 => 'Legg til egen dhikr';

  @override
  String get addDhikr => 'Legg til dhikr';

  @override
  String get adjustPosition => 'JUSTER POSISJON';

  @override
  String get afternoon => 'ETTERMIDDAG';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'PEKER MOT QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'All lovprisning tilhører Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Alle premiumfunksjoner til redusert pris';

  @override
  String get allInOneQuranApp => 'Alt-i-ett Koran-app';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah er nok for meg; det finnes ingen gud utenom Ham';

  @override
  String get allahIsTheGreatest => 'Allah er den største';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Gi tilgang til posisjon, eller trykk på Prøv igjen for å bruke reserveplanen.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Tillat varsler for å motta bønnetider og daglige påminnelser.';

  @override
  String get allowTheAppToRunInTheBackground => 'La appen kjøre i bakgrunnen';

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
  String get avg => 'Gj.sn.';

  @override
  String get ayah => 'Vers';

  @override
  String get batteryOptimization => 'Batterioptimalisering';

  @override
  String get beautifulWidgets => 'Vakre widgeter';

  @override
  String get bestValue => 'BESTE KJØP';

  @override
  String get blackOnyx => 'Svart onyks';

  @override
  String get bookmarks => 'Bokmerker';

  @override
  String get brightIvoryInterface => 'Lyst elfenbensgrensesnitt';

  @override
  String get calculatingDistance => 'Beregner avstand ...';

  @override
  String get calibrateYourDirection => 'Kalibrer retningen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get change => 'Endre';

  @override
  String get changeTasbihMode => 'Endre tasbih-modus?';

  @override
  String get chooseDhikr => 'Velg dhikr';

  @override
  String get chooseDisplayLanguage => 'Velg visningsspråk';

  @override
  String get chooseTheme => 'Velg tema';

  @override
  String get chooseYourPreferredLanguage => 'Velg språket du foretrekker';

  @override
  String get clickOrSwipeToCount => 'Trykk eller sveip for å telle';

  @override
  String get close => 'Lukk';

  @override
  String get closeCustomGoal => 'Lukk egendefinert mål';

  @override
  String get completeAtLeast33Dhikr => 'Fullfør minst 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Knytt hjertet ditt til den hellige Koranen.';

  @override
  String get continueReading => 'Fortsett å lese';

  @override
  String get countsPerRound => 'Tellinger per runde';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Sett sammen samlingen din med mesterlig utformede åndelige edelstener.';

  @override
  String get current => 'NÅVÆRENDE';

  @override
  String get current2 => 'Nåværende';

  @override
  String get currentLocationToMecca => 'Nåværende posisjon til Mekka';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Nåværende fremgang nullstilles for den nye modusen.';

  @override
  String get currentStreak => 'Nåværende rekke';

  @override
  String get custom => 'Egendefinert';

  @override
  String get customDhikr => 'Egen dhikr';

  @override
  String get customGoal => 'Egendefinert mål';

  @override
  String get customPrayerSounds => 'Egendefinerte bønnelyder';

  @override
  String get dailyGoal => 'Daglig mål';

  @override
  String get dailyQuests => 'Daglige oppdrag';

  @override
  String get dailyQuranReminder => 'Daglig Koran-påminnelse';

  @override
  String get dailyReminders => 'Daglige påminnelser';

  @override
  String get dailyTasbih => 'Daglig tasbih';

  @override
  String get dark => 'Mørkt';

  @override
  String get dawn => 'DAGGRY';

  @override
  String get debug => 'Feilsøking';

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
  String get disableBatteryOptimization => 'Slå av batterioptimalisering';

  @override
  String get disableOptimization => 'SLÅ AV OPTIMALISERING';

  @override
  String get distance => 'AVSTAND';

  @override
  String get e => 'Ø';

  @override
  String get eGHasbunallah => 'f.eks. HasbunAllah';

  @override
  String get east => 'Øst';

  @override
  String get enableAutoStart => 'Slå på autostart';

  @override
  String get enableNotifications => 'Slå på varsler';

  @override
  String get enableReminders => 'Slå på påminnelser';

  @override
  String get english => 'Engelsk';

  @override
  String get enterYourName => 'Skriv inn navnet ditt';

  @override
  String get equipped => 'I BRUK';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Alt du trenger for en bedre Koran-opplevelse.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Tilbakemelding';

  @override
  String get first => 'Første';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'For best mulig nøyaktighet, hold telefonen flatt og unna magnetiske gjenstander.';

  @override
  String get free => 'Gratis';

  @override
  String get fullBundle => 'Full pakke';

  @override
  String get getAnAdFreeExperienceForever =>
      'Få en annonsefri opplevelse for alltid';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Få påminnelser om å lese, og hold rutinen.';

  @override
  String get getStarted => 'Kom i gang';

  @override
  String get gloryAndPraiseBeToAllah => 'Ære og lovprisning være Allah';

  @override
  String get gloryBeToAllah => 'Ære være Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Ære være Allah, den mektige';

  @override
  String get goToHome => 'Gå til hjem';

  @override
  String get goldenEngraved => 'Gullgravert';

  @override
  String get greenJade => 'Grønn jade';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Vibrasjon';

  @override
  String get hasanatHub => 'Hasanat-senter';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Hjem';

  @override
  String get howYourDataIsHandled => 'Slik behandles dataene dine';

  @override
  String get iSeekForgivenessFromAllah => 'Jeg søker tilgivelse hos Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Jeg søker tilflukt hos Allah fra den forbannede Satan';

  @override
  String get immediateAlerts => 'Umiddelbare varsler';

  @override
  String get inTheNameOfAllah => 'I Allahs navn';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Sannelig, vi tilhører Allah, og til Ham vender vi tilbake';

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
  String get keepAdhanAlarmsReliable => 'Hold adhan-alarmene pålitelige';

  @override
  String get keepItUpYouReDoingGreat => 'Stå på! Du gjør det flott.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Hold bønneropene pålitelige selv når appen er lukket.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Språk';

  @override
  String get lapisLazuli => 'Lapis lazuli';

  @override
  String get last7Days => 'Siste 7 dager';

  @override
  String get later => 'SENERE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'La oss begynne din vakre reise med Koranen.';

  @override
  String get letSPersonalizeYourExperience =>
      'La oss tilpasse\nopplevelsen din';

  @override
  String get light => 'Lyst';

  @override
  String get lightMode => 'Lys modus';

  @override
  String get listenToOrReadAnyAyahToday => 'Lytt til eller les et vers i dag';

  @override
  String get locating => 'Finner posisjon ...';

  @override
  String get location => 'Posisjon';

  @override
  String get locationPermissionsAreDenied => 'Posisjonstilgang er avslått';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Posisjonstilgang er permanent avslått.';

  @override
  String get locationServicesAreDisabled => 'Posisjonstjenester er slått av.';

  @override
  String get longestStreak => 'Lengste rekke';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Kanskje senere';

  @override
  String get meccaSaudiArabia => 'Mekka, Saudi-Arabia';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Min Herre, tilgi og vis nåde';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Min Herre, jeg trenger alt det gode Du sender ned';

  @override
  String get myLordIncreaseMeInKnowledge => 'Min Herre, øk min kunnskap';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Min Herre, gjør det lett og ikke vanskelig';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Navn (valgfritt)';

  @override
  String get next => 'Neste';

  @override
  String get nextDhikr => 'Neste dhikr';

  @override
  String get nextPrayer => 'NESTE BØNN';

  @override
  String get night => 'NATT';

  @override
  String get nightEmeraldInterface => 'Nattlig smaragdgrensesnitt';

  @override
  String get noBookmarksYet => 'Ingen bokmerker ennå';

  @override
  String get noon => 'MIDDAGSTID';

  @override
  String get north => 'Nord';

  @override
  String get northeast => 'Nordøst';

  @override
  String get northwest => 'Nordvest';

  @override
  String get notificationsAlarm => 'Varsler og alarm';

  @override
  String get notificationsForPrayerTimes => 'Varsler for bønnetider';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Å Allah, send velsignelser over Muhammad';

  @override
  String get oEverLivingOSustainer => 'Å Du Eviglevende, Du Opprettholder';

  @override
  String get openAutoStart => 'ÅPNE AUTOSTART';

  @override
  String get optimizeAdhanPerformance => 'Optimaliser adhan-ytelsen';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Vår Herre, gi oss det gode i denne verden';

  @override
  String get page => 'SIDE';

  @override
  String get pearl => 'Perle';

  @override
  String get personalizeYourAdhanNotifications => 'Tilpass adhan-varslene dine';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Lovet være Allah, verdenes Herre';

  @override
  String get prayerAlarms => 'Bønnealarmer';

  @override
  String get prayerSchedule => 'Bønneplan';

  @override
  String get prayerTimeNotifications => 'Varsler om bønnetider';

  @override
  String get prayerTimesAreLoading => 'Bønnetidene lastes inn';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Bønnetider, qibla, Koran-lesing og tasbih i én daglig følgesvenn.';

  @override
  String get prayerQuranQibla => 'BØNN • KORANEN • QIBLA';

  @override
  String get premiumThemes => 'Premium-temaer';

  @override
  String get preparingYourSpiritualJourney =>
      'Forbereder din åndelige reise ...';

  @override
  String get previousDhikr => 'Forrige dhikr';

  @override
  String get privacyPolicy => 'Personvernerklæring';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Qibla-søker';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Koranen';

  @override
  String get quranPlayback => 'Koran-avspilling';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro samler bønnetider, qibla, Koran-lesing og tasbih i én enkel daglig følgesvenn.';

  @override
  String get quranProPreferences => 'Innstillinger for Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro lagrer innstillinger for oppstart og fremgang lokalt på denne enheten. Analyse kan brukes for å forbedre stabilitet og kvalitet.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro lagrer tasbih-fremgangen din lokalt på denne enheten. Analyse kan brukes for å forbedre appens stabilitet og produktkvalitet.';

  @override
  String get quranRecitation => 'Koran-resitasjon';

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
  String get rateApp => 'Vurder appen';

  @override
  String get rateQuranPro => 'Vurder Quran Pro';

  @override
  String get readListen => 'Les og lytt';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Les Koranen med vakre resitasjoner.';

  @override
  String get recent => 'Nylig';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Anbefalt for Xiaomi, Oppo, Vivo og Huawei';

  @override
  String get redCarnelian => 'Rød karneol';

  @override
  String get remindMeAt => 'Påminn meg kl.';

  @override
  String get removeAds => 'Fjern annonser';

  @override
  String get requestingLocationPermission => 'Ber om posisjonstilgang ...';

  @override
  String get reset => 'Nullstill';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get returnToCompass => 'Tilbake til kompasset';

  @override
  String get s => 'S';

  @override
  String get save => 'Lagre';

  @override
  String get saveGoal => 'Lagre mål';

  @override
  String get searchSurahNumberArabic => 'Søk etter sure, nummer, arabisk ...';

  @override
  String get searchSurah => 'Søk etter sure ...';

  @override
  String get selectLanguage => 'Velg språk';

  @override
  String get selectTheThemeYouLike => 'Velg temaet du liker';

  @override
  String get selectYourBead => 'Velg perlen din';

  @override
  String get shop => 'Butikk';

  @override
  String get shopCustomization => 'Butikk og tilpasning';

  @override
  String get sound => 'Lyd';

  @override
  String get south => 'Sør';

  @override
  String get southeast => 'Sørøst';

  @override
  String get southwest => 'Sørvest';

  @override
  String get specialOccasionsAndMore => 'Spesielle anledninger og mer';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Vurdering i butikken kobles til når produksjonsoppføringen er klar.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SOLNEDGANG';

  @override
  String get supportQuranProOnTheStore => 'Støtt Quran Pro i butikken';

  @override
  String get surah => 'Sure';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Tasbih-innstillinger';

  @override
  String get tellUsWhatToImprove => 'Fortell oss hva vi kan forbedre';

  @override
  String get termsOfUse => 'Bruksvilkår';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Takk for at du bruker Quran Pro. Vurdering i butikken kobles til når butikkoppføringen er klar.';

  @override
  String get thereIsNoDeityExceptAllah => 'Det finnes ingen gud utenom Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Det finnes ingen makt eller kraft uten gjennom Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Dette hjelper oss å tilpasse påminnelser og følge fremgangen din.';

  @override
  String get tigerSEye => 'Tigerøye';

  @override
  String get today => 'I dag';

  @override
  String get total => 'Totalt';

  @override
  String get totalHasanat => 'HASANAT TOTALT';

  @override
  String get trackProgress => 'Følg fremgangen';

  @override
  String get trackYourReadingAndAchievements =>
      'Følg lesingen og prestasjonene dine.';

  @override
  String get tryAgain => 'Prøv igjen';

  @override
  String get undo => 'Angre';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Lås opp alle apptemaer og tilpasninger';

  @override
  String get usageGuidelines => 'Retningslinjer for bruk';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Bruk Quran Pro respektfullt til personlig tilbedelse, læring og daglige islamske rutiner.';

  @override
  String get viewAll => 'Se alle';

  @override
  String get w => 'V';

  @override
  String get welcome => 'Velkommen';

  @override
  String get west => 'Vest';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Alt er klart!';

  @override
  String get yourProgress => 'Fremgangen din';

  @override
  String get continueLabel => 'Fortsett';

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
  String get wood => 'Tre';

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
