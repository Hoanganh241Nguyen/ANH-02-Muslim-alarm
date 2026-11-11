// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hawaiian (`haw`).
class AppLocalizationsHaw extends AppLocalizations {
  AppLocalizationsHaw([String locale = 'haw']) : super(locale);

  @override
  String get week => 'Pule';

  @override
  String get month => 'Mahina';

  @override
  String get lifetime => 'Ola Holoʻokoʻa';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'E hoʻomaha iki mai kāu hana a e hoʻokaʻawale i ka manawa no Allah.';

  @override
  String get prayerAlarmDefaultName => 'Pule';

  @override
  String productUnavailable(Object id) {
    return 'ʻAʻole loaʻa ka huahana $id no ke kūʻai ʻana.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Ua kūleʻa ke kūʻai ʻana iā $productId!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Ua hoʻihoʻi ʻia ke kūʻai ʻana iā $productId!';
  }

  @override
  String daysCount(Object count) {
    return '$count Lā';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'E HIKI MAI ANA: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Mamao i Mecca: $distance Km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'E hoʻomanaʻo mai iaʻu ma hope o $minutes minuke';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'ʻO ka manawa kēia no ka pule $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Puni: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Ua koho ʻia ʻo $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'ʻAoʻao $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: Paukū $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ayah';
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
    return 'PAE $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 Juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 ʻaoʻao';

  @override
  String get text100dhikr => '100 Dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 ʻaoʻao';

  @override
  String get text28cclearsky => '28°C - Lani Mālie';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 ʻaoʻao';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'E pili ana';

  @override
  String get aboutQuranPro => 'E pili ana iā Quran Pro';

  @override
  String get activity => 'Hana';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Ke hoʻouka ʻia nei ka hoʻolaha. E ʻoluʻolu, e hoʻāʻo hou koke.';

  @override
  String get addCustomDhikr => 'Hoʻohui dhikr ponoʻī';

  @override
  String get addCustomDhikr2 => 'Hoʻohui Dhikr Ponoʻī';

  @override
  String get addDhikr => 'Hoʻohui Dhikr';

  @override
  String get adjustPosition => 'HOʻOPONOPONO KAHUA';

  @override
  String get afternoon => 'ʻAUINALĀ';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'KŪPONO I KA QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'No Allah ka hoʻomaikaʻi a pau';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Nā hiʻohiʻona Premium a pau ma ke kumu kūʻai emi';

  @override
  String get allInOneQuranApp => 'Polokalamu Korana hui pū';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Ua lawa ʻo Allah noʻu; ʻaʻohe akua ʻē aʻe, ʻo Ia wale nō';

  @override
  String get allahIsTheGreatest => 'ʻO Allah ka mea nui loa';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'E ʻae i ka ʻae wahi a i ʻole e kaomi i ka hoʻāʻo hou e hoʻohana ai i ka papa manawa pani.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'E ʻae i nā hoʻolaha e loaʻa ai nā manawa pule a me nā hoʻomanaʻo o kēlā me kēia lā.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'E ʻae i ka polokalamu e holo ma hope';

  @override
  String get app => 'Polokalamu';

  @override
  String get arabic => 'ʻAlapia';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Awelika';

  @override
  String get ayah => 'Ayah';

  @override
  String get batteryOptimization => 'Hoʻomaikaʻi Pila Uila';

  @override
  String get beautifulWidgets => 'Nā Pahu Hōʻike Nani';

  @override
  String get bestValue => 'WAIWAI ʻOI LOA';

  @override
  String get blackOnyx => 'ʻOnika ʻEleʻele';

  @override
  String get bookmarks => 'Nā Māka Heluhelu';

  @override
  String get brightIvoryInterface => 'Hiʻohiʻona ʻivori mālamalama';

  @override
  String get calculatingDistance => 'Ke helu nei i ka mamao...';

  @override
  String get calibrateYourDirection => 'E hoʻoponopono i kou kuhikuhi';

  @override
  String get cancel => 'Hoʻopau';

  @override
  String get change => 'Hoʻololi';

  @override
  String get changeTasbihMode => 'E hoʻololi i ke ʻano Tasbih?';

  @override
  String get chooseDhikr => 'E koho Dhikr';

  @override
  String get chooseDisplayLanguage => 'E koho i ka ʻōlelo hōʻike';

  @override
  String get chooseTheme => 'E koho i ke Kumuhana';

  @override
  String get chooseYourPreferredLanguage => 'E koho i kāu ʻōlelo makemake';

  @override
  String get clickOrSwipeToCount => 'E kaomi a kāhili paha e helu ai';

  @override
  String get close => 'Pani';

  @override
  String get closeCustomGoal => 'E pani i ka pahuhopu ponoʻī';

  @override
  String get completeAtLeast33Dhikr => 'E hoʻopau i 33 dhikr a ʻoi aʻe';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'E hoʻopili i kou puʻuwai me ka Korana Hemolele.';

  @override
  String get continueReading => 'Hoʻomau i ka Heluhelu';

  @override
  String get countsPerRound => 'Nā helu i kēlā me kēia puni';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'E hoʻonohonoho i kāu hōʻiliʻili me nā pōhaku makamae ʻuhane i hana ʻia e ka poʻe akamai.';

  @override
  String get current => 'KĒIA MANAWA';

  @override
  String get current2 => 'Kēia manawa';

  @override
  String get currentLocationToMecca => 'Kahi o kēia manawa i Mecca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'E hoʻihoʻi ʻia ka holomua o kēia manawa no ke ʻano hou.';

  @override
  String get currentStreak => 'Kaʻina o Kēia Manawa';

  @override
  String get custom => 'Ponoʻī';

  @override
  String get customDhikr => 'Dhikr ponoʻī';

  @override
  String get customGoal => 'Pahuhopu Ponoʻī';

  @override
  String get customPrayerSounds => 'Nā Leo Pule Ponoʻī';

  @override
  String get dailyGoal => 'Pahuhopu o ka Lā';

  @override
  String get dailyQuests => 'Nā Hana o ka Lā';

  @override
  String get dailyQuranReminder => 'Hoʻomanaʻo Korana o ka lā';

  @override
  String get dailyReminders => 'Nā Hoʻomanaʻo o ka Lā';

  @override
  String get dailyTasbih => 'Tasbih o ka Lā';

  @override
  String get dark => 'Pōʻeleʻele';

  @override
  String get dawn => 'WANAʻAO';

  @override
  String get debug => 'Hoʻoponopono Hewa';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Hana dhikr';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'KUHIKUHI';

  @override
  String get disableBatteryOptimization => 'Hoʻopau i ka Hoʻomaikaʻi Pila Uila';

  @override
  String get disableOptimization => 'HOʻOPAU I KA HOʻOMAIKAʻI';

  @override
  String get distance => 'MAMAO';

  @override
  String get e => 'Hi';

  @override
  String get eGHasbunallah => 'e laʻa, HasbunAllah';

  @override
  String get east => 'Hikina';

  @override
  String get enableAutoStart => 'E hoʻohana i ka Hoʻomaka Akomai';

  @override
  String get enableNotifications => 'E hoʻohana i nā Hoʻolaha';

  @override
  String get enableReminders => 'E hoʻohana i nā Hoʻomanaʻo';

  @override
  String get english => 'Pelekānia';

  @override
  String get enterYourName => 'E kākau i kou inoa';

  @override
  String get equipped => 'UA KOMO';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Nā mea a pau e pono ai no ka ʻike Korana ʻoi aku ka maikaʻi.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Manaʻo Hoʻihoʻi';

  @override
  String get first => 'Mua';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'No nā hopena pololei loa, e waiho pālahalaha i kāu kelepona a mamao aku i nā mea māneki.';

  @override
  String get free => 'Manuahi';

  @override
  String get fullBundle => 'Pūʻulu Piha';

  @override
  String get getAnAdFreeExperienceForever =>
      'E loaʻa ka ʻike me ka hoʻolaha ʻole no ka manawa pau ʻole';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'E hoʻomanaʻo ʻia e heluhelu a e hoʻomau pono.';

  @override
  String get getStarted => 'E Hoʻomaka';

  @override
  String get gloryAndPraiseBeToAllah => 'Ka nani a me ka hoʻomaikaʻi iā Allah';

  @override
  String get gloryBeToAllah => 'Ka nani iā Allah';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'Ka nani iā Allah, ka Mea Hanohano';

  @override
  String get goToHome => 'E hele i ka Home';

  @override
  String get goldenEngraved => 'Kālai Gula';

  @override
  String get greenJade => 'Iāde ʻŌmaʻomaʻo';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Wiekanama';

  @override
  String get haptic => 'Haʻalulu';

  @override
  String get hasanatHub => 'Kikowaena Hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Home';

  @override
  String get howYourDataIsHandled =>
      'Ke ʻano o ka mālama ʻia ʻana o kāu ʻikepili';

  @override
  String get iSeekForgivenessFromAllah =>
      'Ke noi nei au i ke kala mai iā Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Ke ʻimi nei au i ka puʻuhonua iā Allah mai iā Satana i hōʻino ʻia';

  @override
  String get immediateAlerts => 'Nā hoʻolaha koke';

  @override
  String get inTheNameOfAllah => 'Ma ka inoa o Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'No Allah nō kākou, a iā Ia kākou e hoʻi ai';

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
  String get keepAdhanAlarmsReliable =>
      'E mālama i ka hilinaʻi o nā hoʻāla adhan';

  @override
  String get keepItUpYouReDoingGreat => 'E hoʻomau! Ke hana maikaʻi nei ʻoe.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'E hilinaʻi mau ʻia nā kāhea pule ʻoiai ua pani ʻia ka polokalamu.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'ʻŌlelo';

  @override
  String get lapisLazuli => 'Lapis Lazuli';

  @override
  String get last7Days => 'Nā Lā 7 i Hala';

  @override
  String get later => 'MA HOPE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'E hoʻomaka kāua i kou huakaʻi nani me ka Korana.';

  @override
  String get letSPersonalizeYourExperience => 'E hoʻokūikawā kāua\ni kou ʻike';

  @override
  String get light => 'Mālamalama';

  @override
  String get lightMode => 'ʻAno Mālamalama';

  @override
  String get listenToOrReadAnyAyahToday =>
      'E hoʻolohe a heluhelu paha i kekahi Ayah i kēia lā';

  @override
  String get locating => 'Ke ʻimi nei i kahi...';

  @override
  String get location => 'Wahi';

  @override
  String get locationPermissionsAreDenied => 'Ua hōʻole ʻia nā ʻae wahi';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Ua hōʻole mau ʻia nā ʻae wahi.';

  @override
  String get locationServicesAreDisabled => 'Ua hoʻopau ʻia nā lawelawe wahi.';

  @override
  String get longestStreak => 'Kaʻina Lōʻihi Loa';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Ma hope paha';

  @override
  String get meccaSaudiArabia => 'Mecca, ʻAlapia Kaudi';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'E kuʻu Haku, e kala mai a e aloha mai';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'E kuʻu Haku, ke nele nei au i nā pōmaikaʻi āu e hoʻoiho mai ai';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'E kuʻu Haku, e hoʻonui mai i koʻu ʻike';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'E kuʻu Haku, e hoʻomaʻalahi a mai hoʻopaʻakikī';

  @override
  String get n => 'ʻĀ';

  @override
  String get nameOptional => 'Inoa (Koho)';

  @override
  String get next => 'Aʻe';

  @override
  String get nextDhikr => 'Dhikr aʻe';

  @override
  String get nextPrayer => 'PULE AʻE';

  @override
  String get night => 'PŌ';

  @override
  String get nightEmeraldInterface => 'Hiʻohiʻona ʻemelala pō';

  @override
  String get noBookmarksYet => 'ʻAʻohe māka heluhelu';

  @override
  String get noon => 'AWAKEA';

  @override
  String get north => 'ʻĀkau';

  @override
  String get northeast => 'ʻĀkau Hikina';

  @override
  String get northwest => 'ʻĀkau Komohana';

  @override
  String get notificationsAlarm => 'Nā Hoʻolaha a me ka Hoʻāla';

  @override
  String get notificationsForPrayerTimes => 'Nā hoʻolaha no nā manawa pule';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'E Allah, e hoʻouna i nā pōmaikaʻi ma luna o Muhammad';

  @override
  String get oEverLivingOSustainer => 'E ka Mea Ola Mau, e ka Mea Mālama';

  @override
  String get openAutoStart => 'WEHE I KA HOʻOMAKA AKOMAI';

  @override
  String get optimizeAdhanPerformance => 'Hoʻomaikaʻi i ka Hana Adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'E ko mākou Haku, e hāʻawi mai i ka maikaʻi iā mākou ma kēia ao';

  @override
  String get page => 'ʻAOʻAO';

  @override
  String get pearl => 'Momi';

  @override
  String get personalizeYourAdhanNotifications =>
      'E hoʻokūikawā i kāu mau hoʻolaha Adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Ka hoʻomaikaʻi iā Allah, ka Haku o nā ao';

  @override
  String get prayerAlarms => 'Nā Hoʻāla Pule';

  @override
  String get prayerSchedule => 'Papa Manawa Pule';

  @override
  String get prayerTimeNotifications => 'Nā hoʻolaha manawa pule';

  @override
  String get prayerTimesAreLoading => 'Ke hoʻouka ʻia nei nā manawa pule';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Nā Manawa Pule, ka Qibla, ka heluhelu Korana, a me ka Tasbih i loko o kahi hoa hoʻokahi no kēlā me kēia lā.';

  @override
  String get prayerQuranQibla => 'PULE • KORANA • QIBLA';

  @override
  String get premiumThemes => 'Nā Kumuhana Premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Ke hoʻomākaukau nei i kou huakaʻi ʻuhane...';

  @override
  String get previousDhikr => 'Dhikr mua';

  @override
  String get privacyPolicy => 'Kulekele Pilikino';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Mea ʻImi Qibla';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Korana';

  @override
  String get quranPlayback => 'Hoʻokani Korana';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Lawe mai ʻo Quran Pro i nā Manawa Pule, ka Qibla, ka heluhelu Korana, a me ka Tasbih i loko o kahi hoa maʻalahi no kēlā me kēia lā.';

  @override
  String get quranProPreferences => 'Nā koho punahele Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Mālama ʻo Quran Pro i nā koho hoʻomaka a me ka holomua ma kēia mea hana wale nō. Hiki ke hoʻohana ʻia ka ʻikepili no ka hoʻomaikaʻi ʻana i ke kūpaʻa a me ka maikaʻi.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Mālama ʻo Quran Pro i kou holomua Tasbih ma kēia mea hana wale nō. Hiki ke hoʻohana ʻia ka ʻikepili no ka hoʻomaikaʻi ʻana i ke kūpaʻa a me ka maikaʻi o ka polokalamu.';

  @override
  String get quranRecitation => 'Heluhelu Leo Korana';

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
  String get rateApp => 'E loiloi i ka polokalamu';

  @override
  String get rateQuranPro => 'E loiloi iā Quran Pro';

  @override
  String get readListen => 'Heluhelu & Hoʻolohe';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'E heluhelu i ka Korana me nā heluhelu leo nani.';

  @override
  String get recent => 'Hou';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Paipai ʻia no Xiaomi, Oppo, Vivo a me Huawei';

  @override
  String get redCarnelian => 'Kaneliana ʻUlaʻula';

  @override
  String get remindMeAt => 'E Hoʻomanaʻo Mai Ma';

  @override
  String get removeAds => 'Wehe i nā Hoʻolaha';

  @override
  String get requestingLocationPermission => 'Ke noi nei i ka ʻae wahi...';

  @override
  String get reset => 'Hoʻonohonoho Hou';

  @override
  String get retry => 'Hoʻāʻo Hou';

  @override
  String get returnToCompass => 'Hoʻi i ke Panānā';

  @override
  String get s => 'He';

  @override
  String get save => 'Mālama';

  @override
  String get saveGoal => 'Mālama Pahuhopu';

  @override
  String get searchSurahNumberArabic => 'E huli sura, helu, ʻAlapia...';

  @override
  String get searchSurah => 'E huli Sura...';

  @override
  String get selectLanguage => 'E Koho ʻŌlelo';

  @override
  String get selectTheThemeYouLike => 'E koho i ke kumuhana āu e makemake ai';

  @override
  String get selectYourBead => 'E Koho i Kāu Pōhaku Lei';

  @override
  String get shop => 'Hale Kūʻai';

  @override
  String get shopCustomization => 'Hale Kūʻai a me ka Hoʻokūikawā';

  @override
  String get sound => 'Leo';

  @override
  String get south => 'Hema';

  @override
  String get southeast => 'Hema Hikina';

  @override
  String get southwest => 'Hema Komohana';

  @override
  String get specialOccasionsAndMore => 'Nā hanana kūikawā a me nā mea hou aʻe';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'E hoʻopili ʻia ka loiloi hale kūʻai ke mākaukau ka papa inoa hoʻopuka.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'NAPOʻO O KA LĀ';

  @override
  String get supportQuranProOnTheStore =>
      'E kākoʻo iā Quran Pro ma ka hale kūʻai';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Nā Hoʻonohonoho Tasbih';

  @override
  String get tellUsWhatToImprove => 'E haʻi mai i ka mea e hoʻomaikaʻi ai';

  @override
  String get termsOfUse => 'Nā Kūlana Hoʻohana';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Mahalo no ka hoʻohana ʻana iā Quran Pro. E hoʻopili ʻia ka loiloi hale kūʻai ke mākaukau ka papa inoa hale kūʻai hoʻopuka.';

  @override
  String get thereIsNoDeityExceptAllah =>
      'ʻAʻohe akua ʻē aʻe, ʻo Allah wale nō';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'ʻAʻohe mana, ʻaʻohe ikaika, ma o Allah wale nō';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Kōkua kēia iā mākou e hoʻokūikawā i nā hoʻomanaʻo a e nānā i kou holomua.';

  @override
  String get tigerSEye => 'Maka Kika';

  @override
  String get today => 'I kēia lā';

  @override
  String get total => 'Huina';

  @override
  String get totalHasanat => 'HUINA HASANAT';

  @override
  String get trackProgress => 'Nānā i ka Holomua';

  @override
  String get trackYourReadingAndAchievements =>
      'E nānā i kāu heluhelu a me kāu mau hoʻokō.';

  @override
  String get tryAgain => 'E Hoʻāʻo Hou';

  @override
  String get undo => 'Hoʻihoʻi Hope';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'E wehe i nā kumuhana polokalamu a me nā hoʻokūikawā a pau';

  @override
  String get usageGuidelines => 'Nā alakaʻi hoʻohana';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'E hoʻohana mahalo iā Quran Pro no ka hoʻomana pilikino, ke aʻo ʻana, a me nā hana Islama o kēlā me kēia lā.';

  @override
  String get viewAll => 'Nānā i nā Mea a Pau';

  @override
  String get w => 'K';

  @override
  String get welcome => 'Aloha mai';

  @override
  String get west => 'Komohana';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Ua Mākaukau ʻOe!';

  @override
  String get yourProgress => 'Kou Holomua';

  @override
  String get continueLabel => 'Hoʻomau';

  @override
  String get amethyst => 'Pōhaku Poni';

  @override
  String get indonesian => 'ʻInidonesia';

  @override
  String get turkish => 'Tureke';

  @override
  String get vietnamese => 'Wiekanama';

  @override
  String get turquoise => 'Pōhaku Uliuli';

  @override
  String get wood => 'Lāʻau';

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
