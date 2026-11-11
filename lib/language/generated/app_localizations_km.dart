// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Khmer Central Khmer (`km`).
class AppLocalizationsKm extends AppLocalizations {
  AppLocalizationsKm([String locale = 'km']) : super(locale);

  @override
  String get week => 'សប្តាហ៍';

  @override
  String get month => 'ខែ';

  @override
  String get lifetime => 'ពេញមួយជីវិត';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'សម្រាកពីការងាររបស់អ្នកបន្តិច ហើយចំណាយពេលសម្រាប់អល់ឡោះ។';

  @override
  String get prayerAlarmDefaultName => 'សឡាត់';

  @override
  String productUnavailable(Object id) {
    return 'ផលិតផល $id មិនអាចទិញបានទេ។';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'ការទិញ $productId បានជោគជ័យ!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'ការទិញ $productId ត្រូវបានស្តារឡើងវិញ!';
  }

  @override
  String daysCount(Object count) {
    return '$count ថ្ងៃ';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ជិតដល់៖ $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'ចម្ងាយទៅម៉ាក្កះ៖ $distance គម';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'រំលឹកខ្ញុំក្រោយ $minutes នាទី';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'ដល់ពេលសឡាត់ $prayerName ហើយ';
  }

  @override
  String roundValue(Object round) {
    return 'ជុំ៖ $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'បានជ្រើសរើស $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'ជូស $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'ទំព័រ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ហ៊ីហ្ស៊ុប $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName៖ អាយ៉ាត់ $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return 'អាយ៉ាត់ $count';
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
    return 'កម្រិត $level';
  }

  @override
  String get surahAlBaqarah2238 => '(ស៊ូរ៉ោះ អាល់-បាកករ៉ោះ 2:238)';

  @override
  String get text1juz => '1 ជូស';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 ទំព័រ';

  @override
  String get text100dhikr => '100 ហ្ស៊ីគើរ';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 ទំព័រ';

  @override
  String get text28cclearsky => '28°C - មេឃស្រឡះ';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 ទំព័រ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'អំពី';

  @override
  String get aboutQuranPro => 'អំពី Quran Pro';

  @override
  String get activity => 'សកម្មភាព';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'ការផ្សាយពាណិជ្ជកម្មកំពុងផ្ទុក។ សូមព្យាយាមម្តងទៀតបន្តិចទៀត។';

  @override
  String get addCustomDhikr => 'បន្ថែមហ្ស៊ីគើរតាមចិត្ត';

  @override
  String get addCustomDhikr2 => 'បន្ថែមហ្ស៊ីគើរតាមចិត្ត';

  @override
  String get addDhikr => 'បន្ថែមហ្ស៊ីគើរ';

  @override
  String get adjustPosition => 'កែតម្រូវទីតាំង';

  @override
  String get afternoon => 'រសៀល';

  @override
  String get alMasjidAlHaram => 'អាល់-ម៉ាស្ជិទ អាល់-ហារ៉ាម';

  @override
  String get alhamdulillahiRabbilAlamin =>
      'អាល់ហាំឌូលីល់ឡាហ៊ី រ៉ាប់ប៊ិល អាឡាមីន';

  @override
  String get alignedToQibla => 'ត្រង់ទៅគីបឡាហើយ';

  @override
  String get allPraiseIsDueToAllah => 'ការសរសើរទាំងអស់សម្រាប់អល់ឡោះ';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'មុខងារពិសេសទាំងអស់ក្នុងតម្លៃបញ្ចុះ';

  @override
  String get allInOneQuranApp => 'កម្មវិធីគួរអានពេញលេញក្នុងមួយ';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'អល់ឡោះគ្រប់គ្រាន់សម្រាប់ខ្ញុំ គ្មានព្រះជាម្ចាស់ណាក្រៅពីទ្រង់ឡើយ';

  @override
  String get allahIsTheGreatest => 'អល់ឡោះមហាធំធេងបំផុត';

  @override
  String get allahuAkbar => 'អល់ឡោហ៊ូ អាកបារ';

