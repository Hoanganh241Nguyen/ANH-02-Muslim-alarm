// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Burmese (`my`).
class AppLocalizationsMy extends AppLocalizations {
  AppLocalizationsMy([String locale = 'my']) : super(locale);

  @override
  String get week => 'အပတ်';

  @override
  String get month => 'လ';

  @override
  String get lifetime => 'တစ်သက်တာ';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'အလုပ်ကို ခဏရပ်ပြီး အလ္လာဟ်အတွက် အချိန်ပေးပါ။';

  @override
  String get prayerAlarmDefaultName => 'ဆွလာသ်';

  @override
  String productUnavailable(Object id) {
    return 'ထုတ်ကုန် $id ကို ဝယ်ယူ၍ မရပါ။';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId ဝယ်ယူမှု အောင်မြင်ပါပြီ!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId ဝယ်ယူမှုကို ပြန်လည်ရယူပြီးပါပြီ!';
  }

  @override
  String daysCount(Object count) {
    return '$count ရက်';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'လာမည့်: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'မက္ကာသို့ အကွာအဝေး: $distance ကီလိုမီတာ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes မိနစ်အကြာတွင် သတိပေးပါ';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName ဆွလာသ် အချိန်ရောက်ပါပြီ';
  }

  @override
  String roundValue(Object round) {
    return 'အကြိမ်: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language ကို ရွေးထားသည်';
  }

  @override
  String juzNumber(Object juz) {
    return 'ဂျုဇ် $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'စာမျက်နှာ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ဟိဇ်ဗ် $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: အာယသ် $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return 'အာယသ် $count ခု';
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
    return 'အဆင့် $level';
  }

  @override
  String get surahAlBaqarah2238 => '(စူရာ အလ်-ဗကရာ 2:238)';

  @override
  String get text1juz => 'ဂျုဇ် 1';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => 'စာမျက်နှာ 10';

  @override
  String get text100dhikr => 'ဇိကရ် 100';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => 'စာမျက်နှာ 20';

  @override
  String get text28cclearsky => '28°C - ကောင်းကင်သာယာ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => 'စာမျက်နှာ 5';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'အကြောင်း';

  @override
  String get aboutQuranPro => 'Quran Pro အကြောင်း';

  @override
  String get activity => 'လှုပ်ရှားမှု';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'ကြော်ငြာ ဖွင့်နေသည်။ ခဏနေ ပြန်ကြိုးစားပါ။';

  @override
  String get addCustomDhikr => 'စိတ်ကြိုက် ဇိကရ် ထည့်ရန်';

  @override
  String get addCustomDhikr2 => 'စိတ်ကြိုက် ဇိကရ် ထည့်ရန်';

  @override
  String get addDhikr => 'ဇိကရ် ထည့်ရန်';

  @override
  String get adjustPosition => 'တည်နေရာ ချိန်ညှိရန်';

  @override
  String get afternoon => 'မွန်းလွဲ';

  @override
  String get alMasjidAlHaram => 'အလ်-မတ်စ်ဂျိဒ်လ် ဟရာမ်';

  @override
  String get alhamdulillahiRabbilAlamin => 'အလ်ဟမ်ဒုလိလ္လာဟိ ရဗ္ဗိလ် အာလမီန်';

  @override
  String get alignedToQibla => 'ကိဗ်လာနှင့် ကိုက်ညီပြီ';

  @override
  String get allPraiseIsDueToAllah =>
      'ချီးမွမ်းခြင်းအပေါင်းသည် အလ္လာဟ်အတွက်သာ ဖြစ်သည်';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'ပရီမီယံ လုပ်ဆောင်ချက်အားလုံး လျှော့စျေးဖြင့်';

  @override
  String get allInOneQuranApp => 'အားလုံးပါဝင်သော ကုရ်အာန် အက်ပ်';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'အလ္လာဟ်သည် ကျွန်ုပ်အတွက် လုံလောက်၏; ထိုအရှင်မှတစ်ပါး ကိုးကွယ်ရာမရှိ';

