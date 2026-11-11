// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get week => 'Nedēļa';

  @override
  String get month => 'Mēnesis';

  @override
  String get lifetime => 'Visu laiku';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Uz brīdi atliec darbu un veltī laiku Allāham.';

  @override
  String get prayerAlarmDefaultName => 'Lūgšana';

  @override
  String productUnavailable(Object id) {
    return 'Produkts $id nav pieejams iegādei.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId iegāde veiksmīga!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId iegāde atjaunota!';
  }

  @override
  String daysCount(Object count) {
    return '$count dienas';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'TUVOJAS: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Attālums līdz Mekai: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Atgādināt pēc $minutes minūtēm';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Ir pienācis $prayerName lūgšanas laiks';
  }

  @override
  String roundValue(Object round) {
    return 'Aplis: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Izvēlēta: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Džuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Lappuse $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: $verse. pants';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count panti';
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
    return 'LĪMENIS $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sūra Al-Bakara 2:238)';

  @override
  String get text1juz => '1 džuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 lappuses';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 lappuses';

  @override
  String get text28cclearsky => '28°C - Skaidras debesis';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 lappuses';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Par lietotni';

  @override
  String get aboutQuranPro => 'Par Quran Pro';

  @override
  String get activity => 'Aktivitāte';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklāma ielādējas. Lūdzu, pamēģini vēlreiz pēc brīža.';

  @override
  String get addCustomDhikr => 'Pievienot savu dhikr';

  @override
  String get addCustomDhikr2 => 'Pievienot savu dhikr';

  @override
  String get addDhikr => 'Pievienot dhikr';

  @override
  String get adjustPosition => 'PIELĀGOT POZĪCIJU';

  @override
  String get afternoon => 'PĒCPUSDIENA';

  @override
  String get alMasjidAlHaram => 'Al-Masdžid al-Harām';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'VĒRSTS UZ KIBLU';

  @override
  String get allPraiseIsDueToAllah => 'Visa slava pieder Allāham';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Visas premium funkcijas par izdevīgāku cenu';

  @override
  String get allInOneQuranApp => 'Viss vienā Korāna lietotne';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allāhs man ir pietiekams; nav dievības, izņemot Viņu';

  @override
  String get allahIsTheGreatest => 'Allāhs ir Visdižākais';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Atļauj piekļuvi atrašanās vietai vai pieskaries „Atkārtot”, lai izmantotu rezerves grafiku.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Atļauj paziņojumus, lai saņemtu lūgšanu laikus un ikdienas atgādinājumus.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Atļaut lietotnei darboties fonā';

  @override
  String get app => 'Lietotne';

  @override
  String get arabic => 'Arābu';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Vid.';

  @override
  String get ayah => 'Pants';

  @override
  String get batteryOptimization => 'Akumulatora optimizācija';

  @override
  String get beautifulWidgets => 'Skaisti logrīki';

  @override
  String get bestValue => 'IZDEVĪGĀKAIS';

  @override
  String get blackOnyx => 'Melnais onikss';

  @override
  String get bookmarks => 'Grāmatzīmes';

  @override
  String get brightIvoryInterface => 'Gaiša ziloņkaula saskarne';

  @override
  String get calculatingDistance => 'Aprēķina attālumu...';

  @override
  String get calibrateYourDirection => 'Kalibrē virzienu';

  @override
  String get cancel => 'Atcelt';

  @override
  String get change => 'Mainīt';

  @override
  String get changeTasbihMode => 'Mainīt tasbiha režīmu?';

  @override
  String get chooseDhikr => 'Izvēlies dhikr';

  @override
  String get chooseDisplayLanguage => 'Izvēlies attēlošanas valodu';

  @override
  String get chooseTheme => 'Izvēlies motīvu';

  @override
  String get chooseYourPreferredLanguage => 'Izvēlies vēlamo valodu';

  @override
  String get clickOrSwipeToCount => 'Pieskaries vai velc, lai skaitītu';

  @override
  String get close => 'Aizvērt';

  @override
  String get closeCustomGoal => 'Aizvērt pielāgoto mērķi';

  @override
  String get completeAtLeast33Dhikr => 'Pabeidz vismaz 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Savieno savu sirdi ar Svēto Korānu.';

  @override
  String get continueReading => 'Turpināt lasīšanu';

  @override
  String get countsPerRound => 'Skaitījumi vienā aplī';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Papildini savu kolekciju ar meistarīgi darinātiem garīgiem dārgakmeņiem.';

  @override
  String get current => 'PAŠREIZĒJAIS';

  @override
  String get current2 => 'Pašreizējais';

  @override
  String get currentLocationToMecca =>
      'No pašreizējās atrašanās vietas līdz Mekai';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Pašreizējais progress tiks atiestatīts jaunajam režīmam.';

  @override
  String get currentStreak => 'Pašreizējā sērija';

  @override
  String get custom => 'Pielāgots';

  @override
  String get customDhikr => 'Pielāgots dhikr';

  @override
  String get customGoal => 'Pielāgots mērķis';

  @override
  String get customPrayerSounds => 'Pielāgotas lūgšanu skaņas';

  @override
  String get dailyGoal => 'Dienas mērķis';

  @override
  String get dailyQuests => 'Dienas uzdevumi';

  @override
  String get dailyQuranReminder => 'Ikdienas Korāna atgādinājums';

  @override
  String get dailyReminders => 'Ikdienas atgādinājumi';

  @override
  String get dailyTasbih => 'Ikdienas tasbihs';

  @override
  String get dark => 'Tumšs';

  @override
  String get dawn => 'RĪTAUSMA';

  @override
  String get debug => 'Atkļūdošana';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Dhikr aktivitāte';

  @override
  String get dhuAlHijjah => 'Zu al-Hidža';

  @override
  String get dhuAlQadah => 'Zu al-Kada';

  @override
  String get dhuhr => 'Zuhr';

  @override
  String get direction => 'VIRZIENS';

  @override
  String get disableBatteryOptimization => 'Atspējot akumulatora optimizāciju';

  @override
  String get disableOptimization => 'ATSPĒJOT OPTIMIZĀCIJU';

  @override
  String get distance => 'ATTĀLUMS';

  @override
  String get e => 'A';

  @override
  String get eGHasbunallah => 'piem. HasbunAllah';

  @override
  String get east => 'Austrumi';

  @override
  String get enableAutoStart => 'Iespējot automātisko palaišanu';

  @override
  String get enableNotifications => 'Iespējot paziņojumus';

  @override
  String get enableReminders => 'Iespējot atgādinājumus';

  @override
  String get english => 'Angļu';

  @override
  String get enterYourName => 'Ievadi savu vārdu';

  @override
  String get equipped => 'IZVĒLĒTS';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Viss nepieciešamais labākai Korāna pieredzei.';

  @override
  String get fajr => 'Fadžr';

  @override
  String get feedback => 'Atsauksmes';

  @override
  String get first => 'Pirmais';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Visprecīzākajam rezultātam turi tālruni horizontāli un prom no magnētiskiem priekšmetiem.';

  @override
  String get free => 'Bez maksas';

  @override
  String get fullBundle => 'Pilnā pakete';

  @override
  String get getAnAdFreeExperienceForever => 'Lieto bez reklāmām mūžīgi';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Saņem atgādinājumus lasīt un saglabā regularitāti.';

  @override
  String get getStarted => 'Sākt';

  @override
  String get gloryAndPraiseBeToAllah => 'Slava un gods Allāham';

  @override
  String get gloryBeToAllah => 'Slava Allāham';

  @override
  String get gloryBeToAllahTheMagnificent => 'Slava Allāham, Varenajam';

  @override
  String get goToHome => 'Doties uz sākumu';

  @override
  String get goldenEngraved => 'Zeltā gravēts';

  @override
  String get greenJade => 'Zaļais nefrīts';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoja, Vjetnama';

  @override
  String get haptic => 'Vibrācija';

  @override
  String get hasanatHub => 'Hasanātu centrs';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Sākums';

  @override
  String get howYourDataIsHandled => 'Kā tiek apstrādāti tavi dati';

  @override
  String get iSeekForgivenessFromAllah => 'Es lūdzu Allāha piedošanu';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Es meklēju patvērumu pie Allāha no nolādētā sātana';

  @override
  String get immediateAlerts => 'Tūlītēji brīdinājumi';

  @override
  String get inTheNameOfAllah => 'Allāha vārdā';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Patiesi, mēs piederam Allāham un pie Viņa atgriezīsimies';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Iša';

  @override
  String get jumadaAlAwwal => 'Džumāda al-Awwal';

  @override
  String get jumadaAlThani => 'Džumāda as-Sāni';

  @override
  String get juz => 'DŽUZ';

  @override
  String get juz2 => 'Džuz';

  @override
  String get keepAdhanAlarmsReliable => 'Nodrošini uzticamus adhāna signālus';

  @override
  String get keepItUpYouReDoingGreat => 'Tikai tā! Tev lieliski veicas.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Nodrošini uzticamus aicinājumus uz lūgšanu arī tad, kad lietotne ir aizvērta.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Valoda';

  @override
  String get lapisLazuli => 'Lazurīts';

  @override
  String get last7Days => 'Pēdējās 7 dienas';

  @override
  String get later => 'VĒLĀK';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Sāksim tavu skaisto ceļojumu ar Korānu.';

  @override
  String get letSPersonalizeYourExperience => 'Pielāgosim\ntavu pieredzi';

  @override
  String get light => 'Gaišs';

  @override
  String get lightMode => 'Gaišais režīms';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Šodien noklausies vai izlasi kādu pantu';

  @override
  String get locating => 'Nosaka atrašanās vietu...';

  @override
  String get location => 'Atrašanās vieta';

  @override
  String get locationPermissionsAreDenied =>
      'Piekļuve atrašanās vietai ir liegta';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Piekļuve atrašanās vietai ir liegta pastāvīgi.';

  @override
  String get locationServicesAreDisabled =>
      'Atrašanās vietas pakalpojumi ir izslēgti.';

  @override
  String get longestStreak => 'Garākā sērija';

  @override
  String get maghrib => 'Magribs';

  @override
  String get maybeLater => 'Varbūt vēlāk';

  @override
  String get meccaSaudiArabia => 'Meka, Saūda Arābija';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Mans Kungs, piedod un apžēlojies';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Mans Kungs, man ir vajadzīgs ikviens labums, ko Tu sūti';

  @override
  String get myLordIncreaseMeInKnowledge => 'Mans Kungs, vairo manas zināšanas';

  @override
  String get myLordMakeItEasyAndDoNot => 'Mans Kungs, atvieglo un neapgrūtini';

  @override
  String get n => 'Z';

  @override
  String get nameOptional => 'Vārds (nav obligāts)';

  @override
  String get next => 'Tālāk';

  @override
  String get nextDhikr => 'Nākamais dhikr';

  @override
  String get nextPrayer => 'NĀKAMĀ LŪGŠANA';

  @override
  String get night => 'NAKTS';

  @override
  String get nightEmeraldInterface => 'Nakts smaragda saskarne';

  @override
  String get noBookmarksYet => 'Vēl nav grāmatzīmju';

  @override
  String get noon => 'PUSDIENLAIKS';

  @override
  String get north => 'Ziemeļi';

  @override
  String get northeast => 'Ziemeļaustrumi';

  @override
  String get northwest => 'Ziemeļrietumi';

  @override
  String get notificationsAlarm => 'Paziņojumi un modinātājs';

  @override
  String get notificationsForPrayerTimes => 'Paziņojumi par lūgšanu laikiem';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Ak Allāh, sūti svētību Muhamedam';

  @override
  String get oEverLivingOSustainer => 'Ak Mūžīgi Dzīvais, ak Uzturētāj';

  @override
  String get openAutoStart => 'ATVĒRT AUTOMĀTISKO PALAIŠANU';

  @override
  String get optimizeAdhanPerformance => 'Optimizēt adhāna darbību';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Mūsu Kungs, dāvā mums labumu šajā pasaulē';

  @override
  String get page => 'LAPPUSE';

  @override
  String get pearl => 'Pērle';

  @override
  String get personalizeYourAdhanNotifications => 'Pielāgo adhāna paziņojumus';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'Slava Allāham, pasauļu Kungam';

  @override
  String get prayerAlarms => 'Lūgšanu signāli';

  @override
  String get prayerSchedule => 'Lūgšanu grafiks';

  @override
  String get prayerTimeNotifications => 'Paziņojumi par lūgšanas laiku';

  @override
  String get prayerTimesAreLoading => 'Ielādē lūgšanu laikus';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Lūgšanu laiki, kibla, Korāna lasīšana un tasbihs vienā ikdienas pavadonī.';

  @override
  String get prayerQuranQibla => 'LŪGŠANA • KORĀNS • KIBLA';

  @override
  String get premiumThemes => 'Premium motīvi';

  @override
  String get preparingYourSpiritualJourney => 'Gatavo tavu garīgo ceļojumu...';

  @override
  String get previousDhikr => 'Iepriekšējais dhikr';

  @override
  String get privacyPolicy => 'Privātuma politika';

  @override
  String get qibla => 'Kibla';

  @override
  String get qiblaFinder => 'Kiblas meklētājs';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Korāns';

  @override
  String get quranPlayback => 'Korāna atskaņošana';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro apvieno lūgšanu laikus, kiblu, Korāna lasīšanu un tasbihu vienā vienkāršā ikdienas pavadonī.';

  @override
  String get quranProPreferences => 'Quran Pro iestatījumi';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro saglabā iepazīšanās un progresa iestatījumus lokāli šajā ierīcē. Analītika var tikt izmantota stabilitātes un kvalitātes uzlabošanai.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro saglabā tavu tasbiha progresu lokāli šajā ierīcē. Analītika var tikt izmantota lietotnes stabilitātes un produkta kvalitātes uzlabošanai.';

  @override
  String get quranRecitation => 'Korāna recitācija';

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
  String get rabiAlThani => 'Rabi as-Sāni';

  @override
  String get rateApp => 'Novērtēt lietotni';

  @override
  String get rateQuranPro => 'Novērtēt Quran Pro';

  @override
  String get readListen => 'Lasi un klausies';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Lasi Korānu ar skaistām recitācijām.';

  @override
  String get recent => 'Nesenie';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Ieteicams Xiaomi, Oppo, Vivo un Huawei ierīcēm';

  @override
  String get redCarnelian => 'Sarkanais karneols';

  @override
  String get remindMeAt => 'Atgādināt plkst.';

  @override
  String get removeAds => 'Noņemt reklāmas';

  @override
  String get requestingLocationPermission =>
      'Pieprasa piekļuvi atrašanās vietai...';

  @override
  String get reset => 'Atiestatīt';

  @override
  String get retry => 'Atkārtot';

  @override
  String get returnToCompass => 'Atgriezties pie kompasa';

  @override
  String get s => 'D';

  @override
  String get save => 'Saglabāt';

  @override
  String get saveGoal => 'Saglabāt mērķi';

  @override
  String get searchSurahNumberArabic => 'Meklēt sūru, numuru, arābu valodā...';

  @override
  String get searchSurah => 'Meklēt sūru...';

  @override
  String get selectLanguage => 'Izvēlies valodu';

  @override
  String get selectTheThemeYouLike => 'Izvēlies sev tīkamo motīvu';

  @override
  String get selectYourBead => 'Izvēlies savu pērlīti';

  @override
  String get shop => 'Veikals';

  @override
  String get shopCustomization => 'Veikals un pielāgošana';

  @override
  String get sound => 'Skaņa';

  @override
  String get south => 'Dienvidi';

  @override
  String get southeast => 'Dienvidaustrumi';

  @override
  String get southwest => 'Dienvidrietumi';

  @override
  String get specialOccasionsAndMore => 'Īpaši notikumi un vēl vairāk';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Vērtēšana veikalā būs pieejama, kad būs gatavs publiskais ieraksts.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SAULRIETS';

  @override
  String get supportQuranProOnTheStore => 'Atbalsti Quran Pro veikalā';

  @override
  String get surah => 'Sūra';

  @override
  String get tasbih => 'Tasbihs';

  @override
  String get tasbihSettings => 'Tasbiha iestatījumi';

  @override
  String get tellUsWhatToImprove => 'Pastāsti, ko uzlabot';

  @override
  String get termsOfUse => 'Lietošanas noteikumi';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Paldies, ka izmanto Quran Pro. Vērtēšana veikalā būs pieejama, kad būs gatavs publiskais ieraksts veikalā.';

  @override
  String get thereIsNoDeityExceptAllah => 'Nav dievības, izņemot Allāhu';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Nav ne spēka, ne varas, kā vien caur Allāhu';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Tas palīdz pielāgot atgādinājumus un sekot tavam progresam.';

  @override
  String get tigerSEye => 'Tīģeracs';

  @override
  String get today => 'Šodien';

  @override
  String get total => 'Kopā';

  @override
  String get totalHasanat => 'KOPĀ HASANĀTU';

  @override
  String get trackProgress => 'Seko progresam';

  @override
  String get trackYourReadingAndAchievements =>
      'Seko savai lasīšanai un sasniegumiem.';

  @override
  String get tryAgain => 'Mēģināt vēlreiz';

  @override
  String get undo => 'Atsaukt';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Atbloķē visus lietotnes motīvus un pielāgojumus';

  @override
  String get usageGuidelines => 'Lietošanas vadlīnijas';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Izmanto Quran Pro ar cieņu personīgai lūgšanai, mācībām un ikdienas islāma tradīcijām.';

  @override
  String get viewAll => 'Skatīt visu';

  @override
  String get w => 'R';

  @override
  String get welcome => 'Sveicināts';

  @override
  String get west => 'Rietumi';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Viss ir gatavs!';

  @override
  String get yourProgress => 'Tavs progress';

  @override
  String get continueLabel => 'Turpināt';

  @override
  String get amethyst => 'Ametists';

  @override
  String get indonesian => 'Indonēziešu';

  @override
  String get turkish => 'Turku';

  @override
  String get vietnamese => 'Vjetnamiešu';

  @override
  String get turquoise => 'Tirkīzs';

  @override
  String get wood => 'Koks';

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