  @override
  String get allahummaSalliAlaMuhammad => 'អល់ឡោហ៊ុមម៉ា សល់លី អាឡា មូហាំម៉ាត់';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'សូមអនុញ្ញាតសិទ្ធិទីតាំង ឬចុចព្យាយាមឡើងវិញ ដើម្បីប្រើកាលវិភាគបម្រុង។';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'អនុញ្ញាតការជូនដំណឹង ដើម្បីទទួលម៉ោងសឡាត់ និងការរំលឹកប្រចាំថ្ងៃ។';

  @override
  String get allowTheAppToRunInTheBackground =>
      'អនុញ្ញាតឲ្យកម្មវិធីដំណើរការនៅផ្ទៃខាងក្រោយ';

  @override
  String get app => 'កម្មវិធី';

  @override
  String get arabic => 'អារ៉ាប់';

  @override
  String get asr => 'អាសើរ';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'អាអ៊ូហ្ស៊ូ ប៊ិលឡាហ៊ី មិន អាស់-ស្ហៃតានីរ រ៉ាជីម';

  @override
  String get avg => 'មធ្យម';

  @override
  String get ayah => 'អាយ៉ាត់';

  @override
  String get batteryOptimization => 'ការបង្កើនប្រសិទ្ធភាពថ្ម';

  @override
  String get beautifulWidgets => 'វិដជិតស្អាតៗ';

  @override
  String get bestValue => 'តម្លៃល្អបំផុត';

  @override
  String get blackOnyx => 'អូនីកខ្មៅ';

  @override
  String get bookmarks => 'ចំណាំ';

  @override
  String get brightIvoryInterface => 'ផ្ទៃប្រទាក់ភ្លឺពណ៌ភ្លុក';

  @override
  String get calculatingDistance => 'កំពុងគណនាចម្ងាយ...';

  @override
  String get calibrateYourDirection => 'ក្រិតទិសដៅរបស់អ្នក';

  @override
  String get cancel => 'បោះបង់';

  @override
  String get change => 'ប្តូរ';

  @override
  String get changeTasbihMode => 'ប្តូររបៀបតាស់ប៊ីះ?';

  @override
  String get chooseDhikr => 'ជ្រើសរើសហ្ស៊ីគើរ';

  @override
  String get chooseDisplayLanguage => 'ជ្រើសរើសភាសាបង្ហាញ';

  @override
  String get chooseTheme => 'ជ្រើសរើសរចនាបថ';

  @override
  String get chooseYourPreferredLanguage => 'ជ្រើសរើសភាសាដែលអ្នកចូលចិត្ត';

  @override
  String get clickOrSwipeToCount => 'ចុច ឬអូសដើម្បីរាប់';

  @override
  String get close => 'បិទ';

  @override
  String get closeCustomGoal => 'បិទគោលដៅតាមចិត្ត';

  @override
  String get completeAtLeast33Dhikr => 'បំពេញហ្ស៊ីគើរយ៉ាងតិច 33';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'ភ្ជាប់ដួងចិត្តរបស់អ្នកជាមួយគួរអានដ៏ពិសិដ្ឋ។';

  @override
  String get continueReading => 'បន្តការអាន';

  @override
  String get countsPerRound => 'ចំនួនរាប់ក្នុងមួយជុំ';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'រៀបចំបណ្តុំរបស់អ្នកជាមួយត្បូងខាងវិញ្ញាណដែលបង្កើតដោយជាងជំនាញ។';

  @override
  String get current => 'បច្ចុប្បន្ន';

  @override
  String get current2 => 'បច្ចុប្បន្ន';

  @override
  String get currentLocationToMecca => 'ពីទីតាំងបច្ចុប្បន្នទៅម៉ាក្កះ';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'វឌ្ឍនភាពបច្ចុប្បន្ននឹងកំណត់ឡើងវិញសម្រាប់របៀបថ្មី។';

  @override
  String get currentStreak => 'ថ្ងៃជាប់គ្នាបច្ចុប្បន្ន';

  @override
  String get custom => 'តាមចិត្ត';

  @override
  String get customDhikr => 'ហ្ស៊ីគើរតាមចិត្ត';

  @override
  String get customGoal => 'គោលដៅតាមចិត្ត';

  @override
  String get customPrayerSounds => 'សំឡេងសឡាត់តាមចិត្ត';