  @override
  String get allahIsTheGreatest => 'အလ္လာဟ်သည် အကြီးမြတ်ဆုံး ဖြစ်သည်';

  @override
  String get allahuAkbar => 'အလ္လာဟု အက်ဗရ်';

  @override
  String get allahummaSalliAlaMuhammad => 'အလ္လာဟုမ္မ ဆွလ္လိ အလာ မုဟမ္မဒ်';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'တည်နေရာ ခွင့်ပြုချက် ပေးပါ၊ သို့မဟုတ် အရံအချိန်ဇယားကို သုံးရန် ပြန်ကြိုးစားရန်ကို နှိပ်ပါ။';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'ဆွလာသ်အချိန်များနှင့် နေ့စဉ် သတိပေးချက်များ ရရှိရန် အသိပေးချက်များကို ခွင့်ပြုပါ။';

  @override
  String get allowTheAppToRunInTheBackground =>
      'အက်ပ်ကို နောက်ကွယ်တွင် လည်ပတ်ခွင့်ပြုပါ';

  @override
  String get app => 'အက်ပ်';

  @override
  String get arabic => 'အာရဗီ';

  @override
  String get asr => 'အဆရ်';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'အအူဇု ဗိလ္လာဟိ မိနရှ် ရှိုင်တွာနိရ် ရဂျီမ်';

  @override
  String get avg => 'ပျမ်းမျှ';

  @override
  String get ayah => 'အာယသ်';

  @override
  String get batteryOptimization => 'ဘက်ထရီ ချွေတာမှု';

  @override
  String get beautifulWidgets => 'လှပသော ဝိဂျက်များ';

  @override
  String get bestValue => 'အတန်ဖိုးအရှိဆုံး';

  @override
  String get blackOnyx => 'အနက်ရောင် အွန်းနစ်';

  @override
  String get bookmarks => 'မှတ်သားချက်များ';

  @override
  String get brightIvoryInterface => 'တောက်ပသော ဆင်စွယ်ရောင် အင်တာဖေ့စ်';

  @override
  String get calculatingDistance => 'အကွာအဝေး တွက်ချက်နေသည်...';

  @override
  String get calibrateYourDirection => 'သင့်ဦးတည်ရာကို ချိန်ညှိပါ';

  @override
  String get cancel => 'ပယ်ဖျက်ရန်';

  @override
  String get change => 'ပြောင်းရန်';

  @override
  String get changeTasbihMode => 'တစ်ဗီး မုဒ် ပြောင်းမလား?';

  @override
  String get chooseDhikr => 'ဇိကရ် ရွေးပါ';

  @override
  String get chooseDisplayLanguage => 'ပြသမည့် ဘာသာစကား ရွေးပါ';

  @override
  String get chooseTheme => 'အပြင်အဆင် ရွေးပါ';

  @override
  String get chooseYourPreferredLanguage => 'သင်နှစ်သက်ရာ ဘာသာစကားကို ရွေးပါ';

  @override
  String get clickOrSwipeToCount => 'ရေတွက်ရန် နှိပ်ပါ သို့မဟုတ် ပွတ်ဆွဲပါ';

  @override
  String get close => 'ပိတ်ရန်';

  @override
  String get closeCustomGoal => 'စိတ်ကြိုက် ပန်းတိုင်ကို ပိတ်ရန်';

  @override
  String get completeAtLeast33Dhikr =>
      'အနည်းဆုံး ဇိကရ် 33 ကြိမ် ပြီးအောင်လုပ်ပါ';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'သင့်နှလုံးသားကို မြင့်မြတ်သော ကုရ်အာန်နှင့် ချိတ်ဆက်ပါ။';

  @override
  String get continueReading => 'ဆက်ဖတ်ရန်';

