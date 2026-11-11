// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lao (`lo`).
class AppLocalizationsLo extends AppLocalizations {
  AppLocalizationsLo([String locale = 'lo']) : super(locale);

  @override
  String get week => 'ອາທິດ';

  @override
  String get month => 'ເດືອນ';

  @override
  String get lifetime => 'ຕະຫຼອດຊີວິດ';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'ພັກຈາກວຽກຂອງທ່ານ ແລະ ແບ່ງເວລາໃຫ້ອັລລໍຮ໌.';

  @override
  String get prayerAlarmDefaultName => 'ລະໝາດ';

  @override
  String productUnavailable(Object id) {
    return 'ຜະລິດຕະພັນ $id ບໍ່ສາມາດຊື້ໄດ້.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'ຊື້ $productId ສຳເລັດແລ້ວ!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'ກູ້ຄືນການຊື້ $productId ແລ້ວ!';
  }

  @override
  String daysCount(Object count) {
    return '$count ມື້';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ໃກ້ຮອດ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'ໄລຍະທາງໄປມັກກະຫ໌: $distance ກມ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'ເຕືອນຂ້ອຍອີກໃນ $minutes ນາທີ';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'ຮອດເວລາລະໝາດ $prayerName ແລ້ວ';
  }

  @override
  String roundValue(Object round) {
    return 'ຮອບ: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'ເລືອກ $language ແລ້ວ';
  }