  @override
  String get dailyGoal => 'គោលដៅប្រចាំថ្ងៃ';

  @override
  String get dailyQuests => 'បេសកកម្មប្រចាំថ្ងៃ';

  @override
  String get dailyQuranReminder => 'ការរំលឹកគួរអានប្រចាំថ្ងៃ';

  @override
  String get dailyReminders => 'ការរំលឹកប្រចាំថ្ងៃ';

  @override
  String get dailyTasbih => 'តាស់ប៊ីះប្រចាំថ្ងៃ';

  @override
  String get dark => 'ងងឹត';

  @override
  String get dawn => 'ព្រឹកព្រលឹម';

  @override
  String get debug => 'ដេប៊ុក';

  @override
  String get dhikr => 'ហ្ស៊ីគើរ';

  @override
  String get dhikrActivity => 'សកម្មភាពហ្ស៊ីគើរ';

  @override
  String get dhuAlHijjah => 'ហ្ស៊ូ អាល់-ហិជ្ជះ';

  @override
  String get dhuAlQadah => 'ហ្ស៊ូ អាល់-កៈដះ';

  @override
  String get dhuhr => 'ហ្ស៊ូហឺរ';

  @override
  String get direction => 'ទិសដៅ';

  @override
  String get disableBatteryOptimization => 'បិទការបង្កើនប្រសិទ្ធភាពថ្ម';

  @override
  String get disableOptimization => 'បិទការបង្កើនប្រសិទ្ធភាព';

  @override
  String get distance => 'ចម្ងាយ';

  @override
  String get e => 'ក';

  @override
  String get eGHasbunallah => 'ឧ. ហាស់ប៊ូនអល់ឡោះ';

  @override
  String get east => 'កើត';

  @override
  String get enableAutoStart => 'បើកការចាប់ផ្តើមស្វ័យប្រវត្តិ';

  @override
  String get enableNotifications => 'បើកការជូនដំណឹង';

  @override
  String get enableReminders => 'បើកការរំលឹក';

  @override
  String get english => 'អង់គ្លេស';

  @override
  String get enterYourName => 'បញ្ចូលឈ្មោះរបស់អ្នក';

  @override
  String get equipped => 'កំពុងប្រើ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'អ្វីៗគ្រប់យ៉ាងដែលអ្នកត្រូវការសម្រាប់បទពិសោធន៍គួរអានកាន់តែប្រសើរ។';

  @override
  String get fajr => 'ហ្វាជើរ';

  @override
  String get feedback => 'មតិយោបល់';

  @override
  String get first => 'ដំបូង';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ដើម្បីលទ្ធផលត្រឹមត្រូវបំផុត សូមដាក់ទូរស័ព្ទរបស់អ្នកឲ្យរាបស្មើ និងឆ្ងាយពីវត្ថុមេដែក។';

  @override
  String get free => 'ឥតគិតថ្លៃ';

  @override
  String get fullBundle => 'កញ្ចប់ពេញលេញ';

  @override
  String get getAnAdFreeExperienceForever =>
      'ទទួលបទពិសោធន៍គ្មានការផ្សាយពាណិជ្ជកម្មជារៀងរហូត';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'ទទួលការរំលឹកឲ្យអាន និងរក្សាភាពទៀងទាត់។';

  @override
  String get getStarted => 'ចាប់ផ្តើម';

  @override
  String get gloryAndPraiseBeToAllah => 'មហាបរិសុទ្ធ និងការសរសើរដល់អល់ឡោះ';

  @override
  String get gloryBeToAllah => 'មហាបរិសុទ្ធដល់អល់ឡោះ';

  @override
  String get gloryBeToAllahTheMagnificent => 'មហាបរិសុទ្ធដល់អល់ឡោះដ៏មហិមា';

  @override
  String get goToHome => 'ទៅទំព័រដើម';

  @override
  String get goldenEngraved => 'ចម្លាក់មាស';

  @override
  String get greenJade => 'ជេដបៃតង';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ហាណូយ វៀតណាម';

  @override
  String get haptic => 'ការញ័រ';