  @override
  String get countsPerRound => 'တစ်ကြိမ်လျှင် အရေအတွက်';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'ကျွမ်းကျင်စွာ ပြုလုပ်ထားသော ဝိညာဉ်ရေး ကျောက်မျက်များဖြင့် သင့်စုစည်းမှုကို စီစဉ်ပါ။';

  @override
  String get current => 'လက်ရှိ';

  @override
  String get current2 => 'လက်ရှိ';

  @override
  String get currentLocationToMecca => 'လက်ရှိတည်နေရာမှ မက္ကာသို့';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'မုဒ်အသစ်အတွက် လက်ရှိတိုးတက်မှုကို ပြန်လည်သတ်မှတ်ပါမည်။';

  @override
  String get currentStreak => 'လက်ရှိ ဆက်တိုက်စံချိန်';

  @override
  String get custom => 'စိတ်ကြိုက်';

  @override
  String get customDhikr => 'စိတ်ကြိုက် ဇိကရ်';

  @override
  String get customGoal => 'စိတ်ကြိုက် ပန်းတိုင်';

  @override
  String get customPrayerSounds => 'စိတ်ကြိုက် ဆွလာသ် အသံများ';

  @override
  String get dailyGoal => 'နေ့စဉ် ပန်းတိုင်';

  @override
  String get dailyQuests => 'နေ့စဉ် စိန်ခေါ်မှုများ';

  @override
  String get dailyQuranReminder => 'နေ့စဉ် ကုရ်အာန် သတိပေးချက်';

  @override
  String get dailyReminders => 'နေ့စဉ် သတိပေးချက်များ';

  @override
  String get dailyTasbih => 'နေ့စဉ် တစ်ဗီး';

  @override
  String get dark => 'အမှောင်';

  @override
  String get dawn => 'အရုဏ်ဦး';

  @override
  String get debug => 'အမှားရှာဖွေခြင်း';

  @override
  String get dhikr => 'ဇိကရ်';

  @override
  String get dhikrActivity => 'ဇိကရ် လှုပ်ရှားမှု';

  @override
  String get dhuAlHijjah => 'ဇုလ်ဟဂျ်';

  @override
  String get dhuAlQadah => 'ဇုလ်ကအ်ဒဟ်';

  @override
  String get dhuhr => 'ဇူဟရ်';

  @override
  String get direction => 'ဦးတည်ရာ';

  @override
  String get disableBatteryOptimization => 'ဘက်ထရီ ချွေတာမှုကို ပိတ်ပါ';

  @override
  String get disableOptimization => 'ချွေတာမှု ပိတ်ရန်';

  @override
  String get distance => 'အကွာအဝေး';

  @override
  String get e => 'ရှေ့';

  @override
  String get eGHasbunallah => 'ဥပမာ- ဟတ်စ်ဗုနလ္လာဟ်';

  @override
  String get east => 'အရှေ့';

  @override
  String get enableAutoStart => 'အလိုအလျောက်စတင်ခြင်း ဖွင့်ပါ';

  @override
  String get enableNotifications => 'အသိပေးချက်များ ဖွင့်ပါ';

  @override
  String get enableReminders => 'သတိပေးချက်များ ဖွင့်ပါ';

  @override
  String get english => 'အင်္ဂလိပ်';

  @override
  String get enterYourName => 'သင့်နာမည် ထည့်ပါ';

  @override
  String get equipped => 'တပ်ဆင်ထားသည်';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'ပိုမိုကောင်းမွန်သော ကုရ်အာန် အတွေ့အကြုံအတွက် လိုအပ်သမျှ။';

  @override
  String get fajr => 'ဖဂျရ်';

  @override
  String get feedback => 'အကြံပြုချက်';

  @override
  String get first => 'ပထမ';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'အတိကျဆုံး ရလဒ်ရရှိရန် ဖုန်းကို ပြားပြားထားပြီး သံလိုက်ပစ္စည်းများနှင့် ဝေးဝေးထားပါ။';

  @override
  String get free => 'အခမဲ့';

  @override
  String get fullBundle => 'အစုံလိုက် ပက်ကေ့ဂျ်';

