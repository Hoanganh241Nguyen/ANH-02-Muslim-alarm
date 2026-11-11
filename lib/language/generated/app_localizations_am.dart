// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Amharic (`am`).
class AppLocalizationsAm extends AppLocalizations {
  AppLocalizationsAm([String locale = 'am']) : super(locale);

  @override
  String get week => 'ሳምንት';

  @override
  String get month => 'ወር';

  @override
  String get lifetime => 'ሁሉም ጊዜ';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote => 'ከሥራዎ ትንሽ አረፍ ይበሉና ለአላህ ጊዜ ይስጡ።';

  @override
  String get prayerAlarmDefaultName => 'ሶላት';

  @override
  String productUnavailable(Object id) {
    return 'ምርት $id ለግዢ አይገኝም።';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'የ$productId ግዢ ተሳክቷል!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'የ$productId ግዢ ተመልሷል!';
  }

  @override
  String daysCount(Object count) {
    return '$count ቀናት';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ቀጣይ፡ $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'ወደ መካ ያለው ርቀት፡ $distance ኪሜ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'ከ$minutes ደቂቃ በኋላ አስታውሰኝ';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'የ$prayerName ሶላት ጊዜ ደርሷል';
  }

  @override
  String roundValue(Object round) {
    return 'ዙር፡ $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language ተመርጧል';
  }