  @override
  String get hasanatHub => 'មជ្ឈមណ្ឌលហាសាណាត់';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa =>
      'ហាស់ប៊ីយ៉ាល់ឡោហ៊ូ ឡា អ៊ីឡាហា អ៊ិលឡា ហ៊ូវ៉ា';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ទំព័រដើម';

  @override
  String get howYourDataIsHandled => 'របៀបដែលទិន្នន័យរបស់អ្នកត្រូវបានដោះស្រាយ';

  @override
  String get iSeekForgivenessFromAllah => 'ខ្ញុំសុំការអភ័យទោសពីអល់ឡោះ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ខ្ញុំសុំពឹងអល់ឡោះឲ្យផុតពីស្ហៃតានដ៏ត្រូវបណ្តាសា';

  @override
  String get immediateAlerts => 'ការជូនដំណឹងភ្លាមៗ';

  @override
  String get inTheNameOfAllah => 'ក្នុងនាមអល់ឡោះ';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ពិតណាស់ យើងជារបស់អល់ឡោះ ហើយយើងនឹងវិលត្រឡប់ទៅកាន់ទ្រង់វិញ';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'អ៊ិនណា លីល់ឡាហ៊ី វ៉ា អ៊ិនណា អ៊ីឡៃហ៊ី រ៉ាជីអ៊ូន';

  @override
  String get isha => 'អ៊ីស្ហា';

  @override
  String get jumadaAlAwwal => 'ជូម៉ាដា អាល់-អាវ៉ាល់';

  @override
  String get jumadaAlThani => 'ជូម៉ាដា អាល់-សានី';

  @override
  String get juz => 'ជូស';

  @override
  String get juz2 => 'ជូស';

  @override
  String get keepAdhanAlarmsReliable =>
      'រក្សាម៉ោងរោទ៍អាហ្សានឲ្យដំណើរការជឿជាក់បាន';

  @override
  String get keepItUpYouReDoingGreat => 'បន្តទៀត! អ្នកកំពុងធ្វើបានល្អណាស់។';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'រក្សាការហៅអាហ្សានឲ្យដំណើរការជឿជាក់បាន ទោះកម្មវិធីត្រូវបានបិទក៏ដោយ។';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'ឡា ហៅឡា វ៉ា ឡា គូវ្វាតា អ៊ិលឡា ប៊ិលឡាះ';

  @override
  String get laIlahaIllallah => 'ឡា អ៊ីឡាហា អ៊ិលឡល់ឡោះ';

  @override
  String get language => 'ភាសា';

  @override
  String get lapisLazuli => 'ឡាពីស ឡាហ្ស៊ូលី';

  @override
  String get last7Days => '7 ថ្ងៃចុងក្រោយ';

  @override
  String get later => 'ពេលក្រោយ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'តោះចាប់ផ្តើមដំណើរដ៏ស្រស់ស្អាតរបស់អ្នកជាមួយគួរអាន។';

  @override
  String get letSPersonalizeYourExperience =>
      'តោះកំណត់បទពិសោធន៍\nរបស់អ្នកតាមបំណង';

  @override
  String get light => 'ភ្លឺ';

  @override
  String get lightMode => 'របៀបភ្លឺ';

  @override
  String get listenToOrReadAnyAyahToday => 'ស្តាប់ ឬអានអាយ៉ាត់ណាមួយថ្ងៃនេះ';

  @override
  String get locating => 'កំពុងកំណត់ទីតាំង...';

  @override
  String get location => 'ទីតាំង';

  @override
  String get locationPermissionsAreDenied => 'សិទ្ធិទីតាំងត្រូវបានបដិសេធ';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'សិទ្ធិទីតាំងត្រូវបានបដិសេធជាអចិន្ត្រៃយ៍។';

  @override
  String get locationServicesAreDisabled => 'សេវាកម្មទីតាំងត្រូវបានបិទ។';

  @override
  String get longestStreak => 'ថ្ងៃជាប់គ្នាយូរបំផុត';

  @override
  String get maghrib => 'ម៉ាហ្គ្រិប';

  @override
  String get maybeLater => 'ប្រហែលពេលក្រោយ';