  @override
  String get getAnAdFreeExperienceForever =>
      'ကြော်ငြာကင်းသော အတွေ့အကြုံကို အမြဲရယူပါ';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'ဖတ်ရန် သတိပေးခံယူပြီး ပုံမှန် ဆက်လုပ်ပါ။';

  @override
  String get getStarted => 'စတင်ရန်';

  @override
  String get gloryAndPraiseBeToAllah =>
      'အလ္လာဟ် စင်ကြယ်တော်မူ၏၊ ချီးမွမ်းခြင်းအပေါင်းလည်း ထိုအရှင်အတွက်သာ';

  @override
  String get gloryBeToAllah => 'အလ္လာဟ် စင်ကြယ်တော်မူ၏';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'ကြီးကျယ်မြင့်မြတ်တော်မူသော အလ္လာဟ် စင်ကြယ်တော်မူ၏';

  @override
  String get goToHome => 'ပင်မစာမျက်နှာသို့';

  @override
  String get goldenEngraved => 'ရွှေထွင်းထားသော';

  @override
  String get greenJade => 'စိမ်းရောင် ကျောက်စိမ်း';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ဟနွိုင်း၊ ဗီယက်နမ်';

  @override
  String get haptic => 'တုန်ခါမှု';

  @override
  String get hasanatHub => 'ဟာစနာသ် စင်တာ';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ဟတ်စ်ဗိယလ္လာဟု လာအိလာဟ အိလ္လာ ဟုဝ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ပင်မ';

  @override
  String get howYourDataIsHandled => 'သင့်ဒေတာကို မည်သို့ ကိုင်တွယ်သည်';

  @override
  String get iSeekForgivenessFromAllah =>
      'ကျွန်ုပ် အလ္လာဟ်ထံ လွတ်ငြိမ်းချမ်းသာခွင့် တောင်းခံပါ၏';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ကျိန်စာသင့်သော ရှိုင်တွာန်မှ အလ္လာဟ်ထံ ခိုလှုံပါ၏';

  @override
  String get immediateAlerts => 'ချက်ချင်း သတိပေးချက်များ';

  @override
  String get inTheNameOfAllah => 'အလ္လာဟ်၏ နာမတော်ဖြင့်';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ဧကန်စင်စစ် ကျွန်ုပ်တို့သည် အလ္လာဟ်ပိုင် ဖြစ်ပြီး ထိုအရှင်ထံသို့ပင် ပြန်ကြရမည်';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'အင်န္နာ လိလ္လာဟိ ဝအင်န္နာ အိလိုင်ဟိ ရာဂျိအူန်';

  @override
  String get isha => 'အီရှာ';

  @override
  String get jumadaAlAwwal => 'ဂျုမာဒလ် အောင်ဝလ်';

  @override
  String get jumadaAlThani => 'ဂျုမာဒစ် စာနီ';

  @override
  String get juz => 'ဂျုဇ်';

  @override
  String get juz2 => 'ဂျုဇ်';

  @override
  String get keepAdhanAlarmsReliable =>
      'အဇာန် နှိုးစက်များ ယုံကြည်စိတ်ချရအောင် ထားပါ';

  @override
  String get keepItUpYouReDoingGreat => 'ဆက်လုပ်ပါ! သင် အရမ်းကောင်းနေပါပြီ။';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'အက်ပ်ပိတ်ထားချိန်တွင်ပင် အဇာန်ခေါ်ဆိုမှုများ ယုံကြည်စိတ်ချရအောင် ထားပါ။';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'လာ ဟောင်လ ဝလာ ကူဝ်ဝသ အိလ္လာ ဗိလ္လာဟ်';

  @override
  String get laIlahaIllallah => 'လာ အိလာဟ အိလ္လလ္လာဟ်';

  @override
  String get language => 'ဘာသာစကား';

  @override
  String get lapisLazuli => 'လာပစ် လာဇူလီ';

  @override
  String get last7Days => 'နောက်ဆုံး 7 ရက်';