  @override
  String juzNumber(Object juz) {
    return 'ጁዝ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'ገጽ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ሒዝብ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName፡ አያ $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count አያዎች';
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
    return 'ደረጃ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(ሱራ አል-በቀራ 2:238)';

  @override
  String get text1juz => '1 ጁዝ';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 ገጾች';

  @override
  String get text100dhikr => '100 ዚክር';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 ገጾች';

  @override
  String get text28cclearsky => '28°C - ጥርት ያለ ሰማይ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 ገጾች';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'ስለ መተግበሪያው';

  @override
  String get aboutQuranPro => 'ስለ Quran Pro';

  @override
  String get activity => 'እንቅስቃሴ';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'ማስታወቂያ እየተጫነ ነው። እባክዎ ከጥቂት ቆይታ በኋላ ይሞክሩ።';

  @override
  String get addCustomDhikr => 'የራስዎን ዚክር ያክሉ';

  @override
  String get addCustomDhikr2 => 'የራስዎን ዚክር ያክሉ';

  @override
  String get addDhikr => 'ዚክር ያክሉ';

  @override
  String get adjustPosition => 'አቀማመጥን ያስተካክሉ';

  @override
  String get afternoon => 'ከሰዓት';

  @override
  String get alMasjidAlHaram => 'አል-መስጂድ አል-ሐራም';

  @override
  String get alhamdulillahiRabbilAlamin => 'አልሐምዱሊላሂ ረቢል ዓለሚን';

  @override
  String get alignedToQibla => 'ወደ ቂብላ ተስተካክሏል';

  @override
  String get allPraiseIsDueToAllah => 'ምስጋና ሁሉ ለአላህ ነው';

  @override
  String get allPremiumFeaturesAtADiscountedPrice => 'ሁሉም ፕሪሚየም ባህሪያት በቅናሽ ዋጋ';

  @override
  String get allInOneQuranApp => 'ሁሉን አቀፍ የቁርኣን መተግበሪያ';

  @override
  String get allahIsSufficientForMeThereIsNo => 'አላህ ይበቃኛል፤ ከእርሱ በቀር አምላክ የለም';

  @override
  String get allahIsTheGreatest => 'አላህ ታላቁ ነው';

  @override
  String get allahuAkbar => 'አላሁ አክበር';

  @override
  String get allahummaSalliAlaMuhammad => 'አላሁመ ሰሊ ዓላ ሙሐመድ';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'የአካባቢ ፈቃድ ይፍቀዱ ወይም አማራጭ መርሃ ግብሩን ለመጠቀም «እንደገና ሞክር»ን ይንኩ።';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'የሶላት ጊዜያትንና ዕለታዊ ማስታወሻዎችን ለመቀበል ማሳወቂያዎችን ይፍቀዱ።';

  @override
  String get allowTheAppToRunInTheBackground => 'መተግበሪያው በጀርባ እንዲሠራ ይፍቀዱ';

  @override
  String get app => 'መተግበሪያ';

  @override
  String get arabic => 'ዐረብኛ';

  @override
  String get asr => 'አስር';

  @override
  String get auzuBillahiMinAshShaytanirRajim => 'አዑዙ ቢላሂ ሚነሽ ሸይጣኒር ረጂም';

  @override
  String get avg => 'አማካይ';

  @override
  String get ayah => 'አያ';

  @override
  String get batteryOptimization => 'የባትሪ ማሻሻያ';

  @override
  String get beautifulWidgets => 'ውብ ዊጀቶች';

  @override
  String get bestValue => 'ምርጥ ዋጋ';

  @override
  String get blackOnyx => 'ጥቁር ኦኒክስ';

  @override
  String get bookmarks => 'ዕልባቶች';

  @override
  String get brightIvoryInterface => 'ብሩህ የዝሆን ጥርስ መልክ';

  @override
  String get calculatingDistance => 'ርቀት እየተሰላ ነው...';

  @override
  String get calibrateYourDirection => 'አቅጣጫዎን ያስተካክሉ';

  @override
  String get cancel => 'ይቅር';

  @override
  String get change => 'ቀይር';

  @override
  String get changeTasbihMode => 'የተስቢህ ሁነታ ይቀየር?';

  @override
  String get chooseDhikr => 'ዚክር ይምረጡ';

  @override
  String get chooseDisplayLanguage => 'የማሳያ ቋንቋ ይምረጡ';

  @override
  String get chooseTheme => 'ገጽታ ይምረጡ';

  @override
  String get chooseYourPreferredLanguage => 'የሚመርጡትን ቋንቋ ይምረጡ';

  @override
  String get clickOrSwipeToCount => 'ለመቁጠር ይንኩ ወይም ያንሸራትቱ';

  @override
  String get close => 'ዝጋ';

  @override
  String get closeCustomGoal => 'ብጁ ግብን ዝጋ';

  @override
  String get completeAtLeast33Dhikr => 'ቢያንስ 33 ዚክር ያጠናቅቁ';

  @override
  String get connectYourHeartWithTheHolyQuran => 'ልብዎን ከቅዱስ ቁርኣን ጋር ያገናኙ።';

  @override
  String get continueReading => 'ንባብን ይቀጥሉ';

  @override
  String get countsPerRound => 'በአንድ ዙር ቆጠራ';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'ስብስብዎን በጥበብ በተሠሩ መንፈሳዊ ዕንቁዎች ያሳምሩ።';

  @override
  String get current => 'አሁን ያለው';

  @override
  String get current2 => 'አሁን ያለው';

  @override
  String get currentLocationToMecca => 'ከአሁኑ አካባቢ ወደ መካ';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'አሁን ያለው ዕድገት ለአዲሱ ሁነታ ዜሮ ይሆናል።';

  @override
  String get currentStreak => 'አሁን ያለው ተከታታይ';

  @override
  String get custom => 'ብጁ';

  @override
  String get customDhikr => 'ብጁ ዚክር';

  @override
  String get customGoal => 'ብጁ ግብ';

  @override
  String get customPrayerSounds => 'ብጁ የሶላት ድምፆች';

  @override
  String get dailyGoal => 'ዕለታዊ ግብ';

  @override
  String get dailyQuests => 'ዕለታዊ ተግባራት';

  @override
  String get dailyQuranReminder => 'ዕለታዊ የቁርኣን ማስታወሻ';

  @override
  String get dailyReminders => 'ዕለታዊ ማስታወሻዎች';

  @override
  String get dailyTasbih => 'ዕለታዊ ተስቢህ';

  @override
  String get dark => 'ጨለማ';

  @override
  String get dawn => 'ንጋት';

  @override
  String get debug => 'ማረሚያ';

  @override
  String get dhikr => 'ዚክር';

  @override
  String get dhikrActivity => 'የዚክር እንቅስቃሴ';

  @override
  String get dhuAlHijjah => 'ዙል-ሒጃ';

  @override
  String get dhuAlQadah => 'ዙል-ቂዕዳ';

  @override
  String get dhuhr => 'ዙህር';

  @override
  String get direction => 'አቅጣጫ';

  @override
  String get disableBatteryOptimization => 'የባትሪ ማሻሻያን ያጥፉ';

  @override
  String get disableOptimization => 'ማሻሻያን አጥፋ';

  @override
  String get distance => 'ርቀት';

  @override
  String get e => 'ምሥ';

  @override
  String get eGHasbunallah => 'ለምሳሌ ሐስቡናላህ';

  @override
  String get east => 'ምሥራቅ';

  @override
  String get enableAutoStart => 'ራስ-ሰር ጅምርን አንቃ';

  @override
  String get enableNotifications => 'ማሳወቂያዎችን አንቃ';

  @override
  String get enableReminders => 'ማስታወሻዎችን አንቃ';

  @override
  String get english => 'እንግሊዝኛ';

  @override
  String get enterYourName => 'ስምዎን ያስገቡ';

  @override
  String get equipped => 'በጥቅም ላይ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'ለተሻለ የቁርኣን ተሞክሮ የሚያስፈልግዎ ሁሉ።';

  @override
  String get fajr => 'ፈጅር';

  @override
  String get feedback => 'አስተያየት';

  @override
  String get first => 'መጀመሪያ';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ለተሻለ ትክክለኛነት ስልክዎን አግድም ይያዙት፤ ከመግነጢሳዊ ነገሮችም ያርቁት።';

  @override
  String get free => 'ነጻ';

  @override
  String get fullBundle => 'ሙሉ ጥቅል';

  @override
  String get getAnAdFreeExperienceForever => 'ለዘላለም ከማስታወቂያ ነጻ ተሞክሮ ያግኙ';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'እንዲያነቡ ማስታወሻ ያግኙ፤ ቀጣይነትም ይኑርዎት።';

  @override
  String get getStarted => 'ይጀምሩ';

  @override
  String get gloryAndPraiseBeToAllah => 'አላህ የጠራ ነው፤ ምስጋናም ለእርሱ ይሁን';

  @override
  String get gloryBeToAllah => 'አላህ ከሁሉ የጠራ ነው';

  @override
  String get gloryBeToAllahTheMagnificent => 'ታላቁ አላህ ከሁሉ የጠራ ነው';

  @override
  String get goToHome => 'ወደ መነሻ ይሂዱ';

  @override
  String get goldenEngraved => 'በወርቅ የተቀረጸ';

  @override
  String get greenJade => 'አረንጓዴ ጃድ';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ሃኖይ፣ ቬትናም';

  @override
  String get haptic => 'ንዝረት';

  @override
  String get hasanatHub => 'የሐሰናት ማዕከል';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ሐስቢየላሁ ላ ኢላሀ ኢላ ሁወ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'መነሻ';

  @override
  String get howYourDataIsHandled => 'ውሂብዎ እንዴት እንደሚያዝ';

  @override
  String get iSeekForgivenessFromAllah => 'ከአላህ ምሕረትን እለምናለሁ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed => 'ከተረገመው ሰይጣን በአላህ እጠበቃለሁ';

  @override
  String get immediateAlerts => 'ፈጣን ማንቂያዎች';

  @override
  String get inTheNameOfAllah => 'በአላህ ስም';

  @override
  String get indeedWeBelongToAllahAndToHim => 'እኛ የአላህ ነን፤ ወደ እርሱም እንመለሳለን';

  @override
  String get innaLillahiWaInnaIlayhiRajiun => 'ኢና ሊላሂ ወኢና ኢለይሂ ራጅዑን';

  @override
  String get isha => 'ኢሻ';

  @override
  String get jumadaAlAwwal => 'ጁማዳ አል-አወል';

  @override
  String get jumadaAlThani => 'ጁማዳ አል-ሳኒ';

  @override
  String get juz => 'ጁዝ';

  @override
  String get juz2 => 'ጁዝ';

  @override
  String get keepAdhanAlarmsReliable => 'የአዛን ማንቂያዎች አስተማማኝ ይሁኑ';

  @override
  String get keepItUpYouReDoingGreat => 'ቀጥሉበት! በጣም ጥሩ እየሠሩ ነው።';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'መተግበሪያው ሲዘጋም እንኳ አዛን አስተማማኝ ሆኖ ይቀጥል።';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'ላ ሐውለ ወላ ቁወተ ኢላ ቢላህ';

  @override
  String get laIlahaIllallah => 'ላ ኢላሀ ኢለላህ';

  @override
  String get language => 'ቋንቋ';

  @override
  String get lapisLazuli => 'ላፒስ ላዙሊ';

  @override
  String get last7Days => 'ያለፉት 7 ቀናት';

  @override
  String get later => 'በኋላ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe => 'ከቁርኣን ጋር ውብ ጉዞዎን እንጀምር።';

  @override
  String get letSPersonalizeYourExperience => 'ተሞክሮዎን\nለእርስዎ እናብጅ';

  @override
  String get light => 'ብሩህ';

  @override
  String get lightMode => 'ብሩህ ሁነታ';

  @override
  String get listenToOrReadAnyAyahToday => 'ዛሬ ማንኛውንም አያ ያዳምጡ ወይም ያንብቡ';

  @override
  String get locating => 'አካባቢ እየተፈለገ ነው...';

  @override
  String get location => 'አካባቢ';

  @override
  String get locationPermissionsAreDenied => 'የአካባቢ ፈቃዶች ተከልክለዋል';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'የአካባቢ ፈቃዶች በቋሚነት ተከልክለዋል።';

  @override
  String get locationServicesAreDisabled => 'የአካባቢ አገልግሎቶች ጠፍተዋል።';

  @override
  String get longestStreak => 'ረጅሙ ተከታታይ';

  @override
  String get maghrib => 'መግሪብ';

  @override
  String get maybeLater => 'ምናልባት በኋላ';

  @override
  String get meccaSaudiArabia => 'መካ፣ ሳውዲ ዓረቢያ';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'ጌታዬ ሆይ፣ ማርልኝ እዘንልኝም';

  @override
  String get myLordIAmInNeedOfWhatever => 'ጌታዬ ሆይ፣ ከምታወርድልኝ በጎ ነገር ሁሉ ችግረኛ ነኝ';

  @override
  String get myLordIncreaseMeInKnowledge => 'ጌታዬ ሆይ፣ ዕውቀቴን ጨምርልኝ';

  @override
  String get myLordMakeItEasyAndDoNot => 'ጌታዬ ሆይ፣ አቅልልልኝ፤ አታክብድብኝም';

  @override
  String get n => 'ሰ';

  @override
  String get nameOptional => 'ስም (አማራጭ)';

  @override
  String get next => 'ቀጣይ';

  @override
  String get nextDhikr => 'ቀጣይ ዚክር';

  @override
  String get nextPrayer => 'ቀጣይ ሶላት';

  @override
  String get night => 'ሌሊት';

  @override
  String get nightEmeraldInterface => 'የሌሊት ኤመራልድ መልክ';

  @override
  String get noBookmarksYet => 'እስካሁን ዕልባት የለም';

  @override
  String get noon => 'ቀትር';

  @override
  String get north => 'ሰሜን';

  @override
  String get northeast => 'ሰሜን ምሥራቅ';

  @override
  String get northwest => 'ሰሜን ምዕራብ';

  @override
  String get notificationsAlarm => 'ማሳወቂያዎችና ማንቂያ';

  @override
  String get notificationsForPrayerTimes => 'ለሶላት ጊዜያት ማሳወቂያዎች';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'አላህ ሆይ፣ በሙሐመድ ላይ ሰላትን አውርድ';

  @override
  String get oEverLivingOSustainer => 'ሕያው ሆይ፣ ሁሉን አስተዳዳሪ ሆይ';

  @override
  String get openAutoStart => 'ራስ-ሰር ጅምርን ክፈት';

  @override
  String get optimizeAdhanPerformance => 'የአዛን አፈጻጸምን ያሻሽሉ';

  @override
  String get ourLordGrantUsGoodInThisWorld => 'ጌታችን ሆይ፣ በዚህ ዓለም መልካምን ስጠን';

  @override
  String get page => 'ገጽ';

  @override
  String get pearl => 'ዕንቁ';

  @override
  String get personalizeYourAdhanNotifications => 'የአዛን ማሳወቂያዎችዎን ያብጁ';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'ምስጋና ለዓለማት ጌታ ለአላህ ይሁን';

  @override
  String get prayerAlarms => 'የሶላት ማንቂያዎች';

  @override
  String get prayerSchedule => 'የሶላት መርሃ ግብር';

  @override
  String get prayerTimeNotifications => 'የሶላት ጊዜ ማሳወቂያዎች';

  @override
  String get prayerTimesAreLoading => 'የሶላት ጊዜያት እየተጫኑ ናቸው';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'የሶላት ጊዜያት፣ ቂብላ፣ የቁርኣን ንባብና ተስቢህ በአንድ ዕለታዊ አጋር።';

  @override
  String get prayerQuranQibla => 'ሶላት • ቁርኣን • ቂብላ';

  @override
  String get premiumThemes => 'ፕሪሚየም ገጽታዎች';

  @override
  String get preparingYourSpiritualJourney => 'መንፈሳዊ ጉዞዎ እየተዘጋጀ ነው...';

  @override
  String get previousDhikr => 'ቀዳሚ ዚክር';

  @override
  String get privacyPolicy => 'የግላዊነት ፖሊሲ';

  @override
  String get qibla => 'ቂብላ';

  @override
  String get qiblaFinder => 'የቂብላ መፈለጊያ';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ቁርኣን';

  @override
  String get quranPlayback => 'የቁርኣን ማጫወቻ';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro የሶላት ጊዜያትን፣ ቂብላን፣ የቁርኣን ንባብንና ተስቢህን በአንድ ቀላል ዕለታዊ አጋር ያሰባስባል።';

  @override
  String get quranProPreferences => 'የQuran Pro ምርጫዎች';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro የመግቢያና የዕድገት ምርጫዎችን በዚህ መሣሪያ ላይ ያስቀምጣል። ትንታኔ የመረጋጋትና የጥራት መሻሻል ላይ ሊውል ይችላል።';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro የተስቢህ ዕድገትዎን በዚህ መሣሪያ ላይ ያስቀምጣል። ትንታኔ የመተግበሪያውን መረጋጋትና የምርት ጥራት ለማሻሻል ሊውል ይችላል።';

  @override
  String get quranRecitation => 'የቁርኣን ቅራአት';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ረበና አቲና ፊድ-ዱንያ ሐሰና';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ረቢ ኢኒ ሊማ አንዘልተ ኢለየ ሚን ኸይሪን ፈቂር';

  @override
  String get rabbiYassirWaLaTuassir => 'ረቢ የሲር ወላ ቱዐሲር';

  @override
  String get rabbiZidniIlma => 'ረቢ ዚድኒ ዒልማ';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ረቢግፊር ወርሐም ወአንተ ኸይሩር ራሒሚን';

  @override
  String get rabiAlAwwal => 'ረቢዕ አል-አወል';

  @override
  String get rabiAlThani => 'ረቢዕ አል-ሳኒ';

  @override
  String get rateApp => 'መተግበሪያውን ደረጃ ይስጡ';

  @override
  String get rateQuranPro => 'Quran Pro ን ደረጃ ይስጡ';

  @override
  String get readListen => 'ያንብቡና ያዳምጡ';

  @override
  String get readTheQuranWithBeautifulRecitations => 'ቁርኣንን በውብ ቅራአት ያንብቡ።';

  @override
  String get recent => 'የቅርብ ጊዜ';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'ለXiaomi፣ Oppo፣ Vivo እና Huawei ይመከራል';

  @override
  String get redCarnelian => 'ቀይ ካርኒሊያን';

  @override
  String get remindMeAt => 'አስታውሰኝ በ';

  @override
  String get removeAds => 'ማስታወቂያዎችን አስወግድ';

  @override
  String get requestingLocationPermission => 'የአካባቢ ፈቃድ እየተጠየቀ ነው...';

  @override
  String get reset => 'ዳግም አስጀምር';

  @override
  String get retry => 'እንደገና ሞክር';

  @override
  String get returnToCompass => 'ወደ ኮምፓስ ተመለስ';

  @override
  String get s => 'ደ';

  @override
  String get save => 'አስቀምጥ';

  @override
  String get saveGoal => 'ግብን አስቀምጥ';

  @override
  String get searchSurahNumberArabic => 'ሱራ፣ ቁጥር፣ ዐረብኛ ይፈልጉ...';

  @override
  String get searchSurah => 'ሱራ ይፈልጉ...';

  @override
  String get selectLanguage => 'ቋንቋ ይምረጡ';

  @override
  String get selectTheThemeYouLike => 'የሚወዱትን ገጽታ ይምረጡ';

  @override
  String get selectYourBead => 'ዶቃዎን ይምረጡ';

  @override
  String get shop => 'መደብር';

  @override
  String get shopCustomization => 'መደብርና ማበጃጀት';

  @override
  String get sound => 'ድምፅ';

  @override
  String get south => 'ደቡብ';

  @override
  String get southeast => 'ደቡብ ምሥራቅ';

  @override
  String get southwest => 'ደቡብ ምዕራብ';

  @override
  String get specialOccasionsAndMore => 'ልዩ አጋጣሚዎችና ሌሎችም';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'የመደብር ደረጃ አሰጣጥ የምርቱ ዝርዝር ገጽ ሲዘጋጅ ይገናኛል።';

  @override
  String get subhanallahiWaBihamdihi => 'ሱብሓነላሂ ወቢሐምዲሂ';

  @override
  String get subhanallahilAzim => 'ሱብሓነላሂል ዐዚም';

  @override
  String get sunset => 'ምሽት';

  @override
  String get supportQuranProOnTheStore => 'Quran Pro ን በመደብር ይደግፉ';

  @override
  String get surah => 'ሱራ';

  @override
  String get tasbih => 'ተስቢህ';

  @override
  String get tasbihSettings => 'የተስቢህ ቅንብሮች';

  @override
  String get tellUsWhatToImprove => 'ምን እንደሚሻሻል ይንገሩን';

  @override
  String get termsOfUse => 'የአጠቃቀም ውሎች';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro ን ስለተጠቀሙ እናመሰግናለን። የመደብር ደረጃ አሰጣጥ የምርቱ ዝርዝር ገጽ ሲዘጋጅ ይገናኛል።';

  @override
  String get thereIsNoDeityExceptAllah => 'ከአላህ በቀር አምላክ የለም';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough => 'ከአላህ በቀር ኃይልም ችሎታም የለም';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ይህ ማስታወሻዎችን ለማበጀትና ዕድገትዎን ለመከታተል ይረዳናል።';

  @override
  String get tigerSEye => 'የነብር ዓይን';

  @override
  String get today => 'ዛሬ';

  @override
  String get total => 'ጠቅላላ';

  @override
  String get totalHasanat => 'ጠቅላላ ሐሰናት';

  @override
  String get trackProgress => 'ዕድገትን ይከታተሉ';

  @override
  String get trackYourReadingAndAchievements => 'ንባብዎንና ስኬቶችዎን ይከታተሉ።';

  @override
  String get tryAgain => 'እንደገና ይሞክሩ';

  @override
  String get undo => 'ቀልብስ';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'ሁሉንም የመተግበሪያ ገጽታዎችና ማበጃጀቶች ይክፈቱ';

  @override
  String get usageGuidelines => 'የአጠቃቀም መመሪያዎች';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro ን ለግል ዒባዳ፣ ለትምህርትና ለዕለታዊ ኢስላማዊ ተግባራት በአክብሮት ይጠቀሙ።';

  @override
  String get viewAll => 'ሁሉንም ይመልከቱ';

  @override
  String get w => 'ምዕ';

  @override
  String get welcome => 'እንኳን በደህና መጡ';

  @override
  String get west => 'ምዕራብ';

  @override
  String get yaHayyuYaQayyum => 'ያ ሐዩ ያ ቀዩም';

  @override
  String get youReAllSet => 'ሁሉም ተዘጋጅቷል!';

  @override
  String get yourProgress => 'የእርስዎ ዕድገት';

  @override
  String get continueLabel => 'ቀጥል';

  @override
  String get amethyst => 'አሜቲስት';

  @override
  String get indonesian => 'ኢንዶኔዥያኛ';

  @override
  String get turkish => 'ቱርክኛ';

  @override
  String get vietnamese => 'ቬትናምኛ';

  @override
  String get turquoise => 'ቱርኳዝ';

  @override
  String get wood => 'እንጨት';

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
