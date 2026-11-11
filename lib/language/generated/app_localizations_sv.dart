// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get week => 'Vecka';

  @override
  String get month => 'Månad';

  @override
  String get lifetime => 'Livstid';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ta en paus från ditt arbete och ge tid åt Allah.';

  @override
  String get prayerAlarmDefaultName => 'Bön';

  @override
  String productUnavailable(Object id) {
    return 'Produkten $id är inte tillgänglig för köp.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Köpet av $productId lyckades!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Köpet av $productId har återställts!';
  }

  @override
  String daysCount(Object count) {
    return '$count dagar';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'NÄSTA: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Avstånd till Mecka: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Påminn mig om $minutes minuter';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Det är dags för $prayerName-bönen';
  }

  @override
  String roundValue(Object round) {
    return 'Varv: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language valt';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Sida $page';
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
    return '$count verser';
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
  String get surahAlBaqarah2238 => '(Sura Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 sidor';

  @override
  String get text100dhikr => '100 dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 sidor';

  @override
  String get text28cclearsky => '28°C - Klar himmel';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 sidor';

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
      'Annonsen laddas. Försök igen snart.';

  @override
  String get addCustomDhikr => 'Lägg till egen dhikr';

  @override
  String get addCustomDhikr2 => 'Lägg Till Egen Dhikr';

  @override
  String get addDhikr => 'Lägg till dhikr';

  @override
  String get adjustPosition => 'JUSTERA POSITION';

  @override
  String get afternoon => 'EFTERMIDDAG';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'RIKTAD MOT QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'All lov och pris tillkommer Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Alla premiumfunktioner till rabatterat pris';

  @override
  String get allInOneQuranApp => 'Allt-i-ett-app för Koranen';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah är mig nog; det finns ingen gud utom Han';

  @override
  String get allahIsTheGreatest => 'Allah är störst';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Tillåt platsbehörighet eller tryck på Försök igen för att använda reservschemat.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Tillåt aviseringar för att få bönetider och dagliga påminnelser.';

  @override
  String get allowTheAppToRunInTheBackground => 'Låt appen köras i bakgrunden';

  @override
  String get app => 'App';

  @override
  String get arabic => 'Arabiska';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Snitt';

  @override
  String get ayah => 'Vers';

  @override
  String get batteryOptimization => 'Batterioptimering';

  @override
  String get beautifulWidgets => 'Vackra widgetar';

  @override
  String get bestValue => 'BÄSTA VÄRDET';

  @override
  String get blackOnyx => 'Svart onyx';

  @override
  String get bookmarks => 'Bokmärken';

  @override
  String get brightIvoryInterface => 'Ljust elfenbensgränssnitt';

  @override
  String get calculatingDistance => 'Beräknar avstånd...';

  @override
  String get calibrateYourDirection => 'Kalibrera din riktning';

  @override
  String get cancel => 'Avbryt';

  @override
  String get change => 'Ändra';

  @override
  String get changeTasbihMode => 'Ändra tasbih-läge?';

  @override
  String get chooseDhikr => 'Välj dhikr';

  @override
  String get chooseDisplayLanguage => 'Välj visningsspråk';

  @override
  String get chooseTheme => 'Välj tema';

  @override
  String get chooseYourPreferredLanguage => 'Välj det språk du föredrar';

  @override
  String get clickOrSwipeToCount => 'Tryck eller svep för att räkna';

  @override
  String get close => 'Stäng';

  @override
  String get closeCustomGoal => 'Stäng eget mål';

  @override
  String get completeAtLeast33Dhikr => 'Genomför minst 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Förena ditt hjärta med den heliga Koranen.';

  @override
  String get continueReading => 'Fortsätt läsa';

  @override
  String get countsPerRound => 'Antal per varv';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Bygg din samling med mästerligt formade andliga ädelstenar.';

  @override
  String get current => 'AKTUELL';

  @override
  String get current2 => 'Aktuell';

  @override
  String get currentLocationToMecca => 'Nuvarande plats till Mecka';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Nuvarande framsteg nollställs för det nya läget.';

  @override
  String get currentStreak => 'Nuvarande serie';

  @override
  String get custom => 'Anpassad';

  @override
  String get customDhikr => 'Egen dhikr';

  @override
  String get customGoal => 'Eget mål';

  @override
  String get customPrayerSounds => 'Egna böneljud';

  @override
  String get dailyGoal => 'Dagligt mål';

  @override
  String get dailyQuests => 'Dagliga uppdrag';

  @override
  String get dailyQuranReminder => 'Daglig Koran-påminnelse';

  @override
  String get dailyReminders => 'Dagliga påminnelser';

  @override
  String get dailyTasbih => 'Daglig tasbih';

  @override
  String get dark => 'Mörkt';

  @override
  String get dawn => 'GRYNING';

  @override
  String get debug => 'Felsökning';

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
  String get direction => 'RIKTNING';

  @override
  String get disableBatteryOptimization => 'Stäng av batterioptimering';

  @override
  String get disableOptimization => 'STÄNG AV OPTIMERING';

  @override
  String get distance => 'AVSTÅND';

  @override
  String get e => 'Ö';

  @override
  String get eGHasbunallah => 't.ex. HasbunAllah';

  @override
  String get east => 'Öst';

  @override
  String get enableAutoStart => 'Aktivera autostart';

  @override
  String get enableNotifications => 'Aktivera aviseringar';

  @override
  String get enableReminders => 'Aktivera påminnelser';

  @override
  String get english => 'Engelska';

  @override
  String get enterYourName => 'Ange ditt namn';

  @override
  String get equipped => 'VALD';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Allt du behöver för en bättre Koran-upplevelse.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Feedback';

  @override
  String get first => 'Först';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'För bästa resultat, håll telefonen plant och borta från magnetiska föremål.';

  @override
  String get free => 'Gratis';

  @override
  String get fullBundle => 'Hela paketet';

  @override
  String get getAnAdFreeExperienceForever =>
      'Få en annonsfri upplevelse för alltid';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Bli påmind om att läsa och håll rutinen.';

  @override
  String get getStarted => 'Kom igång';

  @override
  String get gloryAndPraiseBeToAllah => 'Ära och pris vare Allah';

  @override
  String get gloryBeToAllah => 'Ära vare Allah';

  @override
  String get gloryBeToAllahTheMagnificent => 'Ära vare Allah, den Väldige';

  @override
  String get goToHome => 'Gå till startsidan';

  @override
  String get goldenEngraved => 'Graverat guld';

  @override
  String get greenJade => 'Grön jade';

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
  String get home => 'Hem';

  @override
  String get howYourDataIsHandled => 'Så hanteras dina uppgifter';

  @override
  String get iSeekForgivenessFromAllah => 'Jag ber Allah om förlåtelse';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Jag söker skydd hos Allah mot den fördömde Satan';

  @override
  String get immediateAlerts => 'Omedelbara aviseringar';

  @override
  String get inTheNameOfAllah => 'I Allahs namn';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Vi tillhör sannerligen Allah och till Honom återvänder vi';

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
  String get keepAdhanAlarmsReliable => 'Håll adhan-alarmen pålitliga';

  @override
  String get keepItUpYouReDoingGreat => 'Fortsätt så! Du gör det jättebra.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Håll böneutropen pålitliga även när appen är stängd.';

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
  String get last7Days => 'Senaste 7 dagarna';

  @override
  String get later => 'SENARE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Låt oss börja din vackra resa med Koranen.';

  @override
  String get letSPersonalizeYourExperience => 'Låt oss anpassa\ndin upplevelse';

  @override
  String get light => 'Ljust';

  @override
  String get lightMode => 'Ljust läge';

  @override
  String get listenToOrReadAnyAyahToday => 'Lyssna på eller läs en vers idag';

  @override
  String get locating => 'Söker plats...';

  @override
  String get location => 'Plats';

  @override
  String get locationPermissionsAreDenied => 'Platsbehörighet nekas';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Platsbehörighet är permanent nekad.';

  @override
  String get locationServicesAreDisabled => 'Platstjänster är avstängda.';

  @override
  String get longestStreak => 'Längsta serie';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Kanske senare';

  @override
  String get meccaSaudiArabia => 'Mecka, Saudiarabien';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Min Herre, förlåt och förbarma Dig';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Min Herre, jag är i behov av allt gott Du sänder ner';

  @override
  String get myLordIncreaseMeInKnowledge => 'Min Herre, öka min kunskap';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Min Herre, gör det lätt och inte svårt';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Namn (valfritt)';

  @override
  String get next => 'Nästa';

  @override
  String get nextDhikr => 'Nästa dhikr';

  @override
  String get nextPrayer => 'NÄSTA BÖN';

  @override
  String get night => 'NATT';

  @override
  String get nightEmeraldInterface => 'Mörkt smaragdgrönt gränssnitt';

  @override
  String get noBookmarksYet => 'Inga bokmärken än';

  @override
  String get noon => 'MIDDAG';

  @override
  String get north => 'Nord';

  @override
  String get northeast => 'Nordost';

  @override
  String get northwest => 'Nordväst';

  @override
  String get notificationsAlarm => 'Aviseringar och alarm';

  @override
  String get notificationsForPrayerTimes => 'Aviseringar för bönetider';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'O Allah, välsigna Muhammad';

  @override
  String get oEverLivingOSustainer => 'O Du Evigt Levande, O Du Upprätthållare';

  @override
  String get openAutoStart => 'ÖPPNA AUTOSTART';

  @override
  String get optimizeAdhanPerformance => 'Optimera adhan-prestandan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Vår Herre, skänk oss det goda i denna värld';

  @override
  String get page => 'SIDA';

  @override
  String get pearl => 'Pärla';

  @override
  String get personalizeYourAdhanNotifications =>
      'Anpassa dina adhan-aviseringar';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Lov och pris till Allah, världarnas Herre';

  @override
  String get prayerAlarms => 'Bönealarm';

  @override
  String get prayerSchedule => 'Böneschema';

  @override
  String get prayerTimeNotifications => 'Aviseringar om bönetider';

  @override
  String get prayerTimesAreLoading => 'Bönetider laddas';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Bönetider, qibla, Koranläsning och tasbih i en daglig följeslagare.';

  @override
  String get prayerQuranQibla => 'BÖN • KORANEN • QIBLA';

  @override
  String get premiumThemes => 'Premiumteman';

  @override
  String get preparingYourSpiritualJourney => 'Förbereder din andliga resa...';

  @override
  String get previousDhikr => 'Föregående dhikr';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Qibla-sökare';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Koranen';

  @override
  String get quranPlayback => 'Koranuppspelning';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro samlar bönetider, qibla, Koranläsning och tasbih i en enkel daglig följeslagare.';

  @override
  String get quranProPreferences => 'Inställningar för Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro sparar introduktions- och framstegsinställningar lokalt på den här enheten. Analysdata kan användas för att förbättra stabilitet och kvalitet.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro sparar dina tasbih-framsteg lokalt på den här enheten. Analysdata kan användas för att förbättra appens stabilitet och kvalitet.';

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
  String get rateApp => 'Betygsätt appen';

  @override
  String get rateQuranPro => 'Betygsätt Quran Pro';

  @override
  String get readListen => 'Läs och lyssna';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Läs Koranen med vackra recitationer.';

  @override
  String get recent => 'Senaste';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Rekommenderas för Xiaomi, Oppo, Vivo och Huawei';

  @override
  String get redCarnelian => 'Röd karneol';

  @override
  String get remindMeAt => 'Påminn mig kl.';

  @override
  String get removeAds => 'Ta bort annonser';

  @override
  String get requestingLocationPermission => 'Begär platsbehörighet...';

  @override
  String get reset => 'Nollställ';

  @override
  String get retry => 'Försök igen';

  @override
  String get returnToCompass => 'Tillbaka till kompassen';

  @override
  String get s => 'S';

  @override
  String get save => 'Spara';

  @override
  String get saveGoal => 'Spara mål';

  @override
  String get searchSurahNumberArabic => 'Sök sura, nummer, arabiska...';

  @override
  String get searchSurah => 'Sök sura...';

  @override
  String get selectLanguage => 'Välj språk';

  @override
  String get selectTheThemeYouLike => 'Välj det tema du gillar';

  @override
  String get selectYourBead => 'Välj din pärla';

  @override
  String get shop => 'Butik';

  @override
  String get shopCustomization => 'Butik och anpassning';

  @override
  String get sound => 'Ljud';

  @override
  String get south => 'Syd';

  @override
  String get southeast => 'Sydost';

  @override
  String get southwest => 'Sydväst';

  @override
  String get specialOccasionsAndMore => 'Särskilda tillfällen och mer';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Butiksbetyg kopplas in när butikssidan är klar.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SOLNEDGÅNG';

  @override
  String get supportQuranProOnTheStore => 'Stöd Quran Pro i butiken';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Tasbih-inställningar';

  @override
  String get tellUsWhatToImprove => 'Berätta vad vi kan förbättra';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Tack för att du använder Quran Pro. Butiksbetyg kopplas in när butikssidan är klar.';

  @override
  String get thereIsNoDeityExceptAllah => 'Det finns ingen gud utom Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Det finns ingen makt eller kraft utom genom Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Det hjälper oss att anpassa påminnelser och följa dina framsteg.';

  @override
  String get tigerSEye => 'Tigeröga';

  @override
  String get today => 'Idag';

  @override
  String get total => 'Totalt';

  @override
  String get totalHasanat => 'TOTALT HASANAT';

  @override
  String get trackProgress => 'Följ framsteg';

  @override
  String get trackYourReadingAndAchievements =>
      'Följ din läsning och dina framsteg.';

  @override
  String get tryAgain => 'Försök igen';

  @override
  String get undo => 'Ångra';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Lås upp alla teman och anpassningar';

  @override
  String get usageGuidelines => 'Användningsriktlinjer';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Använd Quran Pro respektfullt för personlig tillbedjan, lärande och dagliga islamiska rutiner.';

  @override
  String get viewAll => 'Visa alla';

  @override
  String get w => 'V';

  @override
  String get welcome => 'Välkommen';

  @override
  String get west => 'Väst';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Allt är klart!';

  @override
  String get yourProgress => 'Dina framsteg';

  @override
  String get continueLabel => 'Fortsätt';

  @override
  String get amethyst => 'Ametist';

  @override
  String get indonesian => 'Indonesiska';

  @override
  String get turkish => 'Turkiska';

  @override
  String get vietnamese => 'Vietnamesiska';

  @override
  String get turquoise => 'Turkos';

  @override
  String get wood => 'Trä';

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