  @override
  String get later => 'နောက်မှ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'ကုရ်အာန်နှင့်အတူ သင့်၏ လှပသော ခရီးကို စတင်ကြစို့။';

  @override
  String get letSPersonalizeYourExperience =>
      'သင့်အတွေ့အကြုံကို\nစိတ်ကြိုက် ပြင်ဆင်ကြစို့';

  @override
  String get light => 'အလင်း';

  @override
  String get lightMode => 'အလင်းမုဒ်';

  @override
  String get listenToOrReadAnyAyahToday =>
      'ယနေ့ အာယသ်တစ်ခုခုကို နားထောင်ပါ သို့မဟုတ် ဖတ်ပါ';

  @override
  String get locating => 'တည်နေရာ ရှာနေသည်...';

  @override
  String get location => 'တည်နေရာ';

  @override
  String get locationPermissionsAreDenied =>
      'တည်နေရာ ခွင့်ပြုချက် ငြင်းပယ်ခံရသည်';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'တည်နေရာ ခွင့်ပြုချက်ကို အပြီးအပိုင် ငြင်းပယ်ထားသည်။';

  @override
  String get locationServicesAreDisabled =>
      'တည်နေရာ ဝန်ဆောင်မှုများ ပိတ်ထားသည်။';

  @override
  String get longestStreak => 'အရှည်ဆုံး ဆက်တိုက်စံချိန်';

  @override
  String get maghrib => 'မဂ်ရိဗ်';

  @override
  String get maybeLater => 'နောက်မှလုပ်မည်';

  @override
  String get meccaSaudiArabia => 'မက္ကာ၊ ဆော်ဒီအာရေဗျ';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'အကျွန်ုပ်၏ အရှင်သခင်၊ ခွင့်လွှတ်ပြီး ကရုဏာပြုတော်မူပါ';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'အကျွန်ုပ်၏ အရှင်သခင်၊ အရှင်ချပေးသော ကောင်းမြတ်မှုကို အကျွန်ုပ် လိုအပ်ပါ၏';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'အကျွန်ုပ်၏ အရှင်သခင်၊ အကျွန်ုပ်၏ အသိပညာကို တိုးပွားစေတော်မူပါ';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'အကျွန်ုပ်၏ အရှင်သခင်၊ လွယ်ကူစေတော်မူပါ၊ ခက်ခဲမစေပါနှင့်';

  @override
  String get n => 'မြ';

  @override
  String get nameOptional => 'နာမည် (ရွေးချယ်နိုင်)';

  @override
  String get next => 'နောက်တစ်ခု';

  @override
  String get nextDhikr => 'နောက် ဇိကရ်';

  @override
  String get nextPrayer => 'နောက် ဆွလာသ်';

  @override
  String get night => 'ည';

  @override
  String get nightEmeraldInterface => 'ညမြကျောက် အင်တာဖေ့စ်';

  @override
  String get noBookmarksYet => 'မှတ်သားချက် မရှိသေးပါ';

  @override
  String get noon => 'မွန်းတည့်';

  @override
  String get north => 'မြောက်';

  @override
  String get northeast => 'အရှေ့မြောက်';

  @override
  String get northwest => 'အနောက်မြောက်';

  @override
  String get notificationsAlarm => 'အသိပေးချက်နှင့် နှိုးစက်';

  @override
  String get notificationsForPrayerTimes =>
      'ဆွလာသ်အချိန်များအတွက် အသိပေးချက်များ';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'အို အလ္လာဟ်၊ မုဟမ္မဒ်အပေါ် ကောင်းချီးပေးသနားတော်မူပါ';

  @override
  String get oEverLivingOSustainer =>
      'အို ထာဝရရှင်သန်တော်မူသောအရှင်၊ အို အားလုံးကို ထိန်းသိမ်းတော်မူသောအရှင်';

  @override
  String get openAutoStart => 'အလိုအလျောက်စတင်ခြင်း ဖွင့်ရန်';