  @override
  String get meccaSaudiArabia => 'ម៉ាក្កះ អារ៉ាប៊ីសាអូឌីត';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'ឱម្ចាស់របស់ខ្ញុំ សូមអភ័យទោស និងអាណិតមេត្តា';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'ឱម្ចាស់របស់ខ្ញុំ ខ្ញុំត្រូវការនូវប្រការល្អដែលទ្រង់បញ្ចុះមក';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'ឱម្ចាស់របស់ខ្ញុំ សូមបន្ថែមចំណេះដឹងដល់ខ្ញុំ';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'ឱម្ចាស់របស់ខ្ញុំ សូមធ្វើឲ្យងាយស្រួល កុំធ្វើឲ្យពិបាក';

  @override
  String get n => 'ជ';

  @override
  String get nameOptional => 'ឈ្មោះ (ស្រេចចិត្ត)';

  @override
  String get next => 'បន្ទាប់';

  @override
  String get nextDhikr => 'ហ្ស៊ីគើរបន្ទាប់';

  @override
  String get nextPrayer => 'សឡាត់បន្ទាប់';

  @override
  String get night => 'យប់';

  @override
  String get nightEmeraldInterface => 'ផ្ទៃប្រទាក់មរកតយប់';

  @override
  String get noBookmarksYet => 'មិនទាន់មានចំណាំនៅឡើយទេ';

  @override
  String get noon => 'ថ្ងៃត្រង់';

  @override
  String get north => 'ជើង';

  @override
  String get northeast => 'ឦសាន';

  @override
  String get northwest => 'ពាយ័ព្យ';

  @override
  String get notificationsAlarm => 'ការជូនដំណឹង និងម៉ោងរោទ៍';

  @override
  String get notificationsForPrayerTimes => 'ការជូនដំណឹងសម្រាប់ម៉ោងសឡាត់';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'ឱអល់ឡោះ សូមប្រទានពរជ័យដល់មូហាំម៉ាត់';

  @override
  String get oEverLivingOSustainer =>
      'ឱព្រះដ៏មានជីវិតអមតៈ ឱព្រះដ៏ទ្រទ្រង់អ្វីៗទាំងអស់';

  @override
  String get openAutoStart => 'បើកការកំណត់ចាប់ផ្តើមស្វ័យប្រវត្តិ';

  @override
  String get optimizeAdhanPerformance => 'បង្កើនប្រសិទ្ធភាពដំណើរការអាហ្សាន';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'ឱម្ចាស់របស់យើង សូមប្រទានប្រការល្អដល់យើងក្នុងលោកិយនេះ';

  @override
  String get page => 'ទំព័រ';

  @override
  String get pearl => 'គជ់';

  @override
  String get personalizeYourAdhanNotifications =>
      'កំណត់ការជូនដំណឹងអាហ្សានតាមចិត្តអ្នក';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'ការសរសើរសម្រាប់អល់ឡោះ ម្ចាស់នៃពិភពទាំងអស់';

  @override
  String get prayerAlarms => 'ម៉ោងរោទ៍សឡាត់';

  @override
  String get prayerSchedule => 'កាលវិភាគសឡាត់';

  @override
  String get prayerTimeNotifications => 'ការជូនដំណឹងម៉ោងសឡាត់';

  @override
  String get prayerTimesAreLoading => 'កំពុងផ្ទុកម៉ោងសឡាត់';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'ម៉ោងសឡាត់ គីបឡា ការអានគួរអាន និងតាស់ប៊ីះ ក្នុងដៃគូប្រចាំថ្ងៃតែមួយ។';

  @override
  String get prayerQuranQibla => 'សឡាត់ • គួរអាន • គីបឡា';

  @override
  String get premiumThemes => 'រចនាបថពិសេស';

  @override
  String get preparingYourSpiritualJourney =>
      'កំពុងរៀបចំដំណើរខាងវិញ្ញាណរបស់អ្នក...';

  @override
  String get previousDhikr => 'ហ្ស៊ីគើរមុន';

  @override
  String get privacyPolicy => 'គោលការណ៍ឯកជនភាព';

  @override
  String get qibla => 'គីបឡា';

  @override
  String get qiblaFinder => 'ឧបករណ៍រកគីបឡា';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'គួរអាន';

