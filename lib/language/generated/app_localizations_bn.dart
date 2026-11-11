// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get week => 'সপ্তাহ';

  @override
  String get month => 'মাস';

  @override
  String get lifetime => 'সর্বকাল';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'কাজ থেকে একটু বিরতি নিন, আল্লাহর জন্য সময় দিন।';

  @override
  String get prayerAlarmDefaultName => 'নামাজ';

  @override
  String productUnavailable(Object id) {
    return '$id পণ্যটি কেনার জন্য পাওয়া যাচ্ছে না।';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId সফলভাবে কেনা হয়েছে!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId এর ক্রয় পুনরুদ্ধার হয়েছে!';
  }

  @override
  String daysCount(Object count) {
    return '$count দিন';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'আসছে: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'মক্কার দূরত্ব: $distance কিমি';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes মিনিট পরে মনে করিয়ে দিন';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName নামাজের সময় হয়েছে';
  }

  @override
  String roundValue(Object round) {
    return 'রাউন্ড: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language নির্বাচিত হয়েছে';
  }

  @override
  String juzNumber(Object juz) {
    return 'জুজ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'পৃষ্ঠা $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'হিজব $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: আয়াত $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count আয়াত';
  }

  @override
  String ayahNo(Object ayah) {
    return 'আয়াত নং: $ayah';
  }

  @override
  String readingProgressAyahCount(Object current, Object total) {
    return '$current / $total আয়াত';
  }

  @override
  String get selectSurah => 'সূরা নির্বাচন করুন';

  @override
  String get meccan => 'মাক্কী';

  @override
  String get medinan => 'মাদানী';

  @override
  String levelNumber(Object level) {
    return 'লেভেল $level';
  }

  @override
  String get surahAlBaqarah2238 => '(সূরা আল-বাকারা 2:238)';

  @override
  String get text1juz => '1 জুজ';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 পৃষ্ঠা';

  @override
  String get text100dhikr => '100 জিকির';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 পৃষ্ঠা';

  @override
  String get text28cclearsky => '28°C - পরিষ্কার আকাশ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 পৃষ্ঠা';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get aboutQuranPro => 'Quran Pro সম্পর্কে';

  @override
  String get activity => 'কার্যক্রম';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'বিজ্ঞাপন লোড হচ্ছে। একটু পরে আবার চেষ্টা করুন।';

  @override
  String get addCustomDhikr => 'নিজের জিকির যোগ করুন';

  @override
  String get addCustomDhikr2 => 'নিজের জিকির যোগ করুন';

  @override
  String get addDhikr => 'জিকির যোগ করুন';

  @override
  String get adjustPosition => 'অবস্থান ঠিক করুন';

  @override
  String get afternoon => 'বিকাল';

  @override
  String get alMasjidAlHaram => 'মসজিদুল হারাম';

  @override
  String get alhamdulillahiRabbilAlamin => 'আলহামদুলিল্লাহি রাব্বিল আলামিন';

  @override
  String get alignedToQibla => 'কিবলার দিকে সোজা';

  @override
  String get allPraiseIsDueToAllah => 'সমস্ত প্রশংসা আল্লাহর জন্য';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'ছাড়ের দামে সব প্রিমিয়াম সুবিধা';

  @override
  String get allInOneQuranApp => 'সব-এক-সাথে কুরআন অ্যাপ';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'আল্লাহই আমার জন্য যথেষ্ট; তিনি ছাড়া কোনো ইলাহ নেই';

  @override
  String get allahIsTheGreatest => 'আল্লাহ সবচেয়ে মহান';

  @override
  String get allahuAkbar => 'আল্লাহু আকবার';

  @override
  String get allahummaSalliAlaMuhammad => 'আল্লাহুম্মা সাল্লি আলা মুহাম্মাদ';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'লোকেশনের অনুমতি দিন, অথবা বিকল্প সময়সূচি ব্যবহার করতে আবার চেষ্টা করুন চাপুন।';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'নামাজের সময় ও দৈনিক রিমাইন্ডার পেতে নোটিফিকেশন চালু করুন।';

  @override
  String get allowTheAppToRunInTheBackground =>
      'অ্যাপটিকে ব্যাকগ্রাউন্ডে চলার অনুমতি দিন';

  @override
  String get app => 'অ্যাপ';

  @override
  String get arabic => 'আরবি';

  @override
  String get asr => 'আসর';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'আউযু বিল্লাহি মিনাশ শাইতানির রাজিম';

  @override
  String get avg => 'গড়';

  @override
  String get ayah => 'আয়াত';

  @override
  String get batteryOptimization => 'ব্যাটারি অপটিমাইজেশন';

  @override
  String get beautifulWidgets => 'সুন্দর উইজেট';

  @override
  String get bestValue => 'সেরা অফার';

  @override
  String get blackOnyx => 'কালো অনিক্স';

  @override
  String get bookmarks => 'বুকমার্ক';

  @override
  String get brightIvoryInterface => 'উজ্জ্বল আইভরি ইন্টারফেস';

  @override
  String get calculatingDistance => 'দূরত্ব হিসাব করা হচ্ছে...';

  @override
  String get calibrateYourDirection => 'আপনার দিক ক্যালিব্রেট করুন';

  @override
  String get cancel => 'বাতিল';

  @override
  String get change => 'পরিবর্তন';

  @override
  String get changeTasbihMode => 'তাসবিহ মোড পরিবর্তন করবেন?';

  @override
  String get chooseDhikr => 'জিকির বেছে নিন';

  @override
  String get chooseDisplayLanguage => 'প্রদর্শনের ভাষা বেছে নিন';

  @override
  String get chooseTheme => 'থিম বেছে নিন';

  @override
  String get chooseYourPreferredLanguage => 'আপনার পছন্দের ভাষা বেছে নিন';

  @override
  String get clickOrSwipeToCount => 'গুনতে ট্যাপ করুন বা সোয়াইপ করুন';

  @override
  String get close => 'বন্ধ';

  @override
  String get closeCustomGoal => 'নিজের লক্ষ্য বন্ধ করুন';

  @override
  String get completeAtLeast33Dhikr => 'কমপক্ষে 33 জিকির সম্পূর্ণ করুন';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'আপনার হৃদয়কে পবিত্র কুরআনের সাথে যুক্ত করুন।';

  @override
  String get continueReading => 'পড়া চালিয়ে যান';

  @override
  String get countsPerRound => 'প্রতি রাউন্ডে গণনা';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'নিপুণভাবে গড়া আধ্যাত্মিক রত্ন দিয়ে আপনার সংগ্রহ সাজান।';

  @override
  String get current => 'বর্তমান';

  @override
  String get current2 => 'বর্তমান';

  @override
  String get currentLocationToMecca => 'বর্তমান অবস্থান থেকে মক্কা';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'নতুন মোডের জন্য বর্তমান অগ্রগতি রিসেট হবে।';

  @override
  String get currentStreak => 'বর্তমান ধারা';

  @override
  String get custom => 'নিজের মতো';

  @override
  String get customDhikr => 'নিজের জিকির';

  @override
  String get customGoal => 'নিজের লক্ষ্য';

  @override
  String get customPrayerSounds => 'পছন্দমতো আজানের শব্দ';

  @override
  String get dailyGoal => 'দৈনিক লক্ষ্য';

  @override
  String get dailyQuests => 'দৈনিক কাজ';

  @override
  String get dailyQuranReminder => 'দৈনিক কুরআন রিমাইন্ডার';

  @override
  String get dailyReminders => 'দৈনিক রিমাইন্ডার';

  @override
  String get dailyTasbih => 'দৈনিক তাসবিহ';

  @override
  String get dark => 'ডার্ক';

  @override
  String get dawn => 'ভোর';

  @override
  String get debug => 'ডিবাগ';

  @override
  String get dhikr => 'জিকির';

  @override
  String get dhikrActivity => 'জিকির কার্যক্রম';

  @override
  String get dhuAlHijjah => 'জিলহজ';

  @override
  String get dhuAlQadah => 'জিলকদ';

  @override
  String get dhuhr => 'যোহর';

  @override
  String get direction => 'দিক';

  @override
  String get disableBatteryOptimization => 'ব্যাটারি অপটিমাইজেশন বন্ধ করুন';

  @override
  String get disableOptimization => 'অপটিমাইজেশন বন্ধ করুন';

  @override
  String get distance => 'দূরত্ব';

  @override
  String get e => 'পূ';

  @override
  String get eGHasbunallah => 'যেমন: হাসবুনাল্লাহ';

  @override
  String get east => 'পূর্ব';

  @override
  String get enableAutoStart => 'অটো-স্টার্ট চালু করুন';

  @override
  String get enableNotifications => 'নোটিফিকেশন চালু করুন';

  @override
  String get enableReminders => 'রিমাইন্ডার চালু করুন';

  @override
  String get english => 'ইংরেজি';

  @override
  String get enterYourName => 'আপনার নাম লিখুন';

  @override
  String get equipped => 'ব্যবহৃত হচ্ছে';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'উন্নত কুরআন অভিজ্ঞতার জন্য যা যা দরকার, সবই।';

  @override
  String get fajr => 'ফজর';

  @override
  String get feedback => 'মতামত';

  @override
  String get first => 'প্রথম';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'সবচেয়ে নির্ভুল ফলাফলের জন্য ফোনটি সমতল রাখুন এবং চুম্বকীয় জিনিস থেকে দূরে রাখুন।';

  @override
  String get free => 'ফ্রি';

  @override
  String get fullBundle => 'সম্পূর্ণ বান্ডেল';

  @override
  String get getAnAdFreeExperienceForever =>
      'চিরকালের জন্য বিজ্ঞাপনমুক্ত অভিজ্ঞতা নিন';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'পড়ার কথা মনে করিয়ে দেওয়া হবে, নিয়মিত থাকুন।';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get gloryAndPraiseBeToAllah => 'আল্লাহর পবিত্রতা ও প্রশংসা';

  @override
  String get gloryBeToAllah => 'আল্লাহ পবিত্র';

  @override
  String get gloryBeToAllahTheMagnificent => 'মহান আল্লাহ পবিত্র';

  @override
  String get goToHome => 'হোমে যান';

  @override
  String get goldenEngraved => 'সোনালি খোদাই';

  @override
  String get greenJade => 'সবুজ জেড';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'হ্যানয়, ভিয়েতনাম';

  @override
  String get haptic => 'কম্পন';

  @override
  String get hasanatHub => 'হাসানাত কেন্দ্র';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa =>
      'হাসবিয়াল্লাহু লা ইলাহা ইল্লা হুয়া';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'হোম';

  @override
  String get howYourDataIsHandled => 'আপনার তথ্য কীভাবে ব্যবহার হয়';

  @override
  String get iSeekForgivenessFromAllah => 'আমি আল্লাহর কাছে ক্ষমা চাই';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'আমি বিতাড়িত শয়তান থেকে আল্লাহর আশ্রয় চাই';

  @override
  String get immediateAlerts => 'তাৎক্ষণিক সতর্কবার্তা';

  @override
  String get inTheNameOfAllah => 'আল্লাহর নামে';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'নিশ্চয়ই আমরা আল্লাহর, আর তাঁরই কাছে ফিরে যাব';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'ইন্না লিল্লাহি ওয়া ইন্না ইলাইহি রাজিউন';

  @override
  String get isha => 'এশা';

  @override
  String get jumadaAlAwwal => 'জমাদিউল আউয়াল';

  @override
  String get jumadaAlThani => 'জমাদিউস সানি';

  @override
  String get juz => 'জুজ';

  @override
  String get juz2 => 'জুজ';

  @override
  String get keepAdhanAlarmsReliable => 'আজানের অ্যালার্ম নির্ভরযোগ্য রাখুন';

  @override
  String get keepItUpYouReDoingGreat => 'চালিয়ে যান! আপনি দারুণ করছেন।';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'অ্যাপ বন্ধ থাকলেও আজান নির্ভরযোগ্য রাখুন।';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'লা হাওলা ওয়ালা কুওয়াতা ইল্লা বিল্লাহ';

  @override
  String get laIlahaIllallah => 'লা ইলাহা ইল্লাল্লাহ';

  @override
  String get language => 'ভাষা';

  @override
  String get lapisLazuli => 'ল্যাপিস লাজুলি';

  @override
  String get last7Days => 'গত 7 দিন';

  @override
  String get later => 'পরে';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'কুরআনের সাথে আপনার সুন্দর যাত্রা শুরু করা যাক।';

  @override
  String get letSPersonalizeYourExperience =>
      'চলুন আপনার অভিজ্ঞতা\nসাজিয়ে নিই';

  @override
  String get light => 'লাইট';

  @override
  String get lightMode => 'লাইট মোড';

  @override
  String get listenToOrReadAnyAyahToday => 'আজ যেকোনো আয়াত পড়ুন বা শুনুন';

  @override
  String get locating => 'অবস্থান খোঁজা হচ্ছে...';

  @override
  String get location => 'অবস্থান';

  @override
  String get locationPermissionsAreDenied => 'লোকেশনের অনুমতি দেওয়া হয়নি';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'লোকেশনের অনুমতি স্থায়ীভাবে বন্ধ করা আছে।';

  @override
  String get locationServicesAreDisabled => 'লোকেশন সার্ভিস বন্ধ আছে।';

  @override
  String get longestStreak => 'দীর্ঘতম ধারা';

  @override
  String get maghrib => 'মাগরিব';

  @override
  String get maybeLater => 'পরে দেখব';

  @override
  String get meccaSaudiArabia => 'মক্কা, সৌদি আরব';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'হে আমার রব, ক্ষমা করুন ও দয়া করুন';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'হে আমার রব, আপনি যে কল্যাণ নাজিল করেন আমি তার মুখাপেক্ষী';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'হে আমার রব, আমার জ্ঞান বাড়িয়ে দিন';

  @override
  String get myLordMakeItEasyAndDoNot => 'হে আমার রব, সহজ করুন, কঠিন করবেন না';

  @override
  String get n => 'উ';

  @override
  String get nameOptional => 'নাম (ঐচ্ছিক)';

  @override
  String get next => 'পরবর্তী';

  @override
  String get nextDhikr => 'পরবর্তী জিকির';

  @override
  String get nextPrayer => 'পরবর্তী নামাজ';

  @override
  String get night => 'রাত';

  @override
  String get nightEmeraldInterface => 'রাতের পান্না ইন্টারফেস';

  @override
  String get noBookmarksYet => 'এখনো কোনো বুকমার্ক নেই';

  @override
  String get noon => 'দুপুর';

  @override
  String get north => 'উত্তর';

  @override
  String get northeast => 'উত্তর-পূর্ব';

  @override
  String get northwest => 'উত্তর-পশ্চিম';

  @override
  String get notificationsAlarm => 'নোটিফিকেশন ও অ্যালার্ম';

  @override
  String get notificationsForPrayerTimes => 'নামাজের সময়ের নোটিফিকেশন';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'হে আল্লাহ, মুহাম্মাদের উপর রহমত বর্ষণ করুন';

  @override
  String get oEverLivingOSustainer => 'হে চিরঞ্জীব, হে চিরস্থায়ী ধারক';

  @override
  String get openAutoStart => 'অটো-স্টার্ট খুলুন';

  @override
  String get optimizeAdhanPerformance => 'আজানের পারফরম্যান্স উন্নত করুন';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'হে আমাদের রব, আমাদের দুনিয়ায় কল্যাণ দিন';

  @override
  String get page => 'পৃষ্ঠা';

  @override
  String get pearl => 'মুক্তা';

  @override
  String get personalizeYourAdhanNotifications =>
      'আজানের নোটিফিকেশন নিজের মতো সাজান';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'সমস্ত প্রশংসা আল্লাহর, যিনি সকল জগতের রব';

  @override
  String get prayerAlarms => 'নামাজের অ্যালার্ম';

  @override
  String get prayerSchedule => 'নামাজের সময়সূচি';

  @override
  String get prayerTimeNotifications => 'নামাজের সময়ের নোটিফিকেশন';

  @override
  String get prayerTimesAreLoading => 'নামাজের সময় লোড হচ্ছে';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'নামাজের সময়, কিবলা, কুরআন পড়া ও তাসবিহ — সব একসাথে, প্রতিদিনের সঙ্গী।';

  @override
  String get prayerQuranQibla => 'নামাজ • কুরআন • কিবলা';

  @override
  String get premiumThemes => 'প্রিমিয়াম থিম';

  @override
  String get preparingYourSpiritualJourney =>
      'আপনার আধ্যাত্মিক যাত্রা প্রস্তুত হচ্ছে...';

  @override
  String get previousDhikr => 'আগের জিকির';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get qibla => 'কিবলা';

  @override
  String get qiblaFinder => 'কিবলা নির্ণয়';

  @override
  String get qiblaMap => 'কিবলা মানচিত্র';

  @override
  String get quran => 'কুরআন';

  @override
  String get quranPlayback => 'কুরআন প্লেব্যাক';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro নামাজের সময়, কিবলা, কুরআন পড়া ও তাসবিহ একসাথে এনে দেয় আপনার প্রতিদিনের সহজ সঙ্গী হিসেবে।';

  @override
  String get quranProPreferences => 'Quran Pro পছন্দসমূহ';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro আপনার শুরুর সেটিংস ও অগ্রগতি এই ডিভাইসেই সংরক্ষণ করে। স্থিতিশীলতা ও মান উন্নত করতে অ্যানালিটিক্স ব্যবহার হতে পারে।';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro আপনার তাসবিহর অগ্রগতি এই ডিভাইসেই সংরক্ষণ করে। অ্যাপের স্থিতিশীলতা ও মান উন্নত করতে অ্যানালিটিক্স ব্যবহার হতে পারে।';

  @override
  String get quranRecitation => 'কুরআন তিলাওয়াত';

  @override
  String get rabbanaAtinaFidDunyaHasanah =>
      'রাব্বানা আতিনা ফিদ্দুনইয়া হাসানাহ';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'রাব্বি ইন্নি লিমা আনযালতা ইলাইয়্যা মিন খাইরিন ফাকির';

  @override
  String get rabbiYassirWaLaTuassir => 'রাব্বি ইয়াস্‌সির ওয়ালা তুআস্‌সির';

  @override
  String get rabbiZidniIlma => 'রাব্বি যিদনি ইলমা';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'রাব্বিগফির ওয়ারহাম ওয়া আনতা খাইরুর রাহিমিন';

  @override
  String get rabiAlAwwal => 'রবিউল আউয়াল';

  @override
  String get rabiAlThani => 'রবিউস সানি';

  @override
  String get rateApp => 'অ্যাপ রেট করুন';

  @override
  String get rateQuranPro => 'Quran Pro রেট করুন';

  @override
  String get readListen => 'পড়ুন ও শুনুন';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'সুন্দর তিলাওয়াতের সাথে কুরআন পড়ুন।';

  @override
  String get recent => 'সাম্প্রতিক';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo ও Huawei-এর জন্য সুপারিশকৃত';

  @override
  String get redCarnelian => 'লাল কার্নেলিয়ান';

  @override
  String get remindMeAt => 'মনে করিয়ে দিন';

  @override
  String get removeAds => 'বিজ্ঞাপন সরান';

  @override
  String get requestingLocationPermission => 'লোকেশনের অনুমতি চাওয়া হচ্ছে...';

  @override
  String get reset => 'রিসেট';

  @override
  String get retry => 'আবার চেষ্টা';

  @override
  String get returnToCompass => 'কম্পাসে ফিরুন';

  @override
  String get s => 'দ';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get saveGoal => 'লক্ষ্য সংরক্ষণ';

  @override
  String get searchSurahNumberArabic => 'সূরা, নম্বর, আরবি খুঁজুন...';

  @override
  String get searchSurah => 'সূরা খুঁজুন...';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন';

  @override
  String get selectTheThemeYouLike => 'আপনার পছন্দের থিম বেছে নিন';

  @override
  String get selectYourBead => 'আপনার তাসবিহ দানা বেছে নিন';

  @override
  String get shop => 'শপ';

  @override
  String get shopCustomization => 'শপ ও কাস্টমাইজেশন';

  @override
  String get sound => 'শব্দ';

  @override
  String get south => 'দক্ষিণ';

  @override
  String get southeast => 'দক্ষিণ-পূর্ব';

  @override
  String get southwest => 'দক্ষিণ-পশ্চিম';

  @override
  String get specialOccasionsAndMore => 'বিশেষ উপলক্ষ ও আরও অনেক কিছু';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'প্রোডাকশন লিস্টিং প্রস্তুত হলে স্টোর রেটিং যুক্ত করা হবে।';

  @override
  String get subhanallahiWaBihamdihi => 'সুবহানাল্লাহি ওয়া বিহামদিহি';

  @override
  String get subhanallahilAzim => 'সুবহানাল্লাহিল আজিম';

  @override
  String get sunset => 'সূর্যাস্ত';

  @override
  String get supportQuranProOnTheStore => 'স্টোরে Quran Pro-কে সমর্থন করুন';

  @override
  String get surah => 'সূরা';

  @override
  String get tasbih => 'তাসবিহ';

  @override
  String get tasbihSettings => 'তাসবিহ সেটিংস';

  @override
  String get tellUsWhatToImprove => 'কী উন্নত করব জানান';

  @override
  String get termsOfUse => 'ব্যবহারের শর্তাবলি';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro ব্যবহারের জন্য ধন্যবাদ। প্রোডাকশন স্টোর লিস্টিং প্রস্তুত হলে স্টোর রেটিং যুক্ত করা হবে।';

  @override
  String get thereIsNoDeityExceptAllah => 'আল্লাহ ছাড়া কোনো ইলাহ নেই';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'আল্লাহর সাহায্য ছাড়া কোনো শক্তি বা ক্ষমতা নেই';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'এতে আমরা রিমাইন্ডার সাজাতে ও আপনার অগ্রগতি দেখতে পারি।';

  @override
  String get tigerSEye => 'টাইগার্স আই';

  @override
  String get today => 'আজ';

  @override
  String get total => 'মোট';

  @override
  String get totalHasanat => 'মোট হাসানাত';

  @override
  String get trackProgress => 'অগ্রগতি দেখুন';

  @override
  String get trackYourReadingAndAchievements => 'আপনার পড়া ও অর্জন দেখে নিন।';

  @override
  String get tryAgain => 'আবার চেষ্টা করুন';

  @override
  String get undo => 'ফিরিয়ে আনুন';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'অ্যাপের সব থিম ও কাস্টমাইজেশন আনলক করুন';

  @override
  String get usageGuidelines => 'ব্যবহারের নির্দেশনা';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'ব্যক্তিগত ইবাদত, শেখা ও প্রতিদিনের ইসলামি রুটিনের জন্য Quran Pro শ্রদ্ধার সাথে ব্যবহার করুন।';

  @override
  String get viewAll => 'সব দেখুন';

  @override
  String get w => 'প';

  @override
  String get welcome => 'স্বাগতম';

  @override
  String get west => 'পশ্চিম';

  @override
  String get yaHayyuYaQayyum => 'ইয়া হাইয়্যু ইয়া কাইয়্যুম';

  @override
  String get youReAllSet => 'সব প্রস্তুত!';

  @override
  String get yourProgress => 'আপনার অগ্রগতি';

  @override
  String get continueLabel => 'চালিয়ে যান';

  @override
  String get amethyst => 'অ্যামেথিস্ট';

  @override
  String get indonesian => 'ইন্দোনেশিয়ান';

  @override
  String get turkish => 'তুর্কি';

  @override
  String get vietnamese => 'ভিয়েতনামি';

  @override
  String get turquoise => 'ফিরোজা';

  @override
  String get wood => 'কাঠ';

  @override
  String get left => 'বাকি';

  @override
  String get stayInspiredOnYourHomeScreen =>
      'আপনার হোম স্ক্রিনে অনুপ্রাণিত থাকুন।';

  @override
  String get settings => 'সেটিংস';

  @override
  String get rounds => 'রাউন্ড';

  @override
  String get prayerRemindersFullScreenAlarm =>
      'নামাজের রিমাইন্ডার এবং ফুল-স্ক্রিন অ্যালার্ম';

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
  String get estimatedLocation => 'আনুমানিক অবস্থান';
}