  @override
  String get optimizeAdhanPerformance => 'အဇာန် စွမ်းဆောင်ရည် မြှင့်တင်ရန်';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'အကျွန်ုပ်တို့၏ အရှင်သခင်၊ ဤလောကတွင် ကောင်းမြတ်မှုကို ချပေးတော်မူပါ';

  @override
  String get page => 'စာမျက်နှာ';

  @override
  String get pearl => 'ပုလဲ';

  @override
  String get personalizeYourAdhanNotifications =>
      'သင့် အဇာန် အသိပေးချက်များကို စိတ်ကြိုက် ပြင်ဆင်ပါ';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'စကြဝဠာအပေါင်း၏ အရှင်သခင် အလ္လာဟ်အား ချီးမွမ်းပါ၏';

  @override
  String get prayerAlarms => 'ဆွလာသ် နှိုးစက်များ';

  @override
  String get prayerSchedule => 'ဆွလာသ် အချိန်ဇယား';

  @override
  String get prayerTimeNotifications => 'ဆွလာသ်အချိန် အသိပေးချက်များ';

  @override
  String get prayerTimesAreLoading => 'ဆွလာသ်အချိန်များ ဖွင့်နေသည်';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'ဆွလာသ်အချိန်များ၊ ကိဗ်လာ၊ ကုရ်အာန်ဖတ်ရှုခြင်းနှင့် တစ်ဗီးကို နေ့စဉ်အဖော် တစ်ခုတည်းတွင်။';

  @override
  String get prayerQuranQibla => 'ဆွလာသ် • ကုရ်အာန် • ကိဗ်လာ';

  @override
  String get premiumThemes => 'ပရီမီယံ အပြင်အဆင်များ';

  @override
  String get preparingYourSpiritualJourney =>
      'သင့်ဝိညာဉ်ရေး ခရီးကို ပြင်ဆင်နေသည်...';

  @override
  String get previousDhikr => 'ယခင် ဇိကရ်';

  @override
  String get privacyPolicy => 'ကိုယ်ရေးအချက်အလက် မူဝါဒ';

  @override
  String get qibla => 'ကိဗ်လာ';

  @override
  String get qiblaFinder => 'ကိဗ်လာ ရှာဖွေစနစ်';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ကုရ်အာန်';

  @override
  String get quranPlayback => 'ကုရ်အာန် ဖွင့်ခြင်း';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro သည် ဆွလာသ်အချိန်များ၊ ကိဗ်လာ၊ ကုရ်အာန်ဖတ်ရှုခြင်းနှင့် တစ်ဗီးကို ရိုးရှင်းသော နေ့စဉ်အဖော်တစ်ခုတည်းအဖြစ် စုစည်းပေးသည်။';

  @override
  String get quranProPreferences => 'Quran Pro ဦးစားပေး ဆက်တင်များ';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro သည် မိတ်ဆက်နှင့် တိုးတက်မှု ဆက်တင်များကို ဤစက်ပစ္စည်းအတွင်း၌သာ သိမ်းဆည်းသည်။ တည်ငြိမ်မှုနှင့် အရည်အသွေး တိုးတက်စေရန် ခွဲခြမ်းစိတ်ဖြာမှုများ အသုံးပြုနိုင်သည်။';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro သည် သင့် တစ်ဗီး တိုးတက်မှုကို ဤစက်ပစ္စည်းအတွင်း၌သာ သိမ်းဆည်းသည်။ အက်ပ်တည်ငြိမ်မှုနှင့် ထုတ်ကုန်အရည်အသွေး တိုးတက်စေရန် ခွဲခြမ်းစိတ်ဖြာမှုများ အသုံးပြုနိုင်သည်။';

  @override
  String get quranRecitation => 'ကုရ်အာန် ရွတ်ဖတ်ခြင်း';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ရဗ္ဗနာ အာတိနာ ဖစ်ဒ်ဒုန်ယာ ဟစနဟ်';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ရဗ္ဗိ အင်န္နီ လိမာ အန်ဇလ်တ အိလိုင်ယ မင် ခိုင်ရင် ဖကီရ်';