  @override
  String get quranPlayback => 'ការចាក់សំឡេងគួរអាន';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro នាំមកនូវម៉ោងសឡាត់ គីបឡា ការអានគួរអាន និងតាស់ប៊ីះ ក្នុងដៃគូប្រចាំថ្ងៃដ៏សាមញ្ញតែមួយ។';

  @override
  String get quranProPreferences => 'ការកំណត់ចំណូលចិត្ត Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro រក្សាទុកការកំណត់ចាប់ផ្តើម និងវឌ្ឍនភាពនៅលើឧបករណ៍នេះ។ ទិន្នន័យវិភាគអាចត្រូវបានប្រើដើម្បីកែលម្អស្ថិរភាព និងគុណភាព។';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro រក្សាទុកវឌ្ឍនភាពតាស់ប៊ីះរបស់អ្នកនៅលើឧបករណ៍នេះ។ ទិន្នន័យវិភាគអាចត្រូវបានប្រើដើម្បីកែលម្អស្ថិរភាពកម្មវិធី និងគុណភាពផលិតផល។';

  @override
  String get quranRecitation => 'ការសូត្រគួរអាន';

  @override
  String get rabbanaAtinaFidDunyaHasanah =>
      'រ៉ាប់បាណា អាទីណា ហ្វិដ-ឌុនយ៉ា ហាសាណះ';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'រ៉ាប់ប៊ី អ៊ិននី លីម៉ា អាន់សាល់តា អ៊ីឡៃយ៉ា មិន ខយរិន ហ្វាកៀរ';

  @override
  String get rabbiYassirWaLaTuassir => 'រ៉ាប់ប៊ី យ៉ាស់ស៊ីរ វ៉ា ឡា ទូអាស់ស៊ីរ';

  @override
  String get rabbiZidniIlma => 'រ៉ាប់ប៊ី ហ្ស៊ីដនី អ៊ិលម៉ា';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'រ៉ាប់ប៊ិគហ្វិរ វ៉ារហាំ វ៉ា អាន់តា ខយរូរ រ៉ាហ៊ីមីន';

  @override
  String get rabiAlAwwal => 'រ៉ាប៊ី អាល់-អាវ៉ាល់';

  @override
  String get rabiAlThani => 'រ៉ាប៊ី អាល់-សានី';

  @override
  String get rateApp => 'វាយតម្លៃកម្មវិធី';

  @override
  String get rateQuranPro => 'វាយតម្លៃ Quran Pro';

  @override
  String get readListen => 'អាន និងស្តាប់';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'អានគួរអានជាមួយការសូត្រដ៏ពីរោះ។';

  @override
  String get recent => 'ថ្មីៗ';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'ណែនាំសម្រាប់ Xiaomi, Oppo, Vivo និង Huawei';

  @override
  String get redCarnelian => 'កាណេលៀនក្រហម';

  @override
  String get remindMeAt => 'រំលឹកខ្ញុំនៅម៉ោង';

  @override
  String get removeAds => 'ដកការផ្សាយពាណិជ្ជកម្ម';

  @override
  String get requestingLocationPermission => 'កំពុងស្នើសិទ្ធិទីតាំង...';

  @override
  String get reset => 'កំណត់ឡើងវិញ';

  @override
  String get retry => 'ព្យាយាមឡើងវិញ';

  @override
  String get returnToCompass => 'ត្រឡប់ទៅត្រីវិស័យ';

  @override
  String get s => 'ត';

  @override
  String get save => 'រក្សាទុក';

  @override
  String get saveGoal => 'រក្សាទុកគោលដៅ';

  @override
  String get searchSurahNumberArabic => 'ស្វែងរកស៊ូរ៉ោះ លេខ អារ៉ាប់...';

  @override
  String get searchSurah => 'ស្វែងរកស៊ូរ៉ោះ...';

  @override
  String get selectLanguage => 'ជ្រើសរើសភាសា';

  @override
  String get selectTheThemeYouLike => 'ជ្រើសរើសរចនាបថដែលអ្នកចូលចិត្ត';

  @override
  String get selectYourBead => 'ជ្រើសរើសគ្រាប់តាស់ប៊ីះរបស់អ្នក';

  @override
  String get shop => 'ហាង';

  @override
  String get shopCustomization => 'ហាង និងការតុបតែង';

