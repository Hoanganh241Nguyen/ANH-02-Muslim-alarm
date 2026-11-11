// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get week => 'सप्ताह';

  @override
  String get month => 'महीना';

  @override
  String get lifetime => 'कुल';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'अपने काम से थोड़ा रुकिए और अल्लाह के लिए वक़्त निकालिए।';

  @override
  String get prayerAlarmDefaultName => 'नमाज़';

  @override
  String productUnavailable(Object id) {
    return 'प्रोडक्ट $id ख़रीद के लिए उपलब्ध नहीं है।';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId की ख़रीद कामयाब रही!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId की ख़रीद बहाल हो गई!';
  }

  @override
  String daysCount(Object count) {
    return '$count दिन';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'आने वाली नमाज़: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'मक्का से दूरी: $distance किमी';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes मिनट बाद याद दिलाएँ';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName की नमाज़ का वक़्त हो गया है';
  }

  @override
  String roundValue(Object round) {
    return 'राउंड: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language चुनी गई';
  }

  @override
  String juzNumber(Object juz) {
    return 'जुज़ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'पेज $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'हिज़्ब $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: आयत $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count आयतें';
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
    return 'लेवल $level';
  }

  @override
  String get surahAlBaqarah2238 => '(सूरह अल-बक़रह 2:238)';

  @override
  String get text1juz => '1 जुज़';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 पेज';

  @override
  String get text100dhikr => '100 ज़िक्र';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 पेज';

  @override
  String get text28cclearsky => '28°C - साफ़ आसमान';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 पेज';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'परिचय';

  @override
  String get aboutQuranPro => 'Quran Pro के बारे में';

  @override
  String get activity => 'गतिविधि';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'विज्ञापन लोड हो रहा है। थोड़ी देर बाद कोशिश करें।';

  @override
  String get addCustomDhikr => 'अपना ज़िक्र जोड़ें';

  @override
  String get addCustomDhikr2 => 'अपना ज़िक्र जोड़ें';

  @override
  String get addDhikr => 'ज़िक्र जोड़ें';

  @override
  String get adjustPosition => 'पोज़िशन ठीक करें';

  @override
  String get afternoon => 'दोपहर बाद';

  @override
  String get alMasjidAlHaram => 'अल-मस्जिद अल-हराम';

  @override
  String get alhamdulillahiRabbilAlamin => 'अल्हम्दुलिल्लाहि रब्बिल आलमीन';

  @override
  String get alignedToQibla => 'क़िबला की सीध में';

  @override
  String get allPraiseIsDueToAllah => 'सारी तारीफ़ अल्लाह के लिए है';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'सभी प्रीमियम फ़ीचर रियायती क़ीमत पर';

  @override
  String get allInOneQuranApp => 'ऑल-इन-वन क़ुरआन ऐप';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'अल्लाह मेरे लिए काफ़ी है; उसके सिवा कोई माबूद नहीं';

  @override
  String get allahIsTheGreatest => 'अल्लाह सबसे बड़ा है';

  @override
  String get allahuAkbar => 'अल्लाहु अकबर';

  @override
  String get allahummaSalliAlaMuhammad => 'अल्लाहुम्मा सल्लि अला मुहम्मद';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'लोकेशन की अनुमति दें या फ़ॉलबैक शेड्यूल इस्तेमाल करने के लिए दोबारा कोशिश करें पर टैप करें।';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'नमाज़ के अवक़ात और रोज़ाना रिमाइंडर पाने के लिए नोटिफ़िकेशन की अनुमति दें।';

  @override
  String get allowTheAppToRunInTheBackground => 'ऐप को बैकग्राउंड में चलने दें';

  @override
  String get app => 'ऐप';

  @override
  String get arabic => 'अरबी';

  @override
  String get asr => 'अस्र';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'अऊज़ु बिल्लाहि मिनश-शैतानिर रजीम';

  @override
  String get avg => 'औसत';

  @override
  String get ayah => 'आयत';

  @override
  String get batteryOptimization => 'बैटरी ऑप्टिमाइज़ेशन';

  @override
  String get beautifulWidgets => 'ख़ूबसूरत विजेट';

  @override
  String get bestValue => 'सबसे किफ़ायती';

  @override
  String get blackOnyx => 'काला ओनिक्स';

  @override
  String get bookmarks => 'बुकमार्क';

  @override
  String get brightIvoryInterface => 'चमकीला आइवरी इंटरफ़ेस';

  @override
  String get calculatingDistance => 'दूरी का हिसाब लगाया जा रहा है...';

  @override
  String get calibrateYourDirection => 'अपनी दिशा कैलिब्रेट करें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get change => 'बदलें';

  @override
  String get changeTasbihMode => 'तस्बीह मोड बदलें?';

  @override
  String get chooseDhikr => 'ज़िक्र चुनें';

  @override
  String get chooseDisplayLanguage => 'डिस्प्ले भाषा चुनें';

  @override
  String get chooseTheme => 'थीम चुनें';

  @override
  String get chooseYourPreferredLanguage => 'अपनी पसंदीदा भाषा चुनें';

  @override
  String get clickOrSwipeToCount => 'गिनने के लिए टैप या स्वाइप करें';

  @override
  String get close => 'बंद करें';

  @override
  String get closeCustomGoal => 'कस्टम लक्ष्य बंद करें';

  @override
  String get completeAtLeast33Dhikr => 'कम से कम 33 ज़िक्र पूरे करें';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'अपने दिल को क़ुरआन-ए-पाक से जोड़ें।';

  @override
  String get continueReading => 'पढ़ना जारी रखें';

  @override
  String get countsPerRound => 'हर राउंड में गिनती';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'बेहतरीन कारीगरी वाले रूहानी नगीनों से अपना कलेक्शन सजाएँ।';

  @override
  String get current => 'मौजूदा';

  @override
  String get current2 => 'मौजूदा';

  @override
  String get currentLocationToMecca => 'मौजूदा जगह से मक्का तक';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'नए मोड के लिए मौजूदा प्रगति रीसेट हो जाएगी।';

  @override
  String get currentStreak => 'मौजूदा स्ट्रीक';

  @override
  String get custom => 'कस्टम';

  @override
  String get customDhikr => 'अपना ज़िक्र';

  @override
  String get customGoal => 'कस्टम लक्ष्य';

  @override
  String get customPrayerSounds => 'नमाज़ की कस्टम आवाज़ें';

  @override
  String get dailyGoal => 'रोज़ाना का लक्ष्य';

  @override
  String get dailyQuests => 'रोज़ाना के मिशन';

  @override
  String get dailyQuranReminder => 'रोज़ाना क़ुरआन रिमाइंडर';

  @override
  String get dailyReminders => 'रोज़ाना रिमाइंडर';

  @override
  String get dailyTasbih => 'रोज़ाना तस्बीह';

  @override
  String get dark => 'डार्क';

  @override
  String get dawn => 'सहर';

  @override
  String get debug => 'डीबग';

  @override
  String get dhikr => 'ज़िक्र';

  @override
  String get dhikrActivity => 'ज़िक्र गतिविधि';

  @override
  String get dhuAlHijjah => 'ज़िल-हिज्जा';

  @override
  String get dhuAlQadah => 'ज़िल-क़ादा';

  @override
  String get dhuhr => 'ज़ुहर';

  @override
  String get direction => 'दिशा';

  @override
  String get disableBatteryOptimization => 'बैटरी ऑप्टिमाइज़ेशन बंद करें';

  @override
  String get disableOptimization => 'ऑप्टिमाइज़ेशन बंद करें';

  @override
  String get distance => 'दूरी';

  @override
  String get e => 'पू';

  @override
  String get eGHasbunallah => 'मसलन हस्बुनल्लाह';

  @override
  String get east => 'पूर्व';

  @override
  String get enableAutoStart => 'ऑटो-स्टार्ट चालू करें';

  @override
  String get enableNotifications => 'नोटिफ़िकेशन चालू करें';

  @override
  String get enableReminders => 'रिमाइंडर चालू करें';

  @override
  String get english => 'अंग्रेज़ी';

  @override
  String get enterYourName => 'अपना नाम लिखें';

  @override
  String get equipped => 'इस्तेमाल में';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'बेहतर क़ुरआन तजरबे के लिए हर ज़रूरी चीज़।';

  @override
  String get fajr => 'फ़ज्र';

  @override
  String get feedback => 'फ़ीडबैक';

  @override
  String get first => 'पहला';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'सबसे सही नतीजों के लिए फ़ोन को समतल और चुम्बकीय चीज़ों से दूर रखें।';

  @override
  String get free => 'मुफ़्त';

  @override
  String get fullBundle => 'पूरा बंडल';

  @override
  String get getAnAdFreeExperienceForever =>
      'हमेशा के लिए विज्ञापन-मुक्त तजरबा पाएँ';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'पढ़ने की याद पाएँ और पाबंदी बनाए रखें।';

  @override
  String get getStarted => 'शुरू करें';

  @override
  String get gloryAndPraiseBeToAllah =>
      'अल्लाह पाक है और सारी तारीफ़ उसी के लिए है';

  @override
  String get gloryBeToAllah => 'अल्लाह पाक है';

  @override
  String get gloryBeToAllahTheMagnificent => 'अल्लाह पाक है, जो अज़मत वाला है';

  @override
  String get goToHome => 'होम पर जाएँ';

  @override
  String get goldenEngraved => 'सुनहरी नक़्क़ाशी';

  @override
  String get greenJade => 'हरा जेड';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'हनोई, वियतनाम';

  @override
  String get haptic => 'कंपन';

  @override
  String get hasanatHub => 'हसनात केंद्र';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'हस्बियल्लाहु ला इलाहा इल्ला हुवा';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'होम';

  @override
  String get howYourDataIsHandled => 'आपका डेटा कैसे इस्तेमाल होता है';

  @override
  String get iSeekForgivenessFromAllah => 'मैं अल्लाह से मग़फ़िरत माँगता हूँ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'मैं मरदूद शैतान से अल्लाह की पनाह माँगता हूँ';

  @override
  String get immediateAlerts => 'फ़ौरन अलर्ट';

  @override
  String get inTheNameOfAllah => 'अल्लाह के नाम से';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'बेशक हम अल्लाह के हैं और उसी की तरफ़ लौटना है';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'इन्ना लिल्लाहि व इन्ना इलैहि राजिऊन';

  @override
  String get isha => 'इशा';

  @override
  String get jumadaAlAwwal => 'जमादी-उल-अव्वल';

  @override
  String get jumadaAlThani => 'जमादी-उस-सानी';

  @override
  String get juz => 'जुज़';

  @override
  String get juz2 => 'जुज़';

  @override
  String get keepAdhanAlarmsReliable => 'अज़ान अलार्म भरोसेमंद बनाए रखें';

  @override
  String get keepItUpYouReDoingGreat =>
      'इसी तरह जारी रखें! आप बहुत अच्छा कर रहे हैं।';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'ऐप बंद होने पर भी अज़ान भरोसेमंद रखें।';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'ला हौला वला क़ुव्वता इल्ला बिल्लाह';

  @override
  String get laIlahaIllallah => 'ला इलाहा इल्लल्लाह';

  @override
  String get language => 'भाषा';

  @override
  String get lapisLazuli => 'लाजवर्द';

  @override
  String get last7Days => 'पिछले 7 दिन';

  @override
  String get later => 'बाद में';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'आइए क़ुरआन के साथ आपका ख़ूबसूरत सफ़र शुरू करें।';

  @override
  String get letSPersonalizeYourExperience =>
      'आइए आपका तजरबा\nआपके मुताबिक़ बनाएँ';

  @override
  String get light => 'लाइट';

  @override
  String get lightMode => 'लाइट मोड';

  @override
  String get listenToOrReadAnyAyahToday => 'आज कोई भी आयत सुनें या पढ़ें';

  @override
  String get locating => 'जगह पता की जा रही है...';

  @override
  String get location => 'लोकेशन';

  @override
  String get locationPermissionsAreDenied => 'लोकेशन की अनुमति नहीं दी गई';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'लोकेशन की अनुमति हमेशा के लिए बंद कर दी गई है।';

  @override
  String get locationServicesAreDisabled => 'लोकेशन सेवाएँ बंद हैं।';

  @override
  String get longestStreak => 'सबसे लंबी स्ट्रीक';

  @override
  String get maghrib => 'मग़रिब';

  @override
  String get maybeLater => 'फिर कभी';

  @override
  String get meccaSaudiArabia => 'मक्का, सऊदी अरब';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'ऐ मेरे रब, माफ़ फ़रमा और रहम फ़रमा';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'ऐ मेरे रब, तू जो भलाई नाज़िल करे मैं उसका मोहताज हूँ';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'ऐ मेरे रब, मेरे इल्म में इज़ाफ़ा फ़रमा';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'ऐ मेरे रब, आसान फ़रमा और मुश्किल न फ़रमा';

  @override
  String get n => 'उ';

  @override
  String get nameOptional => 'नाम (वैकल्पिक)';

  @override
  String get next => 'अगला';

  @override
  String get nextDhikr => 'अगला ज़िक्र';

  @override
  String get nextPrayer => 'अगली नमाज़';

  @override
  String get night => 'रात';

  @override
  String get nightEmeraldInterface => 'गहरा एमराल्ड इंटरफ़ेस';

  @override
  String get noBookmarksYet => 'अभी कोई बुकमार्क नहीं';

  @override
  String get noon => 'दोपहर';

  @override
  String get north => 'उत्तर';

  @override
  String get northeast => 'उत्तर-पूर्व';

  @override
  String get northwest => 'उत्तर-पश्चिम';

  @override
  String get notificationsAlarm => 'नोटिफ़िकेशन और अलार्म';

  @override
  String get notificationsForPrayerTimes => 'नमाज़ के अवक़ात के नोटिफ़िकेशन';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'ऐ अल्लाह, मुहम्मद पर दरूद भेज';

  @override
  String get oEverLivingOSustainer => 'ऐ ज़िंदा रहने वाले, ऐ क़ायम रखने वाले';

  @override
  String get openAutoStart => 'ऑटो-स्टार्ट खोलें';

  @override
  String get optimizeAdhanPerformance => 'अज़ान की परफ़ॉर्मेंस बेहतर करें';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'ऐ हमारे रब, हमें दुनिया में भलाई अता फ़रमा';

  @override
  String get page => 'पेज';

  @override
  String get pearl => 'मोती';

  @override
  String get personalizeYourAdhanNotifications =>
      'अज़ान के नोटिफ़िकेशन अपने मुताबिक़ बनाएँ';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'सारी तारीफ़ अल्लाह के लिए है, जो सारे जहानों का रब है';

  @override
  String get prayerAlarms => 'नमाज़ के अलार्म';

  @override
  String get prayerSchedule => 'नमाज़ का शेड्यूल';

  @override
  String get prayerTimeNotifications => 'नमाज़ के वक़्त के नोटिफ़िकेशन';

  @override
  String get prayerTimesAreLoading => 'नमाज़ के अवक़ात लोड हो रहे हैं';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'नमाज़ के अवक़ात, क़िबला, क़ुरआन की तिलावत और तस्बीह — सब एक रोज़ाना साथी में।';

  @override
  String get prayerQuranQibla => 'नमाज़ • क़ुरआन • क़िबला';

  @override
  String get premiumThemes => 'प्रीमियम थीम';

  @override
  String get preparingYourSpiritualJourney =>
      'आपका रूहानी सफ़र तैयार किया जा रहा है...';

  @override
  String get previousDhikr => 'पिछला ज़िक्र';

  @override
  String get privacyPolicy => 'प्राइवेसी पॉलिसी';

  @override
  String get qibla => 'क़िबला';

  @override
  String get qiblaFinder => 'क़िबला फ़ाइंडर';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'क़ुरआन';

  @override
  String get quranPlayback => 'क़ुरआन प्लेबैक';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro नमाज़ के अवक़ात, क़िबला, क़ुरआन की तिलावत और तस्बीह को एक आसान रोज़ाना साथी में लाता है।';

  @override
  String get quranProPreferences => 'Quran Pro की सेटिंग्स';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro ऑनबोर्डिंग और प्रगति से जुड़ी सेटिंग्स इसी डिवाइस पर सेव करता है। स्थिरता और क्वालिटी बेहतर करने के लिए एनालिटिक्स इस्तेमाल हो सकता है।';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro आपकी तस्बीह की प्रगति इसी डिवाइस पर सेव करता है। ऐप की स्थिरता और क्वालिटी बेहतर करने के लिए एनालिटिक्स इस्तेमाल हो सकता है।';

  @override
  String get quranRecitation => 'क़ुरआन की तिलावत';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'रब्बना आतिना फ़िद-दुनिया हसनह';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'रब्बि इन्नी लिमा अंज़ल्ता इलय्या मिन ख़ैरिन फ़क़ीर';

  @override
  String get rabbiYassirWaLaTuassir => 'रब्बि यस्सिर वला तुअस्सिर';

  @override
  String get rabbiZidniIlma => 'रब्बि ज़िदनी इल्मा';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'रब्बिग़्फ़िर वरहम व अन्ता ख़ैरुर राहिमीन';

  @override
  String get rabiAlAwwal => 'रबीउल अव्वल';

  @override
  String get rabiAlThani => 'रबीउस सानी';

  @override
  String get rateApp => 'ऐप को रेटिंग दें';

  @override
  String get rateQuranPro => 'Quran Pro को रेटिंग दें';

  @override
  String get readListen => 'पढ़ें और सुनें';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'ख़ूबसूरत तिलावत के साथ क़ुरआन पढ़ें।';

  @override
  String get recent => 'हाल ही में';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo और Huawei के लिए सुझाया गया';

  @override
  String get redCarnelian => 'लाल अक़ीक़';

  @override
  String get remindMeAt => 'इस वक़्त याद दिलाएँ';

  @override
  String get removeAds => 'विज्ञापन हटाएँ';

  @override
  String get requestingLocationPermission =>
      'लोकेशन की अनुमति माँगी जा रही है...';

  @override
  String get reset => 'रीसेट';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get returnToCompass => 'कम्पास पर वापस जाएँ';

  @override
  String get s => 'द';

  @override
  String get save => 'सहेजें';

  @override
  String get saveGoal => 'लक्ष्य सेव करें';

  @override
  String get searchSurahNumberArabic => 'सूरह, नंबर, अरबी खोजें...';

  @override
  String get searchSurah => 'सूरह खोजें...';

  @override
  String get selectLanguage => 'भाषा चुनें';

  @override
  String get selectTheThemeYouLike => 'अपनी पसंद की थीम चुनें';

  @override
  String get selectYourBead => 'अपना दाना चुनें';

  @override
  String get shop => 'दुकान';

  @override
  String get shopCustomization => 'शॉप और कस्टमाइज़ेशन';

  @override
  String get sound => 'आवाज़';

  @override
  String get south => 'दक्षिण';

  @override
  String get southeast => 'दक्षिण-पूर्व';

  @override
  String get southwest => 'दक्षिण-पश्चिम';

  @override
  String get specialOccasionsAndMore => 'ख़ास मौक़े और बहुत कुछ';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'प्रोडक्शन लिस्टिंग तैयार होने पर स्टोर रेटिंग जोड़ दी जाएगी।';

  @override
  String get subhanallahiWaBihamdihi => 'सुब्हानल्लाहि व बिहम्दिही';

  @override
  String get subhanallahilAzim => 'सुब्हानल्लाहिल अज़ीम';

  @override
  String get sunset => 'ग़ुरूब';

  @override
  String get supportQuranProOnTheStore => 'स्टोर पर Quran Pro का साथ दें';

  @override
  String get surah => 'सूरह';

  @override
  String get tasbih => 'तस्बीह';

  @override
  String get tasbihSettings => 'तस्बीह सेटिंग्स';

  @override
  String get tellUsWhatToImprove => 'बताइए क्या बेहतर करें';

  @override
  String get termsOfUse => 'इस्तेमाल की शर्तें';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro इस्तेमाल करने के लिए शुक्रिया। प्रोडक्शन स्टोर लिस्टिंग तैयार होने पर स्टोर रेटिंग जोड़ दी जाएगी।';

  @override
  String get thereIsNoDeityExceptAllah => 'अल्लाह के सिवा कोई माबूद नहीं';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'अल्लाह के सिवा न कोई ज़ोर है न ताक़त';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'इससे हम रिमाइंडर आपके मुताबिक़ बनाते हैं और आपकी प्रगति ट्रैक करते हैं।';

  @override
  String get tigerSEye => 'बाघ की आँख';

  @override
  String get today => 'आज';

  @override
  String get total => 'कुल';

  @override
  String get totalHasanat => 'कुल हसनात';

  @override
  String get trackProgress => 'प्रगति ट्रैक करें';

  @override
  String get trackYourReadingAndAchievements =>
      'अपनी तिलावत और उपलब्धियाँ ट्रैक करें।';

  @override
  String get tryAgain => 'फिर कोशिश करें';

  @override
  String get undo => 'वापस लें';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'ऐप की सभी थीम और कस्टमाइज़ेशन अनलॉक करें';

  @override
  String get usageGuidelines => 'इस्तेमाल के दिशानिर्देश';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro को अदब के साथ निजी इबादत, सीखने और रोज़ाना इस्लामी अमल के लिए इस्तेमाल करें।';

  @override
  String get viewAll => 'सभी देखें';

  @override
  String get w => 'प';

  @override
  String get welcome => 'स्वागत है';

  @override
  String get west => 'पश्चिम';

  @override
  String get yaHayyuYaQayyum => 'या हय्यु या क़य्यूम';

  @override
  String get youReAllSet => 'सब तैयार है!';

  @override
  String get yourProgress => 'आपकी प्रगति';

  @override
  String get continueLabel => 'जारी रखें';

  @override
  String get amethyst => 'जामुनिया';

  @override
  String get indonesian => 'इंडोनेशियाई';

  @override
  String get turkish => 'तुर्की';

  @override
  String get vietnamese => 'वियतनामी';

  @override
  String get turquoise => 'फ़िरोज़ा';

  @override
  String get wood => 'लकड़ी';

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
  String get estimatedLocation => 'अनुमानित स्थान';
}