  @override
  String get rabbiYassirWaLaTuassir => 'ရဗ္ဗိ ယဆ်ဆိရ် ဝလာ တုအဆ်ဆိရ်';

  @override
  String get rabbiZidniIlma => 'ရဗ္ဗိ ဇိဒ်နီ အိလ်မာ';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ရဗ္ဗိဂ်ဖိရ် ဝရ်ဟမ် ဝအန်တ ခိုင်ရုရ် ရာဟိမီန်';

  @override
  String get rabiAlAwwal => 'ရဗီအုလ် အောင်ဝလ်';

  @override
  String get rabiAlThani => 'ရဗီအုစ် စာနီ';

  @override
  String get rateApp => 'အက်ပ်ကို အဆင့်သတ်မှတ်ရန်';

  @override
  String get rateQuranPro => 'Quran Pro ကို အဆင့်သတ်မှတ်ရန်';

  @override
  String get readListen => 'ဖတ်ရန် နှင့် နားထောင်ရန်';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'လှပသော ရွတ်ဖတ်သံများနှင့်အတူ ကုရ်အာန်ကို ဖတ်ပါ။';

  @override
  String get recent => 'မကြာသေးမီက';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo နှင့် Huawei အတွက် အကြံပြုထားသည်';

  @override
  String get redCarnelian => 'အနီရောင် ကာနေးလီးယမ်';

  @override
  String get remindMeAt => 'သတိပေးမည့် အချိန်';

  @override
  String get removeAds => 'ကြော်ငြာများ ဖယ်ရှားရန်';

  @override
  String get requestingLocationPermission =>
      'တည်နေရာ ခွင့်ပြုချက် တောင်းခံနေသည်...';

  @override
  String get reset => 'ပြန်လည်သတ်မှတ်ရန်';

  @override
  String get retry => 'ပြန်ကြိုးစားရန်';

  @override
  String get returnToCompass => 'သံလိုက်အိမ်မြှောင်သို့ ပြန်သွားရန်';

  @override
  String get s => 'တ';

  @override
  String get save => 'သိမ်းရန်';

  @override
  String get saveGoal => 'ပန်းတိုင် သိမ်းရန်';

  @override
  String get searchSurahNumberArabic => 'စူရာ၊ နံပါတ်၊ အာရဗီ ရှာရန်...';

  @override
  String get searchSurah => 'စူရာ ရှာရန်...';

  @override
  String get selectLanguage => 'ဘာသာစကား ရွေးရန်';

  @override
  String get selectTheThemeYouLike => 'သင်နှစ်သက်သော အပြင်အဆင်ကို ရွေးပါ';

  @override
  String get selectYourBead => 'သင့် စိပ်ပုတီးစေ့ ရွေးပါ';

  @override
  String get shop => 'ဆိုင်';

  @override
  String get shopCustomization => 'ဆိုင်နှင့် စိတ်ကြိုက်ပြင်ဆင်မှု';

  @override
  String get sound => 'အသံ';

  @override
  String get south => 'တောင်';

  @override
  String get southeast => 'အရှေ့တောင်';

  @override
  String get southwest => 'အနောက်တောင်';

  @override
  String get specialOccasionsAndMore => 'အထူးအခါသမယများနှင့် အခြားများစွာ';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'ထုတ်ကုန်စာရင်း အဆင်သင့်ဖြစ်သည့်အခါ စတိုးအဆင့်သတ်မှတ်ချက်ကို ချိတ်ဆက်ပေးပါမည်။';

  @override
  String get subhanallahiWaBihamdihi => 'စုဗ်ဟာနလ္လာဟိ ဝဗိဟမ်ဒိဟီ';

  @override
  String get subhanallahilAzim => 'စုဗ်ဟာနလ္လာဟိလ် အဇီမ်';

