// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get week => 'हप्ता';

  @override
  String get month => 'महिना';

  @override
  String get lifetime => 'अहिलेसम्म';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'आफ्नो कामबाट केही बेर रोकिनुहोस् र अल्लाहका लागि समय निकाल्नुहोस्।';

  @override
  String get prayerAlarmDefaultName => 'नमाज';

  @override
  String productUnavailable(Object id) {
    return 'उत्पादन $id किन्नका लागि उपलब्ध छैन।';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId को खरिद सफल भयो!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId को खरिद पुनःस्थापित भयो!';
  }

  @override
  String daysCount(Object count) {
    return '$count दिन';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'आगामी: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'मक्कासम्मको दूरी: $distance किमी';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes मिनेटपछि सम्झाउनुहोस्';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName नमाजको समय भयो';
  }

  @override
  String roundValue(Object round) {
    return 'राउन्ड: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language छानियो';
  }

  @override
  String juzNumber(Object juz) {
    return 'जुज $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'पृष्ठ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'हिज्ब $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: आयत $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count आयत';
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
    return 'स्तर $level';
  }

  @override
  String get surahAlBaqarah2238 => '(सुरा अल-बकरा 2:238)';

  @override
  String get text1juz => '1 जुज';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 पृष्ठ';

  @override
  String get text100dhikr => '100 जिक्र';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 पृष्ठ';

  @override
  String get text28cclearsky => '28°C - सफा आकाश';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 पृष्ठ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'बारेमा';

  @override
  String get aboutQuranPro => 'Quran Pro बारे';

  @override
  String get activity => 'गतिविधि';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'विज्ञापन लोड हुँदैछ। केही बेरमा फेरि प्रयास गर्नुहोस्।';

  @override
  String get addCustomDhikr => 'आफ्नै जिक्र थप्नुहोस्';

  @override
  String get addCustomDhikr2 => 'आफ्नै जिक्र थप्नुहोस्';

  @override
  String get addDhikr => 'जिक्र थप्नुहोस्';

  @override
  String get adjustPosition => 'स्थिति मिलाउनुहोस्';

  @override
  String get afternoon => 'अपराह्न';

  @override
  String get alMasjidAlHaram => 'अल-मस्जिद अल-हराम';

  @override
  String get alhamdulillahiRabbilAlamin => 'अल्हम्दुलिल्लाहि रब्बिल आलमीन';

  @override
  String get alignedToQibla => 'किबलातिर सोझिएको';

  @override
  String get allPraiseIsDueToAllah => 'सम्पूर्ण प्रशंसा अल्लाहकै लागि हो';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'छुटको मूल्यमा सबै प्रिमियम सुविधा';

  @override
  String get allInOneQuranApp => 'सबै-एकमै कुरआन एप';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'अल्लाह मेरा लागि पर्याप्त हुनुहुन्छ; उहाँबाहेक कुनै पूज्य छैन';

  @override
  String get allahIsTheGreatest => 'अल्लाह सबभन्दा महान् हुनुहुन्छ';

  @override
  String get allahuAkbar => 'अल्लाहु अकबर';

  @override
  String get allahummaSalliAlaMuhammad => 'अल्लाहुम्मा सल्लि अला मुहम्मद';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'स्थानको अनुमति दिनुहोस् वा वैकल्पिक तालिका प्रयोग गर्न पुनः प्रयास थिच्नुहोस्।';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'नमाजको समय र दैनिक सम्झना पाउन सूचनाको अनुमति दिनुहोस्।';

  @override
  String get allowTheAppToRunInTheBackground =>
      'एपलाई ब्याकग्राउन्डमा चल्न दिनुहोस्';

  @override
  String get app => 'एप';

  @override
  String get arabic => 'अरबी';

  @override
  String get asr => 'अस्र';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'अऊजु बिल्लाहि मिनश-शैतानिर रजीम';

  @override
  String get avg => 'औसत';

  @override
  String get ayah => 'आयत';

  @override
  String get batteryOptimization => 'ब्याट्री अप्टिमाइजेसन';

  @override
  String get beautifulWidgets => 'सुन्दर विजेट';

  @override
  String get bestValue => 'उत्कृष्ट मूल्य';

  @override
  String get blackOnyx => 'कालो ओनिक्स';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get brightIvoryInterface => 'उज्यालो आइभोरी इन्टरफेस';

  @override
  String get calculatingDistance => 'दूरी गणना गरिँदैछ...';

  @override
  String get calibrateYourDirection => 'आफ्नो दिशा क्यालिब्रेट गर्नुहोस्';

  @override
  String get cancel => 'रद्द';

  @override
  String get change => 'बदल्नुहोस्';

  @override
  String get changeTasbihMode => 'तस्बिह मोड बदल्ने?';

  @override
  String get chooseDhikr => 'जिक्र छान्नुहोस्';

  @override
  String get chooseDisplayLanguage => 'प्रदर्शन भाषा छान्नुहोस्';

  @override
  String get chooseTheme => 'थिम छान्नुहोस्';

  @override
  String get chooseYourPreferredLanguage => 'आफ्नो मनपर्ने भाषा छान्नुहोस्';

  @override
  String get clickOrSwipeToCount => 'गन्न ट्याप वा स्वाइप गर्नुहोस्';

  @override
  String get close => 'बन्द गर्नुहोस्';

  @override
  String get closeCustomGoal => 'आफ्नै लक्ष्य बन्द गर्नुहोस्';

  @override
  String get completeAtLeast33Dhikr => 'कम्तीमा 33 जिक्र पूरा गर्नुहोस्';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'आफ्नो हृदयलाई पवित्र कुरआनसँग जोड्नुहोस्।';

  @override
  String get continueReading => 'पढ्न जारी राख्नुहोस्';

  @override
  String get countsPerRound => 'प्रति राउन्ड गणना';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'उत्कृष्ट कारीगरीका आध्यात्मिक रत्नले आफ्नो संग्रह सजाउनुहोस्।';

  @override
  String get current => 'हालको';

  @override
  String get current2 => 'हालको';

  @override
  String get currentLocationToMecca => 'हालको स्थानदेखि मक्कासम्म';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'नयाँ मोडका लागि हालको प्रगति रिसेट हुनेछ।';

  @override
  String get currentStreak => 'हालको निरन्तरता';

  @override
  String get custom => 'आफ्नै';

  @override
  String get customDhikr => 'आफ्नै जिक्र';

  @override
  String get customGoal => 'आफ्नै लक्ष्य';

  @override
  String get customPrayerSounds => 'मनपर्ने नमाज ध्वनि';

  @override
  String get dailyGoal => 'दैनिक लक्ष्य';

  @override
  String get dailyQuests => 'दैनिक कार्य';

  @override
  String get dailyQuranReminder => 'दैनिक कुरआन सम्झना';

  @override
  String get dailyReminders => 'दैनिक सम्झना';

  @override
  String get dailyTasbih => 'दैनिक तस्बिह';

  @override
  String get dark => 'डार्क';

  @override
  String get dawn => 'भोर';

  @override
  String get debug => 'डिबग';

  @override
  String get dhikr => 'जिक्र';

  @override
  String get dhikrActivity => 'जिक्र गतिविधि';

  @override
  String get dhuAlHijjah => 'जिल्हज्ज';

  @override
  String get dhuAlQadah => 'जिल्कद';

  @override
  String get dhuhr => 'जुहर';

  @override
  String get direction => 'दिशा';

  @override
  String get disableBatteryOptimization =>
      'ब्याट्री अप्टिमाइजेसन बन्द गर्नुहोस्';

  @override
  String get disableOptimization => 'अप्टिमाइजेसन बन्द गर्नुहोस्';

  @override
  String get distance => 'दूरी';

  @override
  String get e => 'पू';

  @override
  String get eGHasbunallah => 'जस्तै: हस्बुनल्लाह';

  @override
  String get east => 'पूर्व';

  @override
  String get enableAutoStart => 'अटो-स्टार्ट सक्रिय गर्नुहोस्';

  @override
  String get enableNotifications => 'सूचना सक्रिय गर्नुहोस्';

  @override
  String get enableReminders => 'सम्झना सक्रिय गर्नुहोस्';

  @override
  String get english => 'अंग्रेजी';

  @override
  String get enterYourName => 'आफ्नो नाम लेख्नुहोस्';

  @override
  String get equipped => 'प्रयोगमा';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'राम्रो कुरआन अनुभवका लागि चाहिने सबै कुरा।';

  @override
  String get fajr => 'फजर';

  @override
  String get feedback => 'प्रतिक्रिया';

  @override
  String get first => 'पहिलो';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'सबभन्दा सही नतिजाका लागि फोनलाई समतल र चुम्बकीय वस्तुबाट टाढा राख्नुहोस्।';

  @override
  String get free => 'निःशुल्क';

  @override
  String get fullBundle => 'पूरा बन्डल';

  @override
  String get getAnAdFreeExperienceForever =>
      'सधैंका लागि विज्ञापनरहित अनुभव पाउनुहोस्';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'पढ्ने सम्झना पाउनुहोस् र निरन्तरता कायम राख्नुहोस्।';

  @override
  String get getStarted => 'सुरु गरौं';

  @override
  String get gloryAndPraiseBeToAllah =>
      'अल्लाह पवित्र हुनुहुन्छ र सबै प्रशंसा उहाँकै लागि हो';

  @override
  String get gloryBeToAllah => 'अल्लाह पवित्र हुनुहुन्छ';

  @override
  String get gloryBeToAllahTheMagnificent => 'महान् अल्लाह पवित्र हुनुहुन्छ';

  @override
  String get goToHome => 'होममा जानुहोस्';

  @override
  String get goldenEngraved => 'सुनौलो कुँदिएको';

  @override
  String get greenJade => 'हरियो ज्याड';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'हनोई, भियतनाम';

  @override
  String get haptic => 'कम्पन';

  @override
  String get hasanatHub => 'हसनात केन्द्र';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'हस्बियल्लाहु ला इलाहा इल्ला हुवा';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'होम';

  @override
  String get howYourDataIsHandled => 'तपाईंको डेटा कसरी प्रयोग हुन्छ';

  @override
  String get iSeekForgivenessFromAllah => 'म अल्लाहसँग क्षमा माग्दछु';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'म धिक्कारिएको शैतानबाट अल्लाहको शरण माग्दछु';

  @override
  String get immediateAlerts => 'तत्काल सूचना';

  @override
  String get inTheNameOfAllah => 'अल्लाहको नाममा';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'निस्सन्देह हामी अल्लाहकै हौं र उहाँकहाँ नै फर्कनु छ';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'इन्ना लिल्लाहि व इन्ना इलैहि राजिऊन';

  @override
  String get isha => 'इशा';

  @override
  String get jumadaAlAwwal => 'जमादिउल अव्वल';

  @override
  String get jumadaAlThani => 'जमादिउस सानी';

  @override
  String get juz => 'जुज';

  @override
  String get juz2 => 'जुज';

  @override
  String get keepAdhanAlarmsReliable => 'अजान अलार्म भरपर्दो राख्नुहोस्';

  @override
  String get keepItUpYouReDoingGreat =>
      'यसै गरी जारी राख्नुहोस्! तपाईं राम्रो गर्दै हुनुहुन्छ।';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'एप बन्द हुँदा पनि अजान भरपर्दो राख्नुहोस्।';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'ला हौला वला कुव्वता इल्ला बिल्लाह';

  @override
  String get laIlahaIllallah => 'ला इलाहा इल्लल्लाह';

  @override
  String get language => 'भाषा';

  @override
  String get lapisLazuli => 'लाजवर्द';

  @override
  String get last7Days => 'पछिल्ला 7 दिन';

  @override
  String get later => 'पछि';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'कुरआनसँग तपाईंको सुन्दर यात्रा सुरु गरौं।';

  @override
  String get letSPersonalizeYourExperience =>
      'तपाईंको अनुभव\nआफ्नै अनुसार बनाऔं';

  @override
  String get light => 'लाइट';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get listenToOrReadAnyAyahToday =>
      'आज कुनै पनि आयत सुन्नुहोस् वा पढ्नुहोस्';

  @override
  String get locating => 'स्थान पत्ता लगाइँदैछ...';

  @override
  String get location => 'स्थान';

  @override
  String get locationPermissionsAreDenied => 'स्थानको अनुमति दिइएको छैन';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'स्थानको अनुमति स्थायी रूपमा अस्वीकृत छ।';

  @override
  String get locationServicesAreDisabled => 'स्थान सेवा बन्द छ।';

  @override
  String get longestStreak => 'सबभन्दा लामो निरन्तरता';

  @override
  String get maghrib => 'मगरिब';

  @override
  String get maybeLater => 'पछि हेरौंला';

  @override
  String get meccaSaudiArabia => 'मक्का, साउदी अरब';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'हे मेरो पालनकर्ता, क्षमा गर्नुहोस् र दया गर्नुहोस्';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'हे मेरो पालनकर्ता, तपाईंले पठाउनुहुने भलाइको म खाँचोमा छु';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'हे मेरो पालनकर्ता, मेरो ज्ञान बढाउनुहोस्';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'हे मेरो पालनकर्ता, सजिलो पारिदिनुहोस्, कठिन नबनाउनुहोस्';

  @override
  String get n => 'उ';

  @override
  String get nameOptional => 'नाम (वैकल्पिक)';

  @override
  String get next => 'अर्को';

  @override
  String get nextDhikr => 'अर्को जिक्र';

  @override
  String get nextPrayer => 'अर्को नमाज';

  @override
  String get night => 'रात';

  @override
  String get nightEmeraldInterface => 'रातको एमराल्ड इन्टरफेस';

  @override
  String get noBookmarksYet => 'अहिलेसम्म कुनै बुकमार्क छैन';

  @override
  String get noon => 'मध्याह्न';

  @override
  String get north => 'उत्तर';

  @override
  String get northeast => 'उत्तर-पूर्व';

  @override
  String get northwest => 'उत्तर-पश्चिम';

  @override
  String get notificationsAlarm => 'सूचना र अलार्म';

  @override
  String get notificationsForPrayerTimes => 'नमाजको समयका सूचना';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'हे अल्लाह, मुहम्मदमाथि दरूद पठाउनुहोस्';

  @override
  String get oEverLivingOSustainer => 'हे सदा जीवित, हे सबैलाई थाम्ने';

  @override
  String get openAutoStart => 'अटो-स्टार्ट खोल्नुहोस्';

  @override
  String get optimizeAdhanPerformance => 'अजानको कार्यसम्पादन सुधार्नुहोस्';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'हे हाम्रा पालनकर्ता, हामीलाई यस संसारमा भलाइ दिनुहोस्';

  @override
  String get page => 'पृष्ठ';

  @override
  String get pearl => 'मोती';

  @override
  String get personalizeYourAdhanNotifications =>
      'अजानका सूचना आफ्नै अनुसार मिलाउनुहोस्';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'सबै प्रशंसा अल्लाहकै लागि हो, जो सारा जगत्का पालनकर्ता हुनुहुन्छ';

  @override
  String get prayerAlarms => 'नमाजका अलार्म';

  @override
  String get prayerSchedule => 'नमाजको तालिका';

  @override
  String get prayerTimeNotifications => 'नमाजको समयका सूचना';

  @override
  String get prayerTimesAreLoading => 'नमाजका समय लोड हुँदैछन्';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'नमाजको समय, किबला, कुरआन पठन र तस्बिह — सबै एउटै दैनिक साथीमा।';

  @override
  String get prayerQuranQibla => 'नमाज • कुरआन • किबला';

  @override
  String get premiumThemes => 'प्रिमियम थिम';

  @override
  String get preparingYourSpiritualJourney =>
      'तपाईंको आध्यात्मिक यात्रा तयार गरिँदैछ...';

  @override
  String get previousDhikr => 'अघिल्लो जिक्र';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get qibla => 'किबला';

  @override
  String get qiblaFinder => 'किबला खोजक';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'कुरआन';

  @override
  String get quranPlayback => 'कुरआन प्लेब्याक';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro ले नमाजको समय, किबला, कुरआन पठन र तस्बिहलाई एउटै सरल दैनिक साथीमा ल्याउँछ।';

  @override
  String get quranProPreferences => 'Quran Pro का प्राथमिकता';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro ले सुरुवाती र प्रगतिसम्बन्धी प्राथमिकता यसै डिभाइसमा सुरक्षित गर्छ। स्थिरता र गुणस्तर सुधार्न एनालिटिक्स प्रयोग हुन सक्छ।';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro ले तपाईंको तस्बिह प्रगति यसै डिभाइसमा सुरक्षित गर्छ। एपको स्थिरता र गुणस्तर सुधार्न एनालिटिक्स प्रयोग हुन सक्छ।';

  @override
  String get quranRecitation => 'कुरआन तिलावत';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'रब्बना आतिना फिद्दुन्या हसनह';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'रब्बि इन्नी लिमा अन्जल्ता इलय्या मिन खैरिन फकीर';

  @override
  String get rabbiYassirWaLaTuassir => 'रब्बि यस्सिर वला तुअस्सिर';

  @override
  String get rabbiZidniIlma => 'रब्बि जिदनी इल्मा';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'रब्बिग्फिर वरहम व अन्ता खैरुर राहिमीन';

  @override
  String get rabiAlAwwal => 'रबिउल अव्वल';

  @override
  String get rabiAlThani => 'रबिउस सानी';

  @override
  String get rateApp => 'एपलाई रेटिङ दिनुहोस्';

  @override
  String get rateQuranPro => 'Quran Pro लाई रेटिङ दिनुहोस्';

  @override
  String get readListen => 'पढ्नुहोस् र सुन्नुहोस्';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'सुन्दर तिलावतसँगै कुरआन पढ्नुहोस्।';

  @override
  String get recent => 'हालैका';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo र Huawei का लागि सिफारिस';

  @override
  String get redCarnelian => 'रातो अकीक';

  @override
  String get remindMeAt => 'यति बेला सम्झाउनुहोस्';

  @override
  String get removeAds => 'विज्ञापन हटाउनुहोस्';

  @override
  String get requestingLocationPermission => 'स्थानको अनुमति मागिँदैछ...';

  @override
  String get reset => 'रिसेट';

  @override
  String get retry => 'पुनः प्रयास';

  @override
  String get returnToCompass => 'कम्पासमा फर्कनुहोस्';

  @override
  String get s => 'द';

  @override
  String get save => 'सुरक्षित गर्नुहोस्';

  @override
  String get saveGoal => 'लक्ष्य सुरक्षित गर्नुहोस्';

  @override
  String get searchSurahNumberArabic => 'सुरा, नम्बर, अरबी खोज्नुहोस्...';

  @override
  String get searchSurah => 'सुरा खोज्नुहोस्...';

  @override
  String get selectLanguage => 'भाषा छान्नुहोस्';

  @override
  String get selectTheThemeYouLike => 'आफूलाई मनपर्ने थिम छान्नुहोस्';

  @override
  String get selectYourBead => 'आफ्नो दाना छान्नुहोस्';

  @override
  String get shop => 'पसल';

  @override
  String get shopCustomization => 'पसल र अनुकूलन';

  @override
  String get sound => 'ध्वनि';

  @override
  String get south => 'दक्षिण';

  @override
  String get southeast => 'दक्षिण-पूर्व';

  @override
  String get southwest => 'दक्षिण-पश्चिम';

  @override
  String get specialOccasionsAndMore => 'विशेष अवसर र थप धेरै';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'प्रोडक्सन लिस्टिङ तयार भएपछि स्टोर रेटिङ जोडिनेछ।';

  @override
  String get subhanallahiWaBihamdihi => 'सुब्हानल्लाहि व बिहम्दिही';

  @override
  String get subhanallahilAzim => 'सुब्हानल्लाहिल अजीम';

  @override
  String get sunset => 'सूर्यास्त';

  @override
  String get supportQuranProOnTheStore =>
      'स्टोरमा Quran Pro लाई सहयोग गर्नुहोस्';

  @override
  String get surah => 'सुरा';

  @override
  String get tasbih => 'तस्बिह';

  @override
  String get tasbihSettings => 'तस्बिह सेटिङ';

  @override
  String get tellUsWhatToImprove => 'के सुधार्ने भन्नुहोस्';

  @override
  String get termsOfUse => 'प्रयोगका सर्तहरू';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro प्रयोग गर्नुभएकोमा धन्यवाद। प्रोडक्सन स्टोर लिस्टिङ तयार भएपछि स्टोर रेटिङ जोडिनेछ।';

  @override
  String get thereIsNoDeityExceptAllah => 'अल्लाहबाहेक कुनै पूज्य छैन';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'अल्लाहविना कुनै शक्ति र सामर्थ्य छैन';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'यसले हामीलाई सम्झना मिलाउन र तपाईंको प्रगति हेर्न मद्दत गर्छ।';

  @override
  String get tigerSEye => 'बाघको आँखा';

  @override
  String get today => 'आज';

  @override
  String get total => 'जम्मा';

  @override
  String get totalHasanat => 'जम्मा हसनात';

  @override
  String get trackProgress => 'प्रगति हेर्नुहोस्';

  @override
  String get trackYourReadingAndAchievements =>
      'आफ्नो पठन र उपलब्धि हेर्नुहोस्।';

  @override
  String get tryAgain => 'फेरि प्रयास गर्नुहोस्';

  @override
  String get undo => 'पूर्ववत्';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'एपका सबै थिम र अनुकूलन अनलक गर्नुहोस्';

  @override
  String get usageGuidelines => 'प्रयोग निर्देशिका';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro लाई आदरपूर्वक व्यक्तिगत इबादत, सिकाइ र दैनिक इस्लामी दिनचर्याका लागि प्रयोग गर्नुहोस्।';

  @override
  String get viewAll => 'सबै हेर्नुहोस्';

  @override
  String get w => 'प';

  @override
  String get welcome => 'स्वागत छ';

  @override
  String get west => 'पश्चिम';

  @override
  String get yaHayyuYaQayyum => 'या हय्यु या कय्यूम';

  @override
  String get youReAllSet => 'सबै तयार छ!';

  @override
  String get yourProgress => 'तपाईंको प्रगति';

  @override
  String get continueLabel => 'जारी राख्नुहोस्';

  @override
  String get amethyst => 'अमेथिस्ट';

  @override
  String get indonesian => 'इन्डोनेसियाली';

  @override
  String get turkish => 'तुर्की';

  @override
  String get vietnamese => 'भियतनामी';

  @override
  String get turquoise => 'फिरोजा';

  @override
  String get wood => 'काठ';

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