  @override
  String juzNumber(Object juz) {
    return 'ຈຸສ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'ໜ້າ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ຮິສບ໌ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ອາຢັດ $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ອາຢັດ';
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
    return 'ລະດັບ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(ຊູເລາະ ອານ-ບາເກາະເລາະ 2:238)';

  @override
  String get text1juz => '1 ຈຸສ';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 ໜ້າ';

  @override
  String get text100dhikr => '100 ຊິກຣ໌';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 ໜ້າ';

  @override
  String get text28cclearsky => '28°C - ທ້ອງຟ້າແຈ່ມໃສ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 ໜ້າ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'ກ່ຽວກັບ';

  @override
  String get aboutQuranPro => 'ກ່ຽວກັບ Quran Pro';

  @override
  String get activity => 'ກິດຈະກຳ';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'ກຳລັງໂຫຼດໂຄສະນາ. ກະລຸນາລອງໃໝ່ໃນອີກບໍ່ດົນ.';

  @override
  String get addCustomDhikr => 'ເພີ່ມຊິກຣ໌ກຳນົດເອງ';

  @override
  String get addCustomDhikr2 => 'ເພີ່ມຊິກຣ໌ກຳນົດເອງ';

  @override
  String get addDhikr => 'ເພີ່ມຊິກຣ໌';

  @override
  String get adjustPosition => 'ປັບຕຳແໜ່ງ';

  @override
  String get afternoon => 'ຕອນບ່າຍ';

  @override
  String get alMasjidAlHaram => 'ອານ-ມັສຈິດ ອານ-ຮາຣອມ';

  @override
  String get alhamdulillahiRabbilAlamin => 'ອັນຮໍາດຸລິນລາຮິ ຣັບບິນ ອາລາມີນ';

  @override
  String get alignedToQibla => 'ຫັນຕົງກັບກິບລັດແລ້ວ';

  @override
  String get allPraiseIsDueToAllah => 'ການສັນລະເສີນທັງໝົດເປັນຂອງອັລລໍຮ໌';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'ຄຸນສົມບັດພຣີເມຍມທັງໝົດໃນລາຄາຫຼຸດ';

  @override
  String get allInOneQuranApp => 'ແອັບກຸຣອານຄົບຈົບໃນອັນດຽວ';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'ອັລລໍຮ໌ພຽງພໍສຳລັບຂ້ອຍແລ້ວ ບໍ່ມີພຣະເຈົ້າອື່ນນອກຈາກພຣະອົງ';

  @override
  String get allahIsTheGreatest => 'ອັລລໍຮ໌ຊົງຍິ່ງໃຫຍ່ທີ່ສຸດ';

  @override
  String get allahuAkbar => 'ອັລລໍຮູ ອັກບັຣ໌';

  @override
  String get allahummaSalliAlaMuhammad => 'ອັລລໍຮຸມມາ ຊັນລີ ອາລາ ມູຮໍາມັດ';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'ອະນຸຍາດສິດເຂົ້າເຖິງທີ່ຕັ້ງ ຫຼື ແຕະລອງໃໝ່ ເພື່ອໃຊ້ຕາຕະລາງສຳຮອງ.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'ອະນຸຍາດການແຈ້ງເຕືອນ ເພື່ອຮັບເວລາລະໝາດ ແລະ ການເຕືອນປະຈຳວັນ.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'ອະນຸຍາດໃຫ້ແອັບເຮັດວຽກຢູ່ເບື້ອງຫຼັງ';

  @override
  String get app => 'ແອັບ';

  @override
  String get arabic => 'ອາຣັບ';

  @override
  String get asr => 'ອັສຣ໌';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'ອາອູຊຸ ບິນລາຮິ ມິນ ອັຊ-ຊັຍຕໍານິຣ໌ ຣໍຈີມ';

  @override
  String get avg => 'ສະເລ່ຍ';

  @override
  String get ayah => 'ອາຢັດ';

  @override
  String get batteryOptimization => 'ການປັບແຕ່ງແບັດເຕີຣີ';

  @override
  String get beautifulWidgets => 'ວິດເຈັດສວຍງາມ';

  @override
  String get bestValue => 'ຄຸ້ມຄ່າທີ່ສຸດ';

  @override
  String get blackOnyx => 'ໂອນິກສີດຳ';

  @override
  String get bookmarks => 'ບຸກມາກ';

  @override
  String get brightIvoryInterface => 'ໜ້າຈໍສີງາຊ້າງສົດໃສ';

  @override
  String get calculatingDistance => 'ກຳລັງຄຳນວນໄລຍະທາງ...';

  @override
  String get calibrateYourDirection => 'ປັບທິດທາງຂອງທ່ານ';

  @override
  String get cancel => 'ຍົກເລີກ';

  @override
  String get change => 'ປ່ຽນ';

  @override
  String get changeTasbihMode => 'ປ່ຽນໂໝດຕັສບີຫ໌ບໍ?';

  @override
  String get chooseDhikr => 'ເລືອກຊິກຣ໌';

  @override
  String get chooseDisplayLanguage => 'ເລືອກພາສາທີ່ສະແດງ';

  @override
  String get chooseTheme => 'ເລືອກຮູບແບບ';

  @override
  String get chooseYourPreferredLanguage => 'ເລືອກພາສາທີ່ທ່ານມັກ';

  @override
  String get clickOrSwipeToCount => 'ກົດ ຫຼື ປັດເພື່ອນັບ';

  @override
  String get close => 'ປິດ';

  @override
  String get closeCustomGoal => 'ປິດເປົ້າໝາຍກຳນົດເອງ';

  @override
  String get completeAtLeast33Dhikr => 'ເຮັດຊິກຣ໌ຢ່າງໜ້ອຍ 33 ຄັ້ງ';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'ເຊື່ອມຫົວໃຈຂອງທ່ານກັບກຸຣອານອັນສັກສິດ.';

  @override
  String get continueReading => 'ອ່ານຕໍ່';

  @override
  String get countsPerRound => 'ຈຳນວນນັບຕໍ່ຮອບ';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'ຈັດຄັງສະສົມຂອງທ່ານດ້ວຍແກ້ວມະນີທາງຈິດວິນຍານທີ່ປະດິດຢ່າງປານີດ.';

  @override
  String get current => 'ປັດຈຸບັນ';

  @override
  String get current2 => 'ປັດຈຸບັນ';

  @override
  String get currentLocationToMecca => 'ຈາກທີ່ຕັ້ງປັດຈຸບັນໄປມັກກະຫ໌';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'ຄວາມຄືບໜ້າປັດຈຸບັນຈະຖືກຕັ້ງໃໝ່ສຳລັບໂໝດໃໝ່.';

  @override
  String get currentStreak => 'ຕໍ່ເນື່ອງປັດຈຸບັນ';

  @override
  String get custom => 'ກຳນົດເອງ';

  @override
  String get customDhikr => 'ຊິກຣ໌ກຳນົດເອງ';

  @override
  String get customGoal => 'ເປົ້າໝາຍກຳນົດເອງ';

  @override
  String get customPrayerSounds => 'ສຽງລະໝາດກຳນົດເອງ';

  @override
  String get dailyGoal => 'ເປົ້າໝາຍປະຈຳວັນ';

  @override
  String get dailyQuests => 'ພາລະກິດປະຈຳວັນ';

  @override
  String get dailyQuranReminder => 'ການເຕືອນອ່ານກຸຣອານປະຈຳວັນ';

  @override
  String get dailyReminders => 'ການເຕືອນປະຈຳວັນ';

  @override
  String get dailyTasbih => 'ຕັສບີຫ໌ປະຈຳວັນ';

  @override
  String get dark => 'ມືດ';

  @override
  String get dawn => 'ຮຸ່ງເຊົ້າ';

  @override
  String get debug => 'ດີບັກ';

  @override
  String get dhikr => 'ຊິກຣ໌';

  @override
  String get dhikrActivity => 'ກິດຈະກຳຊິກຣ໌';

  @override
  String get dhuAlHijjah => 'ຊຸ ອານ-ຮິຈຈະຫ໌';

  @override
  String get dhuAlQadah => 'ຊຸ ອານ-ກັອດດະຫ໌';

  @override
  String get dhuhr => 'ຊູຮຣ໌';

  @override
  String get direction => 'ທິດທາງ';

  @override
  String get disableBatteryOptimization => 'ປິດການປັບແຕ່ງແບັດເຕີຣີ';

  @override
  String get disableOptimization => 'ປິດການປັບແຕ່ງ';

  @override
  String get distance => 'ໄລຍະທາງ';

  @override
  String get e => 'ອ';

  @override
  String get eGHasbunallah => 'ຕົວຢ່າງ: ຮັສບຸນັລລໍຮ໌';

  @override
  String get east => 'ຕາເວັນອອກ';

  @override
  String get enableAutoStart => 'ເປີດການເລີ່ມອັດຕະໂນມັດ';

  @override
  String get enableNotifications => 'ເປີດການແຈ້ງເຕືອນ';

  @override
  String get enableReminders => 'ເປີດການເຕືອນ';

  @override
  String get english => 'ອັງກິດ';

  @override
  String get enterYourName => 'ໃສ່ຊື່ຂອງທ່ານ';

  @override
  String get equipped => 'ກຳລັງໃຊ້';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'ທຸກສິ່ງທີ່ທ່ານຕ້ອງການເພື່ອປະສົບການກຸຣອານທີ່ດີກວ່າ.';

  @override
  String get fajr => 'ຟັຈຣ໌';

  @override
  String get feedback => 'ຄຳຕິຊົມ';

  @override
  String get first => 'ທຳອິດ';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ເພື່ອຜົນທີ່ແມ່ນຍຳທີ່ສຸດ ໃຫ້ວາງໂທລະສັບຂອງທ່ານໃຫ້ຮາບພຽງ ແລະ ຫ່າງຈາກວັດຖຸແມ່ເຫຼັກ.';

  @override
  String get free => 'ຟຣີ';

  @override
  String get fullBundle => 'ຊຸດເຕັມ';

  @override
  String get getAnAdFreeExperienceForever =>
      'ຮັບປະສົບການທີ່ບໍ່ມີໂຄສະນາຕະຫຼອດໄປ';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'ຮັບການເຕືອນໃຫ້ອ່ານ ແລະ ຮັກສາຄວາມສະໝ່ຳສະເໝີ.';

  @override
  String get getStarted => 'ເລີ່ມຕົ້ນ';

  @override
  String get gloryAndPraiseBeToAllah =>
      'ມະຫາບໍລິສຸດ ແລະ ການສັນລະເສີນເປັນຂອງອັລລໍຮ໌';

  @override
  String get gloryBeToAllah => 'ມະຫາບໍລິສຸດແດ່ອັລລໍຮ໌';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'ມະຫາບໍລິສຸດແດ່ອັລລໍຮ໌ຜູ້ຊົງຍິ່ງໃຫຍ່';

  @override
  String get goToHome => 'ໄປໜ້າຫຼັກ';

  @override
  String get goldenEngraved => 'ສະຫຼັກລາຍທອງ';

  @override
  String get greenJade => 'ຫຍົກສີຂຽວ';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ຮ່າໂນ້ຍ, ຫວຽດນາມ';

  @override
  String get haptic => 'ການສັ່ນ';

  @override
  String get hasanatHub => 'ສູນຮາຊານາດ';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ຮັສບີຢັລລໍຮູ ລາ ອິລາຮາ ອິນລາ ຮູວາ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ໜ້າຫຼັກ';

  @override
  String get howYourDataIsHandled => 'ຂໍ້ມູນຂອງທ່ານຖືກຈັດການແນວໃດ';

  @override
  String get iSeekForgivenessFromAllah => 'ຂ້ອຍຂໍອະໄພໂທດຈາກອັລລໍຮ໌';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ຂ້ອຍຂໍຄວາມຄຸ້ມຄອງຈາກອັລລໍຮ໌ໃຫ້ພົ້ນຈາກຊັຍຕໍານຜູ້ຖືກສາບແຊ່ງ';

  @override
  String get immediateAlerts => 'ການແຈ້ງເຕືອນທັນທີ';

  @override
  String get inTheNameOfAllah => 'ໃນພຣະນາມຂອງອັລລໍຮ໌';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ແທ້ຈິງ ພວກເຮົາເປັນຂອງອັລລໍຮ໌ ແລະ ຈະກັບຄືນສູ່ພຣະອົງ';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'ອິນນາ ລິນລາຮິ ວະ ອິນນາ ອິລັຍຮິ ຣໍຈິອູນ';

  @override
  String get isha => 'ອິຊາ';

  @override
  String get jumadaAlAwwal => 'ຈຸມາດາ ອານ-ອາວັນ';

  @override
  String get jumadaAlThani => 'ຈຸມາດາ ອານ-ຊານີ';

  @override
  String get juz => 'ຈຸສ';

  @override
  String get juz2 => 'ຈຸສ';

  @override
  String get keepAdhanAlarmsReliable => 'ຮັກສາໃຫ້ໂມງປຸກອາຊານເຊື່ອຖືໄດ້';

  @override
  String get keepItUpYouReDoingGreat => 'ສູ້ຕໍ່ໄປ! ທ່ານເຮັດໄດ້ດີຫຼາຍ.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'ຮັກສາໃຫ້ການເອີ້ນອາຊານເຊື່ອຖືໄດ້ ເຖິງແມ່ນວ່າແອັບຈະຖືກປິດ.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'ລາ ເຮົາລາ ວະ ລາ ກຸວວາຕາ ອິນລາ ບິນລາຮ໌';

  @override
  String get laIlahaIllallah => 'ລາ ອິລາຮາ ອິນລັລລໍຮ໌';

  @override
  String get language => 'ພາສາ';

  @override
  String get lapisLazuli => 'ລາພິສ ລາຊູລີ';

  @override
  String get last7Days => '7 ມື້ຜ່ານມາ';

  @override
  String get later => 'ພາຍຫຼັງ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'ມາເລີ່ມການເດີນທາງອັນງົດງາມຂອງທ່ານກັບກຸຣອານກັນເທາະ.';

  @override
  String get letSPersonalizeYourExperience =>
      'ມາປັບແຕ່ງປະສົບການ\nຂອງທ່ານກັນເທາະ';

  @override
  String get light => 'ແຈ້ງ';

  @override
  String get lightMode => 'ໂໝດແຈ້ງ';

  @override
  String get listenToOrReadAnyAyahToday => 'ຟັງ ຫຼື ອ່ານອາຢັດໃດກໍໄດ້ໃນມື້ນີ້';

  @override
  String get locating => 'ກຳລັງຫາທີ່ຕັ້ງ...';

  @override
  String get location => 'ທີ່ຕັ້ງ';

  @override
  String get locationPermissionsAreDenied => 'ສິດເຂົ້າເຖິງທີ່ຕັ້ງຖືກປະຕິເສດ';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'ສິດເຂົ້າເຖິງທີ່ຕັ້ງຖືກປະຕິເສດຖາວອນ.';

  @override
  String get locationServicesAreDisabled => 'ບໍລິການທີ່ຕັ້ງຖືກປິດ.';

  @override
  String get longestStreak => 'ຕໍ່ເນື່ອງດົນທີ່ສຸດ';

  @override
  String get maghrib => 'ມັຄຣິບ';

  @override
  String get maybeLater => 'ໄວ້ພາຍຫຼັງ';

  @override
  String get meccaSaudiArabia => 'ມັກກະຫ໌, ຊາອຸດີອາຣະເບຍ';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'ໂອ້ພຣະຜູ້ເປັນເຈົ້າຂອງຂ້ອຍ ຂໍຊົງອະໄພ ແລະ ເມດຕາ';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'ໂອ້ພຣະຜູ້ເປັນເຈົ້າຂອງຂ້ອຍ ຂ້ອຍຕ້ອງການສິ່ງດີທີ່ພຣະອົງປະທານລົງມາ';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'ໂອ້ພຣະຜູ້ເປັນເຈົ້າຂອງຂ້ອຍ ຂໍຊົງເພີ່ມພູນຄວາມຮູ້ແກ່ຂ້ອຍ';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'ໂອ້ພຣະຜູ້ເປັນເຈົ້າຂອງຂ້ອຍ ຂໍຊົງເຮັດໃຫ້ງ່າຍ ຢ່າເຮັດໃຫ້ຍາກ';

  @override
  String get n => 'ໜ';

  @override
  String get nameOptional => 'ຊື່ (ບໍ່ບັງຄັບ)';

  @override
  String get next => 'ຕໍ່ໄປ';

  @override
  String get nextDhikr => 'ຊິກຣ໌ຕໍ່ໄປ';

  @override
  String get nextPrayer => 'ລະໝາດຕໍ່ໄປ';

  @override
  String get night => 'ກາງຄືນ';

  @override
  String get nightEmeraldInterface => 'ໜ້າຈໍມໍລະກົດຍາມກາງຄືນ';

  @override
  String get noBookmarksYet => 'ຍັງບໍ່ມີບຸກມາກ';

  @override
  String get noon => 'ຕອນທ່ຽງ';

  @override
  String get north => 'ເໜືອ';

  @override
  String get northeast => 'ຕາເວັນອອກສ່ຽງເໜືອ';

  @override
  String get northwest => 'ຕາເວັນຕົກສ່ຽງເໜືອ';

  @override
  String get notificationsAlarm => 'ການແຈ້ງເຕືອນ ແລະ ໂມງປຸກ';

  @override
  String get notificationsForPrayerTimes => 'ການແຈ້ງເຕືອນສຳລັບເວລາລະໝາດ';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'ໂອ້ອັລລໍຮ໌ ຂໍຊົງປະທານພອນແກ່ມູຮໍາມັດ';

  @override
  String get oEverLivingOSustainer =>
      'ໂອ້ຜູ້ຊົງມີຊີວິດນິລັນດອນ ໂອ້ຜູ້ຊົງຄ້ຳຈຸນ';

  @override
  String get openAutoStart => 'ເປີດການຕັ້ງຄ່າເລີ່ມອັດຕະໂນມັດ';

  @override
  String get optimizeAdhanPerformance => 'ປັບປະສິດທິພາບອາຊານ';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'ໂອ້ພຣະຜູ້ເປັນເຈົ້າຂອງພວກເຮົາ ຂໍຊົງປະທານສິ່ງດີແກ່ພວກເຮົາໃນໂລກນີ້';

  @override
  String get page => 'ໜ້າ';

  @override
  String get pearl => 'ໄຂ່ມຸກ';

  @override
  String get personalizeYourAdhanNotifications =>
      'ປັບແຕ່ງການແຈ້ງເຕືອນອາຊານຂອງທ່ານ';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'ການສັນລະເສີນເປັນຂອງອັລລໍຮ໌ ພຣະຜູ້ອະພິບານແຫ່ງສາກົນໂລກ';

  @override
  String get prayerAlarms => 'ໂມງປຸກລະໝາດ';

  @override
  String get prayerSchedule => 'ຕາຕະລາງລະໝາດ';

  @override
  String get prayerTimeNotifications => 'ການແຈ້ງເຕືອນເວລາລະໝາດ';

  @override
  String get prayerTimesAreLoading => 'ກຳລັງໂຫຼດເວລາລະໝາດ';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'ເວລາລະໝາດ, ກິບລັດ, ການອ່ານກຸຣອານ ແລະ ຕັສບີຫ໌ ໃນເພື່ອນຄູ່ໃຈປະຈຳວັນອັນດຽວ.';

  @override
  String get prayerQuranQibla => 'ລະໝາດ • ກຸຣອານ • ກິບລັດ';

  @override
  String get premiumThemes => 'ຮູບແບບພຣີເມຍມ';

  @override
  String get preparingYourSpiritualJourney =>
      'ກຳລັງກຽມການເດີນທາງທາງຈິດວິນຍານຂອງທ່ານ...';

  @override
  String get previousDhikr => 'ຊິກຣ໌ກ່ອນໜ້າ';

  @override
  String get privacyPolicy => 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ';

  @override
  String get qibla => 'ກິບລັດ';

  @override
  String get qiblaFinder => 'ເຄື່ອງຫາກິບລັດ';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ກຸຣອານ';

  @override
  String get quranPlayback => 'ການຫຼິ້ນສຽງກຸຣອານ';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro ນຳເອົາເວລາລະໝາດ, ກິບລັດ, ການອ່ານກຸຣອານ ແລະ ຕັສບີຫ໌ ມາລວມໄວ້ໃນເພື່ອນຄູ່ໃຈປະຈຳວັນອັນງ່າຍດາຍອັນດຽວ.';

  @override
  String get quranProPreferences => 'ການຕັ້ງຄ່າ Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro ເກັບການຕັ້ງຄ່າເລີ່ມຕົ້ນ ແລະ ຄວາມຄືບໜ້າໄວ້ໃນເຄື່ອງນີ້. ອາດມີການໃຊ້ຂໍ້ມູນວິເຄາະເພື່ອປັບປຸງຄວາມສະຖຽນ ແລະ ຄຸນນະພາບ.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro ເກັບຄວາມຄືບໜ້າຕັສບີຫ໌ຂອງທ່ານໄວ້ໃນເຄື່ອງນີ້. ອາດມີການໃຊ້ຂໍ້ມູນວິເຄາະເພື່ອປັບປຸງຄວາມສະຖຽນຂອງແອັບ ແລະ ຄຸນນະພາບຜະລິດຕະພັນ.';

  @override
  String get quranRecitation => 'ການອ່ານທຳນອງກຸຣອານ';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ຣັບບານາ ອາຕີນາ ຟິດ-ດຸນຢາ ຮາຊານະຫ໌';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ຣັບບີ ອິນນີ ລີມາ ອັນຊັລຕາ ອິລັຍຢາ ມິນ ໄຄຣິນ ຟາກີຣ໌';

  @override
  String get rabbiYassirWaLaTuassir => 'ຣັບບີ ຢັສສິຣ໌ ວະ ລາ ຕຸອັສສິຣ໌';

  @override
  String get rabbiZidniIlma => 'ຣັບບີ ຊິດນີ ອິລມາ';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ຣັບບິຄຟິຣ໌ ວັຣຮໍາ ວະ ອັນຕາ ໄຄຣຸຣ໌ ຣໍຮີມີນ';

  @override
  String get rabiAlAwwal => 'ຣາບີ ອານ-ອາວັນ';

  @override
  String get rabiAlThani => 'ຣາບີ ອານ-ຊານີ';

  @override
  String get rateApp => 'ໃຫ້ຄະແນນແອັບ';

  @override
  String get rateQuranPro => 'ໃຫ້ຄະແນນ Quran Pro';

  @override
  String get readListen => 'ອ່ານ ແລະ ຟັງ';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'ອ່ານກຸຣອານພ້ອມສຽງອ່ານທຳນອງອັນໄພເລາະ.';

  @override
  String get recent => 'ຫຼ້າສຸດ';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'ແນະນຳສຳລັບ Xiaomi, Oppo, Vivo ແລະ Huawei';

  @override
  String get redCarnelian => 'ຄາເນລຽນສີແດງ';

  @override
  String get remindMeAt => 'ເຕືອນຂ້ອຍເວລາ';

  @override
  String get removeAds => 'ລຶບໂຄສະນາ';

  @override
  String get requestingLocationPermission => 'ກຳລັງຂໍສິດເຂົ້າເຖິງທີ່ຕັ້ງ...';

  @override
  String get reset => 'ຕັ້ງໃໝ່';

  @override
  String get retry => 'ລອງໃໝ່';

  @override
  String get returnToCompass => 'ກັບໄປໜ້າເຂັມທິດ';

  @override
  String get s => 'ໃຕ້';

  @override
  String get save => 'ບັນທຶກ';

  @override
  String get saveGoal => 'ບັນທຶກເປົ້າໝາຍ';

  @override
  String get searchSurahNumberArabic => 'ຄົ້ນຫາຊູເລາະ, ເລກ, ອາຣັບ...';

  @override
  String get searchSurah => 'ຄົ້ນຫາຊູເລາະ...';

  @override
  String get selectLanguage => 'ເລືອກພາສາ';

  @override
  String get selectTheThemeYouLike => 'ເລືອກຮູບແບບທີ່ທ່ານມັກ';

  @override
  String get selectYourBead => 'ເລືອກລູກປັດຂອງທ່ານ';

  @override
  String get shop => 'ຮ້ານຄ້າ';

  @override
  String get shopCustomization => 'ຮ້ານຄ້າ ແລະ ການປັບແຕ່ງ';

  @override
  String get sound => 'ສຽງ';

  @override
  String get south => 'ໃຕ້';

  @override
  String get southeast => 'ຕາເວັນອອກສ່ຽງໃຕ້';

  @override
  String get southwest => 'ຕາເວັນຕົກສ່ຽງໃຕ້';

  @override
  String get specialOccasionsAndMore => 'ໂອກາດພິເສດ ແລະ ອື່ນໆ';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'ການໃຫ້ຄະແນນໃນຮ້ານຈະເຊື່ອມຕໍ່ເມື່ອລາຍການໃນຮ້ານພ້ອມແລ້ວ.';

  @override
  String get subhanallahiWaBihamdihi => 'ຊຸບຮານັລລໍຮິ ວະ ບີຮໍາດິຮິ';

  @override
  String get subhanallahilAzim => 'ຊຸບຮານັລລໍຮິນ ອາຊີມ';

  @override
  String get sunset => 'ຕາເວັນຕົກດິນ';

  @override
  String get supportQuranProOnTheStore => 'ສະໜັບສະໜູນ Quran Pro ໃນຮ້ານຄ້າ';

  @override
  String get surah => 'ຊູເລາະ';

  @override
  String get tasbih => 'ຕັສບີຫ໌';

  @override
  String get tasbihSettings => 'ການຕັ້ງຄ່າຕັສບີຫ໌';

  @override
  String get tellUsWhatToImprove => 'ບອກພວກເຮົາວ່າຄວນປັບປຸງຫຍັງ';

  @override
  String get termsOfUse => 'ເງື່ອນໄຂການນຳໃຊ້';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'ຂອບໃຈທີ່ໃຊ້ Quran Pro. ການໃຫ້ຄະແນນໃນຮ້ານຈະເຊື່ອມຕໍ່ເມື່ອລາຍການໃນຮ້ານພ້ອມແລ້ວ.';

  @override
  String get thereIsNoDeityExceptAllah => 'ບໍ່ມີພຣະເຈົ້າອື່ນນອກຈາກອັລລໍຮ໌';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'ບໍ່ມີອຳນາດ ແລະ ພະລັງໃດ ນອກຈາກດ້ວຍອັລລໍຮ໌';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ສິ່ງນີ້ຊ່ວຍໃຫ້ພວກເຮົາປັບການເຕືອນ ແລະ ຕິດຕາມຄວາມຄືບໜ້າຂອງທ່ານ.';

  @override
  String get tigerSEye => 'ຕາເສືອ';

  @override
  String get today => 'ມື້ນີ້';

  @override
  String get total => 'ລວມ';

  @override
  String get totalHasanat => 'ຮາຊານາດລວມ';

  @override
  String get trackProgress => 'ຕິດຕາມຄວາມຄືບໜ້າ';

  @override
  String get trackYourReadingAndAchievements =>
      'ຕິດຕາມການອ່ານ ແລະ ຜົນສຳເລັດຂອງທ່ານ.';

  @override
  String get tryAgain => 'ລອງອີກຄັ້ງ';

  @override
  String get undo => 'ຍົກເລີກການເຮັດ';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'ປົດລັອກຮູບແບບ ແລະ ການປັບແຕ່ງແອັບທັງໝົດ';

  @override
  String get usageGuidelines => 'ຄຳແນະນຳການນຳໃຊ້';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'ກະລຸນາໃຊ້ Quran Pro ດ້ວຍຄວາມເຄົາລົບ ສຳລັບການອິບາດັດສ່ວນຕົວ, ການສຶກສາ ແລະ ກິດວັດອິສລາມປະຈຳວັນ.';

  @override
  String get viewAll => 'ເບິ່ງທັງໝົດ';

  @override
  String get w => 'ຕ';

  @override
  String get welcome => 'ຍິນດີຕ້ອນຮັບ';

  @override
  String get west => 'ຕາເວັນຕົກ';

  @override
  String get yaHayyuYaQayyum => 'ຢາ ຮັຢຢູ ຢາ ກັຢຢູມ';

  @override
  String get youReAllSet => 'ພ້ອມແລ້ວ!';

  @override
  String get yourProgress => 'ຄວາມຄືບໜ້າຂອງທ່ານ';

  @override
  String get continueLabel => 'ສືບຕໍ່';

  @override
  String get amethyst => 'ອະເມທິສ';

  @override
  String get indonesian => 'ອິນໂດເນເຊຍ';

  @override
  String get turkish => 'ຕວກກີ';

  @override
  String get vietnamese => 'ຫວຽດນາມ';

  @override
  String get turquoise => 'ເທີຄວອຍ';

  @override
  String get wood => 'ໄມ້';

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
