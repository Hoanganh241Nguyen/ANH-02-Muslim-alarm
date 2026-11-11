// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get week => 'Setmana';

  @override
  String get month => 'Mes';

  @override
  String get lifetime => 'Sempre';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Fes una pausa a la feina i dedica temps a Allah.';

  @override
  String get prayerAlarmDefaultName => 'Oració';

  @override
  String productUnavailable(Object id) {
    return 'El producte $id no està disponible per a la compra.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Compra de $productId completada!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Compra de $productId restaurada!';
  }

  @override
  String daysCount(Object count) {
    return '$count dies';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'PROPERA: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Distància a la Meca: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Recorda-m\'ho d\'aquí a $minutes minuts';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'És l\'hora de l\'oració de $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Ronda: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language seleccionat';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Pàgina $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: aleia $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count aleies';
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
    return 'NIVELL $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Baqara 2:238)';

  @override
  String get text1juz => '1 juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 pàgines';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 pàgines';

  @override
  String get text28cclearsky => '28°C - Cel serè';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 pàgines';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Quant a';

  @override
  String get aboutQuranPro => 'Quant a Quran Pro';

  @override
  String get activity => 'Activitat';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'L\'anunci s\'està carregant. Torna-ho a provar aviat.';

  @override
  String get addCustomDhikr => 'Afegeix un dhikr personalitzat';

  @override
  String get addCustomDhikr2 => 'Afegir dhikr personalitzat';

  @override
  String get addDhikr => 'Afegeix dhikr';

  @override
  String get adjustPosition => 'AJUSTA LA POSICIÓ';

  @override
  String get afternoon => 'TARDA';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALINEAT AMB L\'ALQUIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Tota lloança és per a Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Totes les funcions premium a un preu reduït';

  @override
  String get allInOneQuranApp => 'L\'app de l\'Alcorà tot en un';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah em basta; no hi ha cap deïtat llevat d\'Ell';

  @override
  String get allahIsTheGreatest => 'Allah és el més gran';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Permet l\'accés a la ubicació o toca Reintenta per fer servir l\'horari alternatiu.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Permet les notificacions per rebre els horaris d\'oració i els recordatoris diaris.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Permet que l\'app s\'executi en segon pla';

  @override
  String get app => 'Aplicació';

  @override
  String get arabic => 'Àrab';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Mitj.';

  @override
  String get ayah => 'Aleia';

  @override
  String get batteryOptimization => 'Optimització de la bateria';

  @override
  String get beautifulWidgets => 'Widgets elegants';

  @override
  String get bestValue => 'MILLOR OFERTA';

  @override
  String get blackOnyx => 'Ònix negre';

  @override
  String get bookmarks => 'Marcadors';

  @override
  String get brightIvoryInterface => 'Interfície ivori lluminosa';

  @override
  String get calculatingDistance => 'Calculant la distància...';

  @override
  String get calibrateYourDirection => 'Calibra la teva direcció';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get change => 'Canvia';

  @override
  String get changeTasbihMode => 'Vols canviar el mode de tasbih?';

  @override
  String get chooseDhikr => 'Tria un dhikr';

  @override
  String get chooseDisplayLanguage => 'Tria l\'idioma de la interfície';

  @override
  String get chooseTheme => 'Tria un tema';

  @override
  String get chooseYourPreferredLanguage => 'Tria el teu idioma preferit';

  @override
  String get clickOrSwipeToCount => 'Toca o llisca per comptar';

  @override
  String get close => 'Tanca';

  @override
  String get closeCustomGoal => 'Tanca l\'objectiu personalitzat';

  @override
  String get completeAtLeast33Dhikr => 'Completa almenys 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Connecta el teu cor amb el sagrat Alcorà.';

  @override
  String get continueReading => 'Continua llegint';

  @override
  String get countsPerRound => 'Repeticions per ronda';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Crea la teva col·lecció amb joies espirituals fetes amb mestria.';

  @override
  String get current => 'ACTUAL';

  @override
  String get current2 => 'Actual';

  @override
  String get currentLocationToMecca => 'De la ubicació actual a la Meca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'El progrés actual es reiniciarà per al nou mode.';

  @override
  String get currentStreak => 'Ratxa actual';

  @override
  String get custom => 'Personalitzat';

  @override
  String get customDhikr => 'Dhikr personalitzat';

  @override
  String get customGoal => 'Objectiu personalitzat';

  @override
  String get customPrayerSounds => 'Sons d\'oració personalitzats';

  @override
  String get dailyGoal => 'Objectiu diari';

  @override
  String get dailyQuests => 'Reptes diaris';

  @override
  String get dailyQuranReminder => 'Recordatori diari de l\'Alcorà';

  @override
  String get dailyReminders => 'Recordatoris diaris';

  @override
  String get dailyTasbih => 'Tasbih diari';

  @override
  String get dark => 'Fosc';

  @override
  String get dawn => 'ALBA';

  @override
  String get debug => 'Depuració';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Activitat de dhikr';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'DIRECCIÓ';

  @override
  String get disableBatteryOptimization =>
      'Desactiva l\'optimització de la bateria';

  @override
  String get disableOptimization => 'DESACTIVA L\'OPTIMITZACIÓ';

  @override
  String get distance => 'DISTÀNCIA';

  @override
  String get e => 'E';

  @override
  String get eGHasbunallah => 'p. ex. HasbunAllah';

  @override
  String get east => 'Est';

  @override
  String get enableAutoStart => 'Activa l\'inici automàtic';

  @override
  String get enableNotifications => 'Activa les notificacions';

  @override
  String get enableReminders => 'Activa els recordatoris';

  @override
  String get english => 'Anglès';

  @override
  String get enterYourName => 'Escriu el teu nom';

  @override
  String get equipped => 'EQUIPAT';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Tot el que necessites per viure millor l\'Alcorà.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Comentaris';

  @override
  String get first => 'Primer';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Per obtenir els resultats més precisos, mantén el mòbil pla i lluny d\'objectes magnètics.';

  @override
  String get free => 'Gratis';

  @override
  String get fullBundle => 'Paquet complet';

  @override
  String get getAnAdFreeExperienceForever =>
      'Gaudeix de l\'app sense anuncis per sempre';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Rep recordatoris per llegir i mantenir la constància.';

  @override
  String get getStarted => 'Comença';

  @override
  String get gloryAndPraiseBeToAllah => 'Glòria i lloança a Allah';

  @override
  String get gloryBeToAllah => 'Glòria a Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Glòria a Allah, el Magnífic';

  @override
  String get goToHome => 'Ves a l\'inici';

  @override
  String get goldenEngraved => 'Gravat daurat';

  @override
  String get greenJade => 'Jade verd';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Vibració';

  @override
  String get hasanatHub => 'Centre de hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Inici';

  @override
  String get howYourDataIsHandled => 'Com tractem les teves dades';

  @override
  String get iSeekForgivenessFromAllah => 'Demano perdó a Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Em refugio en Allah del Satanàs maleït';

  @override
  String get immediateAlerts => 'Avisos immediats';

  @override
  String get inTheNameOfAllah => 'En el nom d\'Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Certament, pertanyem a Allah i a Ell tornem';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Ixà';

  @override
  String get jumadaAlAwwal => 'Jumada Al-Awwal';

  @override
  String get jumadaAlThani => 'Jumada Al-Thani';

  @override
  String get juz => 'JUZ';

  @override
  String get juz2 => 'Juz';

  @override
  String get keepAdhanAlarmsReliable =>
      'Mantén fiables les alarmes de l\'adhan';

  @override
  String get keepItUpYouReDoingGreat => 'Continua així! Ho estàs fent molt bé.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Mantén fiables les crides a l\'oració fins i tot amb l\'app tancada.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Idioma';

  @override
  String get lapisLazuli => 'Lapislàtzuli';

  @override
  String get last7Days => 'Últims 7 dies';

  @override
  String get later => 'MÉS TARD';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Comencem el teu bonic viatge amb l\'Alcorà.';

  @override
  String get letSPersonalizeYourExperience =>
      'Personalitzem\nla teva experiència';

  @override
  String get light => 'Clar';

  @override
  String get lightMode => 'Mode clar';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Escolta o llegeix qualsevol aleia avui';

  @override
  String get locating => 'Localitzant...';

  @override
  String get location => 'Ubicació';

  @override
  String get locationPermissionsAreDenied =>
      'S\'han denegat els permisos d\'ubicació';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Els permisos d\'ubicació s\'han denegat permanentment.';

  @override
  String get locationServicesAreDisabled =>
      'Els serveis d\'ubicació estan desactivats.';

  @override
  String get longestStreak => 'Ratxa més llarga';

  @override
  String get maghrib => 'Magrib';

  @override
  String get maybeLater => 'Potser més tard';

  @override
  String get meccaSaudiArabia => 'La Meca, Aràbia Saudita';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Senyor meu, perdona i tingues misericòrdia';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Senyor meu, necessito qualsevol bé que em facis baixar';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Senyor meu, augmenta\'m el coneixement';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Senyor meu, fes-ho fàcil i no ho facis difícil';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Nom (opcional)';

  @override
  String get next => 'Següent';

  @override
  String get nextDhikr => 'Dhikr següent';

  @override
  String get nextPrayer => 'PROPERA ORACIÓ';

  @override
  String get night => 'NIT';

  @override
  String get nightEmeraldInterface => 'Interfície maragda nocturna';

  @override
  String get noBookmarksYet => 'Encara no hi ha marcadors';

  @override
  String get noon => 'MIGDIA';

  @override
  String get north => 'Nord';

  @override
  String get northeast => 'Nord-est';

  @override
  String get northwest => 'Nord-oest';

  @override
  String get notificationsAlarm => 'Notificacions i alarma';

  @override
  String get notificationsForPrayerTimes =>
      'Notificacions dels horaris d\'oració';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Oh Allah, beneeix Muhammad';

  @override
  String get oEverLivingOSustainer => 'Oh Vivent, oh Sustentador';

  @override
  String get openAutoStart => 'OBRE L\'INICI AUTOMÀTIC';

  @override
  String get optimizeAdhanPerformance => 'Optimitza el rendiment de l\'adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Senyor nostre, concedeix-nos el bé en aquest món';

  @override
  String get page => 'PÀGINA';

  @override
  String get pearl => 'Perla';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personalitza les notificacions de l\'adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Lloat sigui Allah, Senyor dels mons';

  @override
  String get prayerAlarms => 'Alarmes d\'oració';

  @override
  String get prayerSchedule => 'Horari d\'oracions';

  @override
  String get prayerTimeNotifications => 'Notificacions dels horaris d\'oració';

  @override
  String get prayerTimesAreLoading =>
      'S\'estan carregant els horaris d\'oració';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Horaris d\'oració, alquibla, lectura de l\'Alcorà i tasbih en un sol company diari.';

  @override
  String get prayerQuranQibla => 'ORACIÓ • ALCORÀ • ALQUIBLA';

  @override
  String get premiumThemes => 'Temes premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Preparant el teu viatge espiritual...';

  @override
  String get previousDhikr => 'Dhikr anterior';

  @override
  String get privacyPolicy => 'Política de privadesa';

  @override
  String get qibla => 'Alquibla';

  @override
  String get qiblaFinder => 'Cercador d\'alquibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Alcorà';

  @override
  String get quranPlayback => 'Reproducció de l\'Alcorà';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro reuneix els horaris d\'oració, l\'alquibla, la lectura de l\'Alcorà i el tasbih en un senzill company diari.';

  @override
  String get quranProPreferences => 'Preferències de Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro desa les preferències d\'inici i de progrés localment en aquest dispositiu. Es poden fer servir analítiques per millorar l\'estabilitat i la qualitat.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro desa el teu progrés de tasbih localment en aquest dispositiu. Es poden fer servir analítiques per millorar l\'estabilitat de l\'app i la qualitat del producte.';

  @override
  String get quranRecitation => 'Recitació de l\'Alcorà';

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
  String get rateApp => 'Valora l\'app';

  @override
  String get rateQuranPro => 'Valora Quran Pro';

  @override
  String get readListen => 'Llegeix i escolta';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Llegeix l\'Alcorà amb recitacions boniques.';

  @override
  String get recent => 'Recents';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recomanat per a Xiaomi, Oppo, Vivo i Huawei';

  @override
  String get redCarnelian => 'Cornalina vermella';

  @override
  String get remindMeAt => 'Recorda-m\'ho a les';

  @override
  String get removeAds => 'Treu els anuncis';

  @override
  String get requestingLocationPermission =>
      'Sol·licitant el permís d\'ubicació...';

  @override
  String get reset => 'Reinicia';

  @override
  String get retry => 'Reintenta';

  @override
  String get returnToCompass => 'Torna a la brúixola';

  @override
  String get s => 'S';

  @override
  String get save => 'Desa';

  @override
  String get saveGoal => 'Desa l\'objectiu';

  @override
  String get searchSurahNumberArabic => 'Cerca sura, número, àrab...';

  @override
  String get searchSurah => 'Cerca sura...';

  @override
  String get selectLanguage => 'Selecciona l\'idioma';

  @override
  String get selectTheThemeYouLike => 'Selecciona el tema que t\'agradi';

  @override
  String get selectYourBead => 'Tria el teu gra de tasbih';

  @override
  String get shop => 'Botiga';

  @override
  String get shopCustomization => 'Botiga i personalització';

  @override
  String get sound => 'So';

  @override
  String get south => 'Sud';

  @override
  String get southeast => 'Sud-est';

  @override
  String get southwest => 'Sud-oest';

  @override
  String get specialOccasionsAndMore => 'Ocasions especials i molt més';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'La valoració a la botiga s\'activarà quan la fitxa de producció estigui a punt.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'CAPVESPRE';

  @override
  String get supportQuranProOnTheStore => 'Dona suport a Quran Pro a la botiga';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Configuració del tasbih';

  @override
  String get tellUsWhatToImprove => 'Digues-nos què podem millorar';

  @override
  String get termsOfUse => 'Condicions d\'ús';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Gràcies per fer servir Quran Pro. La valoració a la botiga s\'activarà quan la fitxa de la botiga de producció estigui a punt.';

  @override
  String get thereIsNoDeityExceptAllah => 'No hi ha cap deïtat llevat d\'Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'No hi ha poder ni força si no és per Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Això ens ajuda a personalitzar els recordatoris i a seguir el teu progrés.';

  @override
  String get tigerSEye => 'Ull de tigre';

  @override
  String get today => 'Avui';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'HASANAT TOTALS';

  @override
  String get trackProgress => 'Segueix el progrés';

  @override
  String get trackYourReadingAndAchievements =>
      'Fes el seguiment de la teva lectura i dels teus assoliments.';

  @override
  String get tryAgain => 'Torna-ho a provar';

  @override
  String get undo => 'Desfés';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Desbloqueja tots els temes i les personalitzacions de l\'app';

  @override
  String get usageGuidelines => 'Normes d\'ús';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Fes servir Quran Pro amb respecte per a l\'adoració personal, l\'aprenentatge i les rutines islàmiques diàries.';

  @override
  String get viewAll => 'Mostra-ho tot';

  @override
  String get w => 'O';

  @override
  String get welcome => 'Et donem la benvinguda';

  @override
  String get west => 'Oest';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Ja ho tens tot a punt!';

  @override
  String get yourProgress => 'El teu progrés';

  @override
  String get continueLabel => 'Continua';

  @override
  String get amethyst => 'Ametista';

  @override
  String get indonesian => 'Indonesi';

  @override
  String get turkish => 'Turc';

  @override
  String get vietnamese => 'Vietnamita';

  @override
  String get turquoise => 'Turquesa';

  @override
  String get wood => 'Fusta';

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
