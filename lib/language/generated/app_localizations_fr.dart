// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get week => 'Semaine';

  @override
  String get month => 'Mois';

  @override
  String get lifetime => 'À vie';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Faites une pause dans votre travail et prenez le temps pour Allah.';

  @override
  String get prayerAlarmDefaultName => 'Prière';

  @override
  String productUnavailable(Object id) {
    return 'Le produit $id n\'est pas disponible à l\'achat.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Achat de $productId réussi !';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Achat de $productId restauré !';
  }

  @override
  String daysCount(Object count) {
    return '$count jours';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'À VENIR : $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Distance jusqu\'à La Mecque : $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Me le rappeler dans $minutes minutes';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'C\'est l\'heure de la prière de $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Tour : $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language sélectionné';
  }

  @override
  String juzNumber(Object juz) {
    return 'Jouz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Page $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName : verset $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count versets';
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
  String get surahAlBaqarah2238 => '(Sourate Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 jouz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 pages';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 pages';

  @override
  String get text28cclearsky => '28°C - Ciel dégagé';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 pages';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'À propos';

  @override
  String get aboutQuranPro => 'À propos de Quran Pro';

  @override
  String get activity => 'Activité';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'La publicité se charge. Veuillez réessayer dans un instant.';

  @override
  String get addCustomDhikr => 'Ajouter un dhikr personnalisé';

  @override
  String get addCustomDhikr2 => 'Ajouter un dhikr personnalisé';

  @override
  String get addDhikr => 'Ajouter un dhikr';

  @override
  String get adjustPosition => 'AJUSTER LA POSITION';

  @override
  String get afternoon => 'APRÈS-MIDI';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALIGNÉ SUR LA QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Toute louange revient à Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Toutes les fonctionnalités premium à prix réduit';

  @override
  String get allInOneQuranApp => 'L\'application Coran tout-en-un';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah me suffit ; il n\'y a de divinité que Lui';

  @override
  String get allahIsTheGreatest => 'Allah est le plus Grand';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Autorisez la localisation ou touchez Réessayer pour utiliser les horaires de secours.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Autorisez les notifications pour recevoir les horaires de prière et les rappels quotidiens.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Autoriser l\'application à fonctionner en arrière-plan';

  @override
  String get app => 'Application';

  @override
  String get arabic => 'Arabe';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Moy.';

  @override
  String get ayah => 'Verset';

  @override
  String get batteryOptimization => 'Optimisation de la batterie';

  @override
  String get beautifulWidgets => 'Widgets élégants';

  @override
  String get bestValue => 'MEILLEURE OFFRE';

  @override
  String get blackOnyx => 'Onyx noir';

  @override
  String get bookmarks => 'Marque-pages';

  @override
  String get brightIvoryInterface => 'Interface ivoire lumineuse';

  @override
  String get calculatingDistance => 'Calcul de la distance...';

  @override
  String get calibrateYourDirection => 'Calibrez votre direction';

  @override
  String get cancel => 'Annuler';

  @override
  String get change => 'Modifier';

  @override
  String get changeTasbihMode => 'Changer de mode Tasbih ?';

  @override
  String get chooseDhikr => 'Choisir un dhikr';

  @override
  String get chooseDisplayLanguage => 'Choisir la langue d\'affichage';

  @override
  String get chooseTheme => 'Choisir un thème';

  @override
  String get chooseYourPreferredLanguage => 'Choisissez votre langue préférée';

  @override
  String get clickOrSwipeToCount => 'Touchez ou glissez pour compter';

  @override
  String get close => 'Fermer';

  @override
  String get closeCustomGoal => 'Fermer l\'objectif personnalisé';

  @override
  String get completeAtLeast33Dhikr => 'Effectuez au moins 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Reliez votre cœur au Saint Coran.';

  @override
  String get continueReading => 'Reprendre la lecture';

  @override
  String get countsPerRound => 'Répétitions par tour';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Composez votre collection de perles spirituelles finement travaillées.';

  @override
  String get current => 'ACTUEL';

  @override
  String get current2 => 'Actuel';

  @override
  String get currentLocationToMecca => 'Position actuelle vers La Mecque';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'La progression actuelle sera réinitialisée pour le nouveau mode.';

  @override
  String get currentStreak => 'Série actuelle';

  @override
  String get custom => 'Personnalisé';

  @override
  String get customDhikr => 'Dhikr personnalisé';

  @override
  String get customGoal => 'Objectif personnalisé';

  @override
  String get customPrayerSounds => 'Sons de prière personnalisés';

  @override
  String get dailyGoal => 'Objectif quotidien';

  @override
  String get dailyQuests => 'Défis quotidiens';

  @override
  String get dailyQuranReminder => 'Rappel quotidien du Coran';

  @override
  String get dailyReminders => 'Rappels quotidiens';

  @override
  String get dailyTasbih => 'Tasbih quotidien';

  @override
  String get dark => 'Sombre';

  @override
  String get dawn => 'AUBE';

  @override
  String get debug => 'Débogage';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Activité de dhikr';

  @override
  String get dhuAlHijjah => 'Dhou Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhou Al-Qadah';

  @override
  String get dhuhr => 'Dhouhr';

  @override
  String get direction => 'DIRECTION';

  @override
  String get disableBatteryOptimization =>
      'Désactiver l\'optimisation de la batterie';

  @override
  String get disableOptimization => 'DÉSACTIVER L\'OPTIMISATION';

  @override
  String get distance => 'DISTANCE';

  @override
  String get e => 'E';

  @override
  String get eGHasbunallah => 'ex. HasbunAllah';

  @override
  String get east => 'Est';

  @override
  String get enableAutoStart => 'Activer le démarrage automatique';

  @override
  String get enableNotifications => 'Activer les notifications';

  @override
  String get enableReminders => 'Activer les rappels';

  @override
  String get english => 'Anglais';

  @override
  String get enterYourName => 'Saisissez votre nom';

  @override
  String get equipped => 'ÉQUIPÉ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Tout ce qu\'il vous faut pour une meilleure expérience du Coran.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Commentaires';

  @override
  String get first => 'Premier';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Pour un résultat optimal, gardez votre téléphone à plat et loin des objets magnétiques.';

  @override
  String get free => 'Gratuit';

  @override
  String get fullBundle => 'Pack complet';

  @override
  String get getAnAdFreeExperienceForever =>
      'Profitez d\'une expérience sans publicité à vie';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Recevez des rappels de lecture et restez régulier.';

  @override
  String get getStarted => 'Commencer';

  @override
  String get gloryAndPraiseBeToAllah => 'Gloire et louange à Allah';

  @override
  String get gloryBeToAllah => 'Gloire à Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Gloire à Allah, le Magnifique';

  @override
  String get goToHome => 'Aller à l\'accueil';

  @override
  String get goldenEngraved => 'Gravé doré';

  @override
  String get greenJade => 'Jade vert';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoï, Viêt Nam';

  @override
  String get haptic => 'Vibration';

  @override
  String get hasanatHub => 'Espace Hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Accueil';

  @override
  String get howYourDataIsHandled => 'Comment vos données sont traitées';

  @override
  String get iSeekForgivenessFromAllah => 'Je demande pardon à Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Je cherche refuge auprès d\'Allah contre Satan le maudit';

  @override
  String get immediateAlerts => 'Alertes immédiates';

  @override
  String get inTheNameOfAllah => 'Au nom d\'Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Certes, nous appartenons à Allah et c\'est à Lui que nous retournons';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Icha';

  @override
  String get jumadaAlAwwal => 'Joumada Al-Awwal';

  @override
  String get jumadaAlThani => 'Joumada Al-Thani';

  @override
  String get juz => 'JOUZ';

  @override
  String get juz2 => 'Jouz';

  @override
  String get keepAdhanAlarmsReliable => 'Gardez des alarmes adhan fiables';

  @override
  String get keepItUpYouReDoingGreat =>
      'Continuez ainsi ! Vous vous en sortez très bien.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Gardez des appels à la prière fiables même lorsque l\'application est fermée.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Langue';

  @override
  String get lapisLazuli => 'Lapis-lazuli';

  @override
  String get last7Days => '7 derniers jours';

  @override
  String get later => 'PLUS TARD';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Commençons votre beau voyage avec le Coran.';

  @override
  String get letSPersonalizeYourExperience =>
      'Personnalisons\nvotre expérience';

  @override
  String get light => 'Clair';

  @override
  String get lightMode => 'Mode clair';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Écoutez ou lisez un verset aujourd\'hui';

  @override
  String get locating => 'Localisation...';

  @override
  String get location => 'Localisation';

  @override
  String get locationPermissionsAreDenied =>
      'L\'accès à la localisation est refusé';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'L\'accès à la localisation est définitivement refusé.';

  @override
  String get locationServicesAreDisabled =>
      'Les services de localisation sont désactivés.';

  @override
  String get longestStreak => 'Meilleure série';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Plus tard';

  @override
  String get meccaSaudiArabia => 'La Mecque, Arabie saoudite';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Mon Seigneur, pardonne et fais miséricorde';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Mon Seigneur, j\'ai besoin de tout bien que Tu fais descendre vers moi';

  @override
  String get myLordIncreaseMeInKnowledge => 'Mon Seigneur, augmente ma science';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Mon Seigneur, facilite et ne rends pas difficile';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Nom (facultatif)';

  @override
  String get next => 'Suivant';

  @override
  String get nextDhikr => 'Dhikr suivant';

  @override
  String get nextPrayer => 'PROCHAINE PRIÈRE';

  @override
  String get night => 'NUIT';

  @override
  String get nightEmeraldInterface => 'Interface émeraude nocturne';

  @override
  String get noBookmarksYet => 'Aucun marque-page pour l\'instant';

  @override
  String get noon => 'MIDI';

  @override
  String get north => 'Nord';

  @override
  String get northeast => 'Nord-est';

  @override
  String get northwest => 'Nord-ouest';

  @override
  String get notificationsAlarm => 'Notifications et alarme';

  @override
  String get notificationsForPrayerTimes =>
      'Notifications des horaires de prière';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Ô Allah, prie sur Muhammad';

  @override
  String get oEverLivingOSustainer => 'Ô Vivant, ô Subsistant par Soi';

  @override
  String get openAutoStart => 'OUVRIR LE DÉMARRAGE AUTO';

  @override
  String get optimizeAdhanPerformance =>
      'Optimiser les performances de l\'adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Notre Seigneur, accorde-nous un bien ici-bas';

  @override
  String get page => 'PAGE';

  @override
  String get pearl => 'Perle';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personnalisez vos notifications d\'adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Louange à Allah, Seigneur des mondes';

  @override
  String get prayerAlarms => 'Alarmes de prière';

  @override
  String get prayerSchedule => 'Horaires de prière';

  @override
  String get prayerTimeNotifications => 'Notifications des heures de prière';

  @override
  String get prayerTimesAreLoading => 'Chargement des horaires de prière';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Horaires de prière, Qibla, lecture du Coran et Tasbih dans un seul compagnon quotidien.';

  @override
  String get prayerQuranQibla => 'PRIÈRE • CORAN • QIBLA';

  @override
  String get premiumThemes => 'Thèmes premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Préparation de votre voyage spirituel...';

  @override
  String get previousDhikr => 'Dhikr précédent';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Boussole Qibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Coran';

  @override
  String get quranPlayback => 'Lecture audio du Coran';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro réunit les horaires de prière, la Qibla, la lecture du Coran et le Tasbih dans un compagnon quotidien tout simple.';

  @override
  String get quranProPreferences => 'Préférences de Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro enregistre les préférences d\'accueil et de progression localement sur cet appareil. Des données analytiques peuvent être utilisées pour améliorer la stabilité et la qualité.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro enregistre votre progression de Tasbih localement sur cet appareil. Des données analytiques peuvent être utilisées pour améliorer la stabilité de l\'application et la qualité du produit.';

  @override
  String get quranRecitation => 'Récitation du Coran';

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
  String get rateApp => 'Noter l\'application';

  @override
  String get rateQuranPro => 'Noter Quran Pro';

  @override
  String get readListen => 'Lire et écouter';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Lisez le Coran avec de belles récitations.';

  @override
  String get recent => 'Récent';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recommandé pour Xiaomi, Oppo, Vivo et Huawei';

  @override
  String get redCarnelian => 'Cornaline rouge';

  @override
  String get remindMeAt => 'Me rappeler à';

  @override
  String get removeAds => 'Supprimer les publicités';

  @override
  String get requestingLocationPermission =>
      'Demande d\'accès à la localisation...';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get retry => 'Réessayer';

  @override
  String get returnToCompass => 'Retour à la boussole';

  @override
  String get s => 'S';

  @override
  String get save => 'Enregistrer';

  @override
  String get saveGoal => 'Enregistrer l\'objectif';

  @override
  String get searchSurahNumberArabic =>
      'Rechercher une sourate, un numéro, en arabe...';

  @override
  String get searchSurah => 'Rechercher une sourate...';

  @override
  String get selectLanguage => 'Choisir la langue';

  @override
  String get selectTheThemeYouLike => 'Sélectionnez le thème qui vous plaît';

  @override
  String get selectYourBead => 'Choisissez votre perle';

  @override
  String get shop => 'Boutique';

  @override
  String get shopCustomization => 'Boutique et personnalisation';

  @override
  String get sound => 'Son';

  @override
  String get south => 'Sud';

  @override
  String get southeast => 'Sud-est';

  @override
  String get southwest => 'Sud-ouest';

  @override
  String get specialOccasionsAndMore => 'Occasions spéciales et plus encore';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'La notation sur le store sera activée dès que la fiche de production sera prête.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'COUCHER DU SOLEIL';

  @override
  String get supportQuranProOnTheStore => 'Soutenez Quran Pro sur le store';

  @override
  String get surah => 'Sourate';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Réglages du Tasbih';

  @override
  String get tellUsWhatToImprove => 'Dites-nous ce qu\'il faut améliorer';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Merci d\'utiliser Quran Pro. La notation sur le store sera activée dès que la fiche de production sera prête.';

  @override
  String get thereIsNoDeityExceptAllah => 'Il n\'y a de divinité qu\'Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Il n\'y a de force ni de puissance qu\'en Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Cela nous aide à personnaliser vos rappels et à suivre votre progression.';

  @override
  String get tigerSEye => 'Œil-de-tigre';

  @override
  String get today => 'Aujourd\'hui';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'TOTAL HASANAT';

  @override
  String get trackProgress => 'Suivre la progression';

  @override
  String get trackYourReadingAndAchievements =>
      'Suivez votre lecture et vos accomplissements.';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get undo => 'Annuler';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Débloquez tous les thèmes et personnalisations';

  @override
  String get usageGuidelines => 'Règles d\'utilisation';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Utilisez Quran Pro avec respect pour votre adoration personnelle, votre apprentissage et vos routines islamiques quotidiennes.';

  @override
  String get viewAll => 'Tout voir';

  @override
  String get w => 'O';

  @override
  String get welcome => 'Bienvenue';

  @override
  String get west => 'Ouest';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Tout est prêt !';

  @override
  String get yourProgress => 'Votre progression';

  @override
  String get continueLabel => 'Continuer';

  @override
  String get amethyst => 'Améthyste';

  @override
  String get indonesian => 'Indonésien';

  @override
  String get turkish => 'Turc';

  @override
  String get vietnamese => 'Vietnamien';

  @override
  String get turquoise => 'Turquoise';

  @override
  String get wood => 'Bois';

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
  String get estimatedLocation => 'Position estimée';
}