  @override
  String get sound => 'សំឡេង';

  @override
  String get south => 'ត្បូង';

  @override
  String get southeast => 'អាគ្នេយ៍';

  @override
  String get southwest => 'និរតី';

  @override
  String get specialOccasionsAndMore => 'ឱកាសពិសេស និងច្រើនទៀត';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'ការវាយតម្លៃក្នុងហាងនឹងត្រូវភ្ជាប់ នៅពេលបញ្ជីផលិតកម្មរួចរាល់។';

  @override
  String get subhanallahiWaBihamdihi => 'ស៊ូបហានអល់ឡោហ៊ី វ៉ា ប៊ីហាំឌីហ៊ី';

  @override
  String get subhanallahilAzim => 'ស៊ូបហានអល់ឡោហ៊ិល អាហ្ស៊ីម';

  @override
  String get sunset => 'ថ្ងៃលិច';

  @override
  String get supportQuranProOnTheStore => 'គាំទ្រ Quran Pro នៅក្នុងហាង';

  @override
  String get surah => 'ស៊ូរ៉ោះ';

  @override
  String get tasbih => 'តាស់ប៊ីះ';

  @override
  String get tasbihSettings => 'ការកំណត់តាស់ប៊ីះ';

  @override
  String get tellUsWhatToImprove => 'ប្រាប់យើងពីអ្វីដែលត្រូវកែលម្អ';

  @override
  String get termsOfUse => 'លក្ខខណ្ឌប្រើប្រាស់';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'អរគុណដែលបានប្រើ Quran Pro។ ការវាយតម្លៃក្នុងហាងនឹងត្រូវភ្ជាប់ នៅពេលបញ្ជីហាងផលិតកម្មរួចរាល់។';

  @override
  String get thereIsNoDeityExceptAllah => 'គ្មានព្រះជាម្ចាស់ណាក្រៅពីអល់ឡោះ';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'គ្មានអំណាច និងកម្លាំងណាក្រៅពីអល់ឡោះ';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'នេះជួយយើងកំណត់ការរំលឹក និងតាមដានវឌ្ឍនភាពរបស់អ្នក។';

  @override
  String get tigerSEye => 'ភ្នែកខ្លា';

  @override
  String get today => 'ថ្ងៃនេះ';

  @override
  String get total => 'សរុប';

  @override
  String get totalHasanat => 'ហាសាណាត់សរុប';

  @override
  String get trackProgress => 'តាមដានវឌ្ឍនភាព';

  @override
  String get trackYourReadingAndAchievements =>
      'តាមដានការអាន និងសមិទ្ធផលរបស់អ្នក។';

  @override
  String get tryAgain => 'ព្យាយាមម្តងទៀត';

  @override
  String get undo => 'មិនធ្វើវិញ';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'ដោះសោរចនាបថ និងការតុបតែងកម្មវិធីទាំងអស់';

  @override
  String get usageGuidelines => 'គោលការណ៍ណែនាំការប្រើប្រាស់';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'សូមប្រើ Quran Pro ដោយគោរព សម្រាប់ការគោរពប្រណិប័តន៍ផ្ទាល់ខ្លួន ការសិក្សា និងទម្លាប់អ៊ីស្លាមប្រចាំថ្ងៃ។';

  @override
  String get viewAll => 'មើលទាំងអស់';

  @override
  String get w => 'ល';

  @override
  String get welcome => 'សូមស្វាគមន៍';

  @override
  String get west => 'លិច';

  @override
  String get yaHayyuYaQayyum => 'យ៉ា ហៃយូ យ៉ា កយយូម';

  @override
  String get youReAllSet => 'រួចរាល់ហើយ!';

  @override
  String get yourProgress => 'វឌ្ឍនភាពរបស់អ្នក';

  @override
  String get continueLabel => 'បន្ត';

  @override
  String get amethyst => 'អាមេទីស';

  @override
  String get indonesian => 'ឥណ្ឌូនេស៊ី';

  @override
  String get turkish => 'តួកគី';

  @override
  String get vietnamese => 'វៀតណាម';

  @override
  String get turquoise => 'ទួកកូអ៊ីស';

  @override
  String get wood => 'ឈើ';

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
