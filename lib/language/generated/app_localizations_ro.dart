// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get week => 'Săptămână';

  @override
  String get month => 'Lună';

  @override
  String get lifetime => 'Tot timpul';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ia o pauză de la muncă și fă-ți timp pentru Allah.';

  @override
  String get prayerAlarmDefaultName => 'Rugăciune';

  @override
  String productUnavailable(Object id) {
    return 'Produsul $id nu este disponibil pentru cumpărare.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Achiziția $productId a reușit!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Achiziția $productId a fost restaurată!';
  }

  @override
  String daysCount(Object count) {
    return '$count zile';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'URMEAZĂ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Distanța până la Mecca: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Amintește-mi peste $minutes minute';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Este timpul pentru rugăciunea $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Rundă: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language selectată';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Pagina $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: versetul $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count versete';
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
    return 'NIVELUL $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Baqara 2:238)';

  @override
  String get text1juz => '1 juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 pagini';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 de pagini';

  @override
  String get text28cclearsky => '28°C - Cer senin';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 pagini';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Despre';

  @override
  String get aboutQuranPro => 'Despre Quran Pro';

  @override
  String get activity => 'Activitate';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reclama se încarcă. Încearcă din nou în curând.';

  @override
  String get addCustomDhikr => 'Adaugă dhikr personalizat';

  @override
  String get addCustomDhikr2 => 'Adaugă dhikr personalizat';

  @override
  String get addDhikr => 'Adaugă dhikr';

  @override
  String get adjustPosition => 'AJUSTEAZĂ POZIȚIA';

  @override
  String get afternoon => 'DUPĂ-AMIAZĂ';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALINIAT CU QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Toată lauda I se cuvine lui Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Toate funcțiile premium la preț redus';

  @override
  String get allInOneQuranApp => 'Aplicație completă pentru Coran';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah îmi este de ajuns; nu există altă divinitate în afară de El';

  @override
  String get allahIsTheGreatest => 'Allah este Cel mai Mare';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Permite accesul la locație sau apasă „Reîncearcă” pentru a folosi programul de rezervă.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Permite notificările pentru a primi orele rugăciunilor și mementouri zilnice.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Permite aplicației să ruleze în fundal';

  @override
  String get app => 'Aplicație';

  @override
  String get arabic => 'Arabă';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Med.';

  @override
  String get ayah => 'Verset';

  @override
  String get batteryOptimization => 'Optimizarea bateriei';

  @override
  String get beautifulWidgets => 'Widgeturi frumoase';

  @override
  String get bestValue => 'CEA MAI BUNĂ OFERTĂ';

  @override
  String get blackOnyx => 'Onix negru';

  @override
  String get bookmarks => 'Marcaje';

  @override
  String get brightIvoryInterface => 'Interfață luminoasă, fildeș';

  @override
  String get calculatingDistance => 'Se calculează distanța...';

  @override
  String get calibrateYourDirection => 'Calibrează direcția';

  @override
  String get cancel => 'Anulează';

  @override
  String get change => 'Schimbă';

  @override
  String get changeTasbihMode => 'Schimbi modul tasbih?';

  @override
  String get chooseDhikr => 'Alege dhikr';

  @override
  String get chooseDisplayLanguage => 'Alege limba de afișare';

  @override
  String get chooseTheme => 'Alege tema';

  @override
  String get chooseYourPreferredLanguage => 'Alege limba preferată';

  @override
  String get clickOrSwipeToCount => 'Apasă sau glisează pentru a număra';

  @override
  String get close => 'Închide';

  @override
  String get closeCustomGoal => 'Închide obiectivul personalizat';

  @override
  String get completeAtLeast33Dhikr => 'Fă cel puțin 33 de dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Leagă-ți inima de Sfântul Coran.';

  @override
  String get continueReading => 'Continuă lectura';

  @override
  String get countsPerRound => 'Repetări pe rundă';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Îți creezi colecția cu pietre spirituale lucrate cu măiestrie.';

  @override
  String get current => 'CURENT';

  @override
  String get current2 => 'Curent';

  @override
  String get currentLocationToMecca => 'De la locația curentă la Mecca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Progresul curent va fi resetat pentru noul mod.';

  @override
  String get currentStreak => 'Seria curentă';

  @override
  String get custom => 'Personalizat';

  @override
  String get customDhikr => 'Dhikr personalizat';

  @override
  String get customGoal => 'Obiectiv personalizat';

  @override
  String get customPrayerSounds => 'Sunete personalizate pentru rugăciune';

  @override
  String get dailyGoal => 'Obiectiv zilnic';

  @override
  String get dailyQuests => 'Misiuni zilnice';

  @override
  String get dailyQuranReminder => 'Memento zilnic pentru Coran';

  @override
  String get dailyReminders => 'Mementouri zilnice';

  @override
  String get dailyTasbih => 'Tasbih zilnic';

  @override
  String get dark => 'Închis';

  @override
  String get dawn => 'ZORI';

  @override
  String get debug => 'Depanare';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Activitate dhikr';

  @override
  String get dhuAlHijjah => 'Dhu al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu al-Qadah';

  @override
  String get dhuhr => 'Zuhr';

  @override
  String get direction => 'DIRECȚIE';

  @override
  String get disableBatteryOptimization => 'Dezactivează optimizarea bateriei';

  @override
  String get disableOptimization => 'DEZACTIVEAZĂ OPTIMIZAREA';

  @override
  String get distance => 'DISTANȚĂ';

  @override
  String get e => 'E';

  @override
  String get eGHasbunallah => 'ex. HasbunAllah';

  @override
  String get east => 'Est';

  @override
  String get enableAutoStart => 'Activează pornirea automată';

  @override
  String get enableNotifications => 'Activează notificările';

  @override
  String get enableReminders => 'Activează mementourile';

  @override
  String get english => 'Engleză';

  @override
  String get enterYourName => 'Introdu numele tău';

  @override
  String get equipped => 'ECHIPAT';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Tot ce îți trebuie pentru o experiență mai bună cu Coranul.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Feedback';

  @override
  String get first => 'Primul';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Pentru cele mai precise rezultate, ține telefonul orizontal și departe de obiecte magnetice.';

  @override
  String get free => 'Gratuit';

  @override
  String get fullBundle => 'Pachet complet';

  @override
  String get getAnAdFreeExperienceForever =>
      'Bucură-te de o experiență fără reclame, pentru totdeauna';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Primește mementouri să citești și rămâi constant.';

  @override
  String get getStarted => 'Să începem';

  @override
  String get gloryAndPraiseBeToAllah => 'Slavă și laudă lui Allah';

  @override
  String get gloryBeToAllah => 'Slavă lui Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Slavă lui Allah, Cel Măreț';

  @override
  String get goToHome => 'Mergi la ecranul principal';

  @override
  String get goldenEngraved => 'Gravat auriu';

  @override
  String get greenJade => 'Jad verde';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Vibrații';

  @override
  String get hasanatHub => 'Centrul hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Acasă';

  @override
  String get howYourDataIsHandled => 'Cum sunt gestionate datele tale';

  @override
  String get iSeekForgivenessFromAllah => 'Îi cer iertare lui Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Caut adăpost la Allah de șeitanul cel blestemat';

  @override
  String get immediateAlerts => 'Alerte imediate';

  @override
  String get inTheNameOfAllah => 'În numele lui Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Cu adevărat, ai lui Allah suntem și la El ne întoarcem';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isha';

  @override
  String get jumadaAlAwwal => 'Jumada al-Awwal';

  @override
  String get jumadaAlThani => 'Jumada al-Thani';

  @override
  String get juz => 'JUZ';

  @override
  String get juz2 => 'Juz';

  @override
  String get keepAdhanAlarmsReliable => 'Menține fiabile alarmele adhan';

  @override
  String get keepItUpYouReDoingGreat =>
      'Continuă tot așa! Te descurci de minune.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Menține fiabile chemările la rugăciune, chiar și când aplicația este închisă.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Limbă';

  @override
  String get lapisLazuli => 'Lapislazuli';

  @override
  String get last7Days => 'Ultimele 7 zile';

  @override
  String get later => 'MAI TÂRZIU';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Să începem frumoasa ta călătorie cu Coranul.';

  @override
  String get letSPersonalizeYourExperience => 'Să îți personalizăm\nexperiența';

  @override
  String get light => 'Deschis';

  @override
  String get lightMode => 'Mod luminos';

  @override
  String get listenToOrReadAnyAyahToday => 'Ascultă sau citește un verset azi';

  @override
  String get locating => 'Se localizează...';

  @override
  String get location => 'Locație';

  @override
  String get locationPermissionsAreDenied => 'Accesul la locație este refuzat';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Accesul la locație este refuzat permanent.';

  @override
  String get locationServicesAreDisabled =>
      'Serviciile de localizare sunt dezactivate.';

  @override
  String get longestStreak => 'Cea mai lungă serie';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Poate mai târziu';

  @override
  String get meccaSaudiArabia => 'Mecca, Arabia Saudită';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Domnul meu, iartă și ai milă';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Domnul meu, am nevoie de orice bine îmi trimiți';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Domnul meu, sporește-mi cunoașterea';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Domnul meu, fă-o ușoară și nu o îngreuna';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Nume (opțional)';

  @override
  String get next => 'Următorul';

  @override
  String get nextDhikr => 'Dhikr următor';

  @override
  String get nextPrayer => 'URMĂTOAREA RUGĂCIUNE';

  @override
  String get night => 'NOAPTE';

  @override
  String get nightEmeraldInterface => 'Interfață smarald pentru noapte';

  @override
  String get noBookmarksYet => 'Niciun marcaj încă';

  @override
  String get noon => 'AMIAZĂ';

  @override
  String get north => 'Nord';

  @override
  String get northeast => 'Nord-est';

  @override
  String get northwest => 'Nord-vest';

  @override
  String get notificationsAlarm => 'Notificări și alarmă';

  @override
  String get notificationsForPrayerTimes =>
      'Notificări pentru orele rugăciunilor';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'O, Allah, binecuvântează-l pe Muhammad';

  @override
  String get oEverLivingOSustainer => 'O, Veșnic Viu, o, Susținătorule';

  @override
  String get openAutoStart => 'DESCHIDE PORNIREA AUTOMATĂ';

  @override
  String get optimizeAdhanPerformance => 'Optimizează performanța adhanului';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Domnul nostru, dăruiește-ne bine în această lume';

  @override
  String get page => 'PAGINA';

  @override
  String get pearl => 'Perlă';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personalizează notificările adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Laudă lui Allah, Domnul lumilor';

  @override
  String get prayerAlarms => 'Alarme pentru rugăciune';

  @override
  String get prayerSchedule => 'Programul rugăciunilor';

  @override
  String get prayerTimeNotifications => 'Notificări pentru ora rugăciunii';

  @override
  String get prayerTimesAreLoading => 'Se încarcă orele rugăciunilor';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Orele rugăciunilor, qibla, lectura Coranului și tasbih într-un singur însoțitor zilnic.';

  @override
  String get prayerQuranQibla => 'RUGĂCIUNE • CORAN • QIBLA';

  @override
  String get premiumThemes => 'Teme premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Îți pregătim călătoria spirituală...';

  @override
  String get previousDhikr => 'Dhikr anterior';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Busola qibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Coran';

  @override
  String get quranPlayback => 'Redare Coran';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro reunește orele rugăciunilor, qibla, lectura Coranului și tasbih într-un singur însoțitor zilnic, simplu.';

  @override
  String get quranProPreferences => 'Preferințe Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro stochează preferințele de configurare și de progres local, pe acest dispozitiv. Datele analitice pot fi folosite pentru a îmbunătăți stabilitatea și calitatea.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro stochează progresul tău la tasbih local, pe acest dispozitiv. Datele analitice pot fi folosite pentru a îmbunătăți stabilitatea aplicației și calitatea produsului.';

  @override
  String get quranRecitation => 'Recitarea Coranului';

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
  String get rabiAlAwwal => 'Rabi al-Awwal';

  @override
  String get rabiAlThani => 'Rabi al-Thani';

  @override
  String get rateApp => 'Evaluează aplicația';

  @override
  String get rateQuranPro => 'Evaluează Quran Pro';

  @override
  String get readListen => 'Citește și ascultă';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Citește Coranul cu recitări frumoase.';

  @override
  String get recent => 'Recente';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recomandat pentru Xiaomi, Oppo, Vivo și Huawei';

  @override
  String get redCarnelian => 'Carneol roșu';

  @override
  String get remindMeAt => 'Amintește-mi la';

  @override
  String get removeAds => 'Elimină reclamele';

  @override
  String get requestingLocationPermission =>
      'Se solicită accesul la locație...';

  @override
  String get reset => 'Resetează';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get returnToCompass => 'Înapoi la busolă';

  @override
  String get s => 'S';

  @override
  String get save => 'Salvează';

  @override
  String get saveGoal => 'Salvează obiectivul';

  @override
  String get searchSurahNumberArabic => 'Caută sură, număr, arabă...';

  @override
  String get searchSurah => 'Caută sură...';

  @override
  String get selectLanguage => 'Selectează limba';

  @override
  String get selectTheThemeYouLike => 'Alege tema care îți place';

  @override
  String get selectYourBead => 'Alege mărgeaua';

  @override
  String get shop => 'Magazin';

  @override
  String get shopCustomization => 'Magazin și personalizare';

  @override
  String get sound => 'Sunet';

  @override
  String get south => 'Sud';

  @override
  String get southeast => 'Sud-est';

  @override
  String get southwest => 'Sud-vest';

  @override
  String get specialOccasionsAndMore => 'Ocazii speciale și altele';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Evaluarea în magazin va fi disponibilă când listarea de producție va fi gata.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'APUS';

  @override
  String get supportQuranProOnTheStore => 'Susține Quran Pro în magazin';

  @override
  String get surah => 'Sură';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Setări tasbih';

  @override
  String get tellUsWhatToImprove => 'Spune-ne ce să îmbunătățim';

  @override
  String get termsOfUse => 'Termeni de utilizare';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Mulțumim că folosești Quran Pro. Evaluarea în magazin va fi disponibilă când listarea de producție va fi gata.';

  @override
  String get thereIsNoDeityExceptAllah =>
      'Nu există altă divinitate în afară de Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Nu există putere și nici tărie decât prin Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Astfel putem personaliza mementourile și urmări progresul tău.';

  @override
  String get tigerSEye => 'Ochi de tigru';

  @override
  String get today => 'Azi';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'TOTAL HASANAT';

  @override
  String get trackProgress => 'Urmărește progresul';

  @override
  String get trackYourReadingAndAchievements =>
      'Urmărește-ți lectura și realizările.';

  @override
  String get tryAgain => 'Încearcă din nou';

  @override
  String get undo => 'Revenire';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Deblochează toate temele și personalizările aplicației';

  @override
  String get usageGuidelines => 'Reguli de utilizare';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Folosește Quran Pro cu respect, pentru rugăciune personală, învățare și rutina islamică zilnică.';

  @override
  String get viewAll => 'Vezi tot';

  @override
  String get w => 'V';

  @override
  String get welcome => 'Bun venit';

  @override
  String get west => 'Vest';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Totul e gata!';

  @override
  String get yourProgress => 'Progresul tău';

  @override
  String get continueLabel => 'Continuă';

  @override
  String get amethyst => 'Ametist';

  @override
  String get indonesian => 'Indoneziană';

  @override
  String get turkish => 'Turcă';

  @override
  String get vietnamese => 'Vietnameză';

  @override
  String get turquoise => 'Turcoaz';

  @override
  String get wood => 'Lemn';

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