  @override
  String get sunset => 'နေဝင်';

  @override
  String get supportQuranProOnTheStore => 'စတိုးတွင် Quran Pro ကို ပံ့ပိုးပါ';

  @override
  String get surah => 'စူရာ';

  @override
  String get tasbih => 'တစ်ဗီး';

  @override
  String get tasbihSettings => 'တစ်ဗီး ဆက်တင်များ';

  @override
  String get tellUsWhatToImprove => 'ဘာတွေ တိုးတက်စေချင်လဲ ပြောပြပါ';

  @override
  String get termsOfUse => 'အသုံးပြုမှု စည်းမျဉ်းများ';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro ကို အသုံးပြုသည့်အတွက် ကျေးဇူးတင်ပါသည်။ ထုတ်ကုန်စတိုးစာရင်း အဆင်သင့်ဖြစ်သည့်အခါ စတိုးအဆင့်သတ်မှတ်ချက်ကို ချိတ်ဆက်ပေးပါမည်။';

  @override
  String get thereIsNoDeityExceptAllah =>
      'အလ္လာဟ်မှတစ်ပါး ကိုးကွယ်ထိုက်သောအရှင် မရှိပါ';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'အလ္လာဟ်မှတစ်ပါး တန်ခိုးနှင့် စွမ်းအား မရှိပါ';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ဤအချက်သည် သတိပေးချက်များကို စိတ်ကြိုက်ပြင်ဆင်ရန်နှင့် သင့်တိုးတက်မှုကို မှတ်တမ်းတင်ရန် ကူညီပေးသည်။';

  @override
  String get tigerSEye => 'ကျားမျက်လုံးကျောက်';

  @override
  String get today => 'ယနေ့';

  @override
  String get total => 'စုစုပေါင်း';

  @override
  String get totalHasanat => 'စုစုပေါင်း ဟာစနာသ်';

  @override
  String get trackProgress => 'တိုးတက်မှု မှတ်တမ်းတင်ရန်';

  @override
  String get trackYourReadingAndAchievements =>
      'သင့်ဖတ်ရှုမှုနှင့် အောင်မြင်မှုများကို မှတ်တမ်းတင်ပါ။';

  @override
  String get tryAgain => 'ထပ်ကြိုးစားပါ';

  @override
  String get undo => 'နောက်ပြန်ရန်';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'အက်ပ် အပြင်အဆင်နှင့် စိတ်ကြိုက်ပြင်ဆင်မှုအားလုံးကို ဖွင့်ပါ';

  @override
  String get usageGuidelines => 'အသုံးပြုမှု လမ်းညွှန်ချက်များ';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'ကိုယ်ပိုင်ဝတ်ပြုမှု၊ သင်ယူမှုနှင့် နေ့စဉ် အစ္စလာမ့်လုပ်ငန်းစဉ်များအတွက် Quran Pro ကို လေးစားစွာ အသုံးပြုပါ။';

  @override
  String get viewAll => 'အားလုံးကြည့်ရန်';

  @override
  String get w => 'နောက်';

  @override
  String get welcome => 'ကြိုဆိုပါသည်';

  @override
  String get west => 'အနောက်';

  @override
  String get yaHayyuYaQayyum => 'ယာ ဟယ်ယု ယာ ကယ်ယူမ်';

  @override
  String get youReAllSet => 'အဆင်သင့် ဖြစ်ပါပြီ!';

  @override
  String get yourProgress => 'သင့် တိုးတက်မှု';

  @override
  String get continueLabel => 'ဆက်လုပ်ရန်';

  @override
  String get amethyst => 'ခရမ်းရောင် ကျောက်သလင်း';

  @override
  String get indonesian => 'အင်ဒိုနီးရှား';

  @override
  String get turkish => 'တူရကီ';

  @override
  String get vietnamese => 'ဗီယက်နမ်';

  @override
  String get turquoise => 'တာကွိုက်စ် ကျောက်';

  @override
  String get wood => 'သစ်သား';

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
