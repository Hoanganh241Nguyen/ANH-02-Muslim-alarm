// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String get week => 'ആഴ്ച';

  @override
  String get month => 'മാസം';

  @override
  String get lifetime => 'ആജീവനാന്തം';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'ജോലിയിൽ നിന്ന് അൽപം വിരമിച്ച് അല്ലാഹുവിനായി സമയം കണ്ടെത്തുക.';

  @override
  String get prayerAlarmDefaultName => 'നമസ്കാരം';

  @override
  String productUnavailable(Object id) {
    return '$id എന്ന ഉൽപ്പന്നം വാങ്ങാൻ ലഭ്യമല്ല.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId വാങ്ങൽ വിജയകരം!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId വാങ്ങൽ പുനഃസ്ഥാപിച്ചു!';
  }

  @override
  String daysCount(Object count) {
    return '$count ദിവസം';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'അടുത്തത്: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'മക്കയിലേക്കുള്ള ദൂരം: $distance കി.മീ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes മിനിറ്റിന് ശേഷം ഓർമ്മിപ്പിക്കുക';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName നമസ്കാരത്തിന്റെ സമയമായി';
  }

  @override
  String roundValue(Object round) {
    return 'റൗണ്ട്: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language തിരഞ്ഞെടുത്തു';
  }

  @override
  String juzNumber(Object juz) {
    return 'ജുസ്അ് $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'പേജ് $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ഹിസ്ബ് $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ആയത്ത് $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ആയത്തുകൾ';
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
    return 'ലെവൽ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(സൂറ അൽ-ബഖറ 2:238)';

  @override
  String get text1juz => '1 ജുസ്അ്';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 പേജുകൾ';

  @override
  String get text100dhikr => '100 ദിക്ർ';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 പേജുകൾ';

  @override
  String get text28cclearsky => '28°C - തെളിഞ്ഞ ആകാശം';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 പേജുകൾ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'കുറിച്ച്';

  @override
  String get aboutQuranPro => 'ഖുർആൻ പ്രോയെക്കുറിച്ച്';

  @override
  String get activity => 'പ്രവർത്തനം';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'പരസ്യം ലോഡ് ചെയ്യുന്നു. അൽപം കഴിഞ്ഞ് വീണ്ടും ശ്രമിക്കുക.';

  @override
  String get addCustomDhikr => 'സ്വന്തം ദിക്ർ ചേർക്കുക';

  @override
  String get addCustomDhikr2 => 'സ്വന്തം ദിക്ർ ചേർക്കുക';

  @override
  String get addDhikr => 'ദിക്ർ ചേർക്കുക';

  @override
  String get adjustPosition => 'സ്ഥാനം ക്രമീകരിക്കുക';

  @override
  String get afternoon => 'ഉച്ചകഴിഞ്ഞ്';

  @override
  String get alMasjidAlHaram => 'അൽ-മസ്ജിദുൽ ഹറാം';

  @override
  String get alhamdulillahiRabbilAlamin => 'അൽഹംദുലില്ലാഹി റബ്ബിൽ ആലമീൻ';

  @override
  String get alignedToQibla => 'ഖിബ്‌ലയിലേക്ക് നേരെയായി';

  @override
  String get allPraiseIsDueToAllah => 'എല്ലാ സ്തുതിയും അല്ലാഹുവിന്';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'എല്ലാ പ്രീമിയം സൗകര്യങ്ങളും കിഴിവ് വിലയിൽ';

  @override
  String get allInOneQuranApp => 'എല്ലാം ഒന്നിൽ ഖുർആൻ ആപ്പ്';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'എനിക്ക് അല്ലാഹു മതി; അവനല്ലാതെ ആരാധ്യനില്ല';

  @override
  String get allahIsTheGreatest => 'അല്ലാഹു ഏറ്റവും വലിയവൻ';

  @override
  String get allahuAkbar => 'അല്ലാഹു അക്ബർ';

  @override
  String get allahummaSalliAlaMuhammad => 'അല്ലാഹുമ്മ സ്വല്ലി അലാ മുഹമ്മദ്';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'ലൊക്കേഷൻ അനുമതി നൽകുക, അല്ലെങ്കിൽ കരുതൽ സമയക്രമം ഉപയോഗിക്കാൻ വീണ്ടും ശ്രമിക്കുക അമർത്തുക.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'നമസ്കാര സമയങ്ങളും ദൈനംദിന ഓർമ്മപ്പെടുത്തലുകളും ലഭിക്കാൻ അറിയിപ്പുകൾ അനുവദിക്കുക.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'ആപ്പ് പശ്ചാത്തലത്തിൽ പ്രവർത്തിക്കാൻ അനുവദിക്കുക';

  @override
  String get app => 'ആപ്പ്';

  @override
  String get arabic => 'അറബിക്';

  @override
  String get asr => 'അസ്ർ';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'അഊദു ബില്ലാഹി മിനശ്ശൈത്വാനിർ റജീം';

  @override
  String get avg => 'ശരാശരി';

  @override
  String get ayah => 'ആയത്ത്';

  @override
  String get batteryOptimization => 'ബാറ്ററി ഒപ്റ്റിമൈസേഷൻ';

  @override
  String get beautifulWidgets => 'മനോഹരമായ വിജറ്റുകൾ';

  @override
  String get bestValue => 'ഏറ്റവും മികച്ച മൂല്യം';

  @override
  String get blackOnyx => 'കറുത്ത ഓണിക്സ്';

  @override
  String get bookmarks => 'ബുക്ക്മാർക്കുകൾ';

  @override
  String get brightIvoryInterface => 'തിളക്കമുള്ള ഐവറി ഇന്റർഫേസ്';

  @override
  String get calculatingDistance => 'ദൂരം കണക്കാക്കുന്നു...';

  @override
  String get calibrateYourDirection => 'നിങ്ങളുടെ ദിശ ക്രമീകരിക്കുക';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get change => 'മാറ്റുക';

  @override
  String get changeTasbihMode => 'തസ്ബീഹ് മോഡ് മാറ്റണോ?';

  @override
  String get chooseDhikr => 'ദിക്ർ തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseDisplayLanguage => 'ഡിസ്പ്ലേ ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseTheme => 'തീം തിരഞ്ഞെടുക്കുക';

  @override
  String get chooseYourPreferredLanguage => 'ഇഷ്ടമുള്ള ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get clickOrSwipeToCount =>
      'എണ്ണാൻ ടാപ്പ് ചെയ്യുക അല്ലെങ്കിൽ സ്വൈപ്പ് ചെയ്യുക';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get closeCustomGoal => 'സ്വന്തം ലക്ഷ്യം അടയ്ക്കുക';

  @override
  String get completeAtLeast33Dhikr => 'കുറഞ്ഞത് 33 ദിക്ർ പൂർത്തിയാക്കുക';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'നിങ്ങളുടെ ഹൃദയത്തെ വിശുദ്ധ ഖുർആനുമായി ചേർക്കുക.';

  @override
  String get continueReading => 'വായന തുടരുക';

  @override
  String get countsPerRound => 'ഒരു റൗണ്ടിലെ എണ്ണം';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'വിദഗ്ധമായി രൂപകൽപ്പന ചെയ്ത ആത്മീയ രത്നങ്ങളാൽ നിങ്ങളുടെ ശേഖരം ഒരുക്കുക.';

  @override
  String get current => 'നിലവിലെ';

  @override
  String get current2 => 'നിലവിലെ';

  @override
  String get currentLocationToMecca => 'നിലവിലെ സ്ഥലത്തുനിന്ന് മക്കയിലേക്ക്';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'പുതിയ മോഡിനായി നിലവിലെ പുരോഗതി പുനഃസജ്ജമാക്കും.';

  @override
  String get currentStreak => 'നിലവിലെ സ്ട്രീക്ക്';

  @override
  String get custom => 'ഇഷ്ടാനുസൃതം';

  @override
  String get customDhikr => 'സ്വന്തം ദിക്ർ';

  @override
  String get customGoal => 'സ്വന്തം ലക്ഷ്യം';

  @override
  String get customPrayerSounds => 'ഇഷ്ടാനുസൃത ബാങ്ക് ശബ്ദങ്ങൾ';

  @override
  String get dailyGoal => 'ദൈനംദിന ലക്ഷ്യം';

  @override
  String get dailyQuests => 'ദൈനംദിന ദൗത്യങ്ങൾ';

  @override
  String get dailyQuranReminder => 'ദൈനംദിന ഖുർആൻ ഓർമ്മപ്പെടുത്തൽ';

  @override
  String get dailyReminders => 'ദൈനംദിന ഓർമ്മപ്പെടുത്തലുകൾ';

  @override
  String get dailyTasbih => 'ദൈനംദിന തസ്ബീഹ്';

  @override
  String get dark => 'ഡാർക്ക്';

  @override
  String get dawn => 'പ്രഭാതം';

  @override
  String get debug => 'ഡീബഗ്';

  @override
  String get dhikr => 'ദിക്ർ';

  @override
  String get dhikrActivity => 'ദിക്ർ പ്രവർത്തനം';

  @override
  String get dhuAlHijjah => 'ദുൽഹിജ്ജ';

  @override
  String get dhuAlQadah => 'ദുൽഖഅദ്';

  @override
  String get dhuhr => 'ളുഹ്ർ';

  @override
  String get direction => 'ദിശ';

  @override
  String get disableBatteryOptimization => 'ബാറ്ററി ഒപ്റ്റിമൈസേഷൻ ഓഫാക്കുക';

  @override
  String get disableOptimization => 'ഒപ്റ്റിമൈസേഷൻ ഓഫാക്കുക';

  @override
  String get distance => 'ദൂരം';

  @override
  String get e => 'കി';

  @override
  String get eGHasbunallah => 'ഉദാ. ഹസ്ബുനല്ലാഹ്';

  @override
  String get east => 'കിഴക്ക്';

  @override
  String get enableAutoStart => 'ഓട്ടോ-സ്റ്റാർട്ട് ഓണാക്കുക';

  @override
  String get enableNotifications => 'അറിയിപ്പുകൾ ഓണാക്കുക';

  @override
  String get enableReminders => 'ഓർമ്മപ്പെടുത്തലുകൾ ഓണാക്കുക';

  @override
  String get english => 'ഇംഗ്ലീഷ്';

  @override
  String get enterYourName => 'നിങ്ങളുടെ പേര് നൽകുക';

  @override
  String get equipped => 'ഉപയോഗത്തിലാണ്';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'മികച്ച ഖുർആൻ അനുഭവത്തിന് വേണ്ടതെല്ലാം.';

  @override
  String get fajr => 'ഫജ്ർ';

  @override
  String get feedback => 'അഭിപ്രായം';

  @override
  String get first => 'ആദ്യം';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ഏറ്റവും കൃത്യമായ ഫലത്തിന്, ഫോൺ നിരപ്പായി പിടിക്കുക, കാന്തിക വസ്തുക്കളിൽ നിന്ന് അകലം പാലിക്കുക.';

  @override
  String get free => 'സൗജന്യം';

  @override
  String get fullBundle => 'പൂർണ്ണ ബണ്ടിൽ';

  @override
  String get getAnAdFreeExperienceForever =>
      'എന്നെന്നേക്കും പരസ്യരഹിത അനുഭവം നേടുക';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'വായിക്കാൻ ഓർമ്മപ്പെടുത്തൽ നേടി സ്ഥിരത നിലനിർത്തുക.';

  @override
  String get getStarted => 'തുടങ്ങാം';

  @override
  String get gloryAndPraiseBeToAllah => 'അല്ലാഹുവിന് പരിശുദ്ധിയും സ്തുതിയും';

  @override
  String get gloryBeToAllah => 'അല്ലാഹു എത്ര പരിശുദ്ധൻ';

  @override
  String get gloryBeToAllahTheMagnificent => 'മഹാനായ അല്ലാഹു എത്ര പരിശുദ്ധൻ';

  @override
  String get goToHome => 'ഹോമിലേക്ക് പോകുക';

  @override
  String get goldenEngraved => 'സ്വർണ്ണ കൊത്തുപണി';

  @override
  String get greenJade => 'പച്ച ജേഡ്';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ഹനോയ്, വിയറ്റ്നാം';

  @override
  String get haptic => 'വൈബ്രേഷൻ';

  @override
  String get hasanatHub => 'ഹസനാത്ത് കേന്ദ്രം';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ഹസ്ബിയല്ലാഹു ലാ ഇലാഹ ഇല്ലാ ഹുവ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ഹോം';

  @override
  String get howYourDataIsHandled =>
      'നിങ്ങളുടെ വിവരങ്ങൾ എങ്ങനെ കൈകാര്യം ചെയ്യുന്നു';

  @override
  String get iSeekForgivenessFromAllah => 'ഞാൻ അല്ലാഹുവിനോട് പാപമോചനം തേടുന്നു';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ശപിക്കപ്പെട്ട പിശാചിൽ നിന്ന് ഞാൻ അല്ലാഹുവിൽ അഭയം തേടുന്നു';

  @override
  String get immediateAlerts => 'ഉടനടി അറിയിപ്പുകൾ';

  @override
  String get inTheNameOfAllah => 'അല്ലാഹുവിന്റെ നാമത്തിൽ';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'തീർച്ചയായും നാം അല്ലാഹുവിന്റേതാണ്, അവനിലേക്ക് തന്നെ മടങ്ങുന്നു';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'ഇന്നാ ലില്ലാഹി വ ഇന്നാ ഇലൈഹി റാജിഊൻ';

  @override
  String get isha => 'ഇശാ';

  @override
  String get jumadaAlAwwal => 'ജമാദുൽ അവ്വൽ';

  @override
  String get jumadaAlThani => 'ജമാദുൽ ആഖിർ';

  @override
  String get juz => 'ജുസ്അ്';

  @override
  String get juz2 => 'ജുസ്അ്';

  @override
  String get keepAdhanAlarmsReliable =>
      'ബാങ്ക് അലാറങ്ങൾ വിശ്വസനീയമായി നിലനിർത്തുക';

  @override
  String get keepItUpYouReDoingGreat =>
      'ഇങ്ങനെ തുടരൂ! നിങ്ങൾ ഗംഭീരമായി ചെയ്യുന്നു.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'ആപ്പ് അടച്ചാലും ബാങ്ക് വിളി വിശ്വസനീയമായി ലഭിക്കട്ടെ.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'ലാ ഹൗല വലാ ഖുവ്വത ഇല്ലാ ബില്ലാഹ്';

  @override
  String get laIlahaIllallah => 'ലാ ഇലാഹ ഇല്ലല്ലാഹ്';

  @override
  String get language => 'ഭാഷ';

  @override
  String get lapisLazuli => 'ലാപിസ് ലാസുലി';

  @override
  String get last7Days => 'കഴിഞ്ഞ 7 ദിവസം';

  @override
  String get later => 'പിന്നീട്';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'ഖുർആനുമായുള്ള നിങ്ങളുടെ മനോഹര യാത്ര തുടങ്ങാം.';

  @override
  String get letSPersonalizeYourExperience =>
      'നിങ്ങളുടെ അനുഭവം\nഇഷ്ടാനുസൃതമാക്കാം';

  @override
  String get light => 'ലൈറ്റ്';

  @override
  String get lightMode => 'ലൈറ്റ് മോഡ്';

  @override
  String get listenToOrReadAnyAyahToday =>
      'ഇന്ന് ഏതെങ്കിലും ആയത്ത് കേൾക്കുകയോ വായിക്കുകയോ ചെയ്യുക';

  @override
  String get locating => 'സ്ഥാനം കണ്ടെത്തുന്നു...';

  @override
  String get location => 'ലൊക്കേഷൻ';

  @override
  String get locationPermissionsAreDenied => 'ലൊക്കേഷൻ അനുമതി നിഷേധിച്ചു';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'ലൊക്കേഷൻ അനുമതി ശാശ്വതമായി നിഷേധിച്ചിരിക്കുന്നു.';

  @override
  String get locationServicesAreDisabled => 'ലൊക്കേഷൻ സേവനങ്ങൾ ഓഫാണ്.';

  @override
  String get longestStreak => 'ഏറ്റവും നീണ്ട സ്ട്രീക്ക്';

  @override
  String get maghrib => 'മഗ്‌രിബ്';

  @override
  String get maybeLater => 'പിന്നീടാകാം';

  @override
  String get meccaSaudiArabia => 'മക്ക, സൗദി അറേബ്യ';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'എന്റെ റബ്ബേ, പൊറുക്കുകയും കരുണ ചെയ്യുകയും ചെയ്യേണമേ';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'എന്റെ റബ്ബേ, നീ ഇറക്കുന്ന ഏതൊരു നന്മയ്ക്കും ഞാൻ ആവശ്യക്കാരനാണ്';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'എന്റെ റബ്ബേ, എനിക്ക് അറിവ് വർദ്ധിപ്പിച്ചു തരേണമേ';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'എന്റെ റബ്ബേ, എളുപ്പമാക്കേണമേ, പ്രയാസമാക്കരുതേ';

  @override
  String get n => 'വ';

  @override
  String get nameOptional => 'പേര് (നിർബന്ധമല്ല)';

  @override
  String get next => 'അടുത്തത്';

  @override
  String get nextDhikr => 'അടുത്ത ദിക്ർ';

  @override
  String get nextPrayer => 'അടുത്ത നമസ്കാരം';

  @override
  String get night => 'രാത്രി';

  @override
  String get nightEmeraldInterface => 'രാത്രി മരതക ഇന്റർഫേസ്';

  @override
  String get noBookmarksYet => 'ബുക്ക്മാർക്കുകൾ ഒന്നുമില്ല';

  @override
  String get noon => 'ഉച്ച';

  @override
  String get north => 'വടക്ക്';

  @override
  String get northeast => 'വടക്കുകിഴക്ക്';

  @override
  String get northwest => 'വടക്കുപടിഞ്ഞാറ്';

  @override
  String get notificationsAlarm => 'അറിയിപ്പുകളും അലാറവും';

  @override
  String get notificationsForPrayerTimes =>
      'നമസ്കാര സമയങ്ങൾക്കുള്ള അറിയിപ്പുകൾ';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'അല്ലാഹുവേ, മുഹമ്മദ് നബിക്ക് സ്വലാത്ത് ചൊരിയേണമേ';

  @override
  String get oEverLivingOSustainer =>
      'എന്നെന്നും ജീവിക്കുന്നവനേ, സർവ്വത്തെയും നിലനിർത്തുന്നവനേ';

  @override
  String get openAutoStart => 'ഓട്ടോ-സ്റ്റാർട്ട് തുറക്കുക';

  @override
  String get optimizeAdhanPerformance => 'ബാങ്ക് പ്രവർത്തനം മെച്ചപ്പെടുത്തുക';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'ഞങ്ങളുടെ റബ്ബേ, ഈ ലോകത്ത് ഞങ്ങൾക്ക് നന്മ നൽകേണമേ';

  @override
  String get page => 'പേജ്';

  @override
  String get pearl => 'മുത്ത്';

  @override
  String get personalizeYourAdhanNotifications =>
      'നിങ്ങളുടെ ബാങ്ക് അറിയിപ്പുകൾ ഇഷ്ടാനുസൃതമാക്കുക';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'സർവ്വലോക രക്ഷിതാവായ അല്ലാഹുവിന് സ്തുതി';

  @override
  String get prayerAlarms => 'നമസ്കാര അലാറങ്ങൾ';

  @override
  String get prayerSchedule => 'നമസ്കാര സമയക്രമം';

  @override
  String get prayerTimeNotifications => 'നമസ്കാര സമയ അറിയിപ്പുകൾ';

  @override
  String get prayerTimesAreLoading => 'നമസ്കാര സമയങ്ങൾ ലോഡ് ചെയ്യുന്നു';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'നമസ്കാര സമയങ്ങൾ, ഖിബ്‌ല, ഖുർആൻ വായന, തസ്ബീഹ് — എല്ലാം ഒരൊറ്റ ദൈനംദിന കൂട്ടാളിയിൽ.';

  @override
  String get prayerQuranQibla => 'നമസ്കാരം • ഖുർആൻ • ഖിബ്‌ല';

  @override
  String get premiumThemes => 'പ്രീമിയം തീമുകൾ';

  @override
  String get preparingYourSpiritualJourney =>
      'നിങ്ങളുടെ ആത്മീയ യാത്ര ഒരുക്കുന്നു...';

  @override
  String get previousDhikr => 'മുൻ ദിക്ർ';

  @override
  String get privacyPolicy => 'സ്വകാര്യതാ നയം';

  @override
  String get qibla => 'ഖിബ്‌ല';

  @override
  String get qiblaFinder => 'ഖിബ്‌ല കണ്ടെത്തൽ';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ഖുർആൻ';

  @override
  String get quranPlayback => 'ഖുർആൻ പ്ലേബാക്ക്';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'നമസ്കാര സമയങ്ങൾ, ഖിബ്‌ല, ഖുർആൻ വായന, തസ്ബീഹ് എന്നിവ ലളിതമായ ഒരു ദൈനംദിന കൂട്ടാളിയിലേക്ക് ഖുർആൻ പ്രോ കൊണ്ടുവരുന്നു.';

  @override
  String get quranProPreferences => 'ഖുർആൻ പ്രോ മുൻഗണനകൾ';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'ഖുർആൻ പ്രോ ഓൺബോർഡിംഗ്, പുരോഗതി മുൻഗണനകൾ ഈ ഉപകരണത്തിൽ തന്നെ സൂക്ഷിക്കുന്നു. സ്ഥിരതയും ഗുണനിലവാരവും മെച്ചപ്പെടുത്താൻ അനലിറ്റിക്സ് ഉപയോഗിച്ചേക്കാം.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'ഖുർആൻ പ്രോ നിങ്ങളുടെ തസ്ബീഹ് പുരോഗതി ഈ ഉപകരണത്തിൽ തന്നെ സൂക്ഷിക്കുന്നു. ആപ്പിന്റെ സ്ഥിരതയും ഉൽപ്പന്ന ഗുണനിലവാരവും മെച്ചപ്പെടുത്താൻ അനലിറ്റിക്സ് ഉപയോഗിച്ചേക്കാം.';

  @override
  String get quranRecitation => 'ഖുർആൻ പാരായണം';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'റബ്ബനാ ആതിനാ ഫിദ്ദുൻയാ ഹസനഃ';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'റബ്ബി ഇന്നീ ലിമാ അൻസൽത ഇലയ്യ മിൻ ഖൈരിൻ ഫഖീർ';

  @override
  String get rabbiYassirWaLaTuassir => 'റബ്ബി യസ്സിർ വലാ തുഅസ്സിർ';

  @override
  String get rabbiZidniIlma => 'റബ്ബി സിദ്നീ ഇൽമാ';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'റബ്ബിഗ്ഫിർ വർഹം വ അൻത ഖൈറുർ റാഹിമീൻ';

  @override
  String get rabiAlAwwal => 'റബീഉൽ അവ്വൽ';

  @override
  String get rabiAlThani => 'റബീഉൽ ആഖിർ';

  @override
  String get rateApp => 'ആപ്പ് റേറ്റ് ചെയ്യുക';

  @override
  String get rateQuranPro => 'ഖുർആൻ പ്രോ റേറ്റ് ചെയ്യുക';

  @override
  String get readListen => 'വായിക്കൂ, കേൾക്കൂ';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'മനോഹരമായ പാരായണങ്ങളോടെ ഖുർആൻ വായിക്കുക.';

  @override
  String get recent => 'അടുത്തിടെ';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo, Huawei ഫോണുകൾക്ക് ശുപാർശ ചെയ്യുന്നു';

  @override
  String get redCarnelian => 'ചുവന്ന കാർണീലിയൻ';

  @override
  String get remindMeAt => 'ഓർമ്മിപ്പിക്കേണ്ട സമയം';

  @override
  String get removeAds => 'പരസ്യങ്ങൾ നീക്കുക';

  @override
  String get requestingLocationPermission =>
      'ലൊക്കേഷൻ അനുമതി ആവശ്യപ്പെടുന്നു...';

  @override
  String get reset => 'പുനഃസജ്ജമാക്കുക';

  @override
  String get retry => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get returnToCompass => 'കോമ്പസിലേക്ക് മടങ്ങുക';

  @override
  String get s => 'തെ';

  @override
  String get save => 'സേവ് ചെയ്യുക';

  @override
  String get saveGoal => 'ലക്ഷ്യം സേവ് ചെയ്യുക';

  @override
  String get searchSurahNumberArabic => 'സൂറ, നമ്പർ, അറബി തിരയുക...';

  @override
  String get searchSurah => 'സൂറ തിരയുക...';

  @override
  String get selectLanguage => 'ഭാഷ തിരഞ്ഞെടുക്കുക';

  @override
  String get selectTheThemeYouLike => 'ഇഷ്ടമുള്ള തീം തിരഞ്ഞെടുക്കുക';

  @override
  String get selectYourBead => 'നിങ്ങളുടെ മണി തിരഞ്ഞെടുക്കുക';

  @override
  String get shop => 'ഷോപ്പ്';

  @override
  String get shopCustomization => 'ഷോപ്പും ഇഷ്ടാനുസൃതമാക്കലും';

  @override
  String get sound => 'ശബ്ദം';

  @override
  String get south => 'തെക്ക്';

  @override
  String get southeast => 'തെക്കുകിഴക്ക്';

  @override
  String get southwest => 'തെക്കുപടിഞ്ഞാറ്';

  @override
  String get specialOccasionsAndMore => 'പ്രത്യേക അവസരങ്ങളും മറ്റും';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'പ്രൊഡക്ഷൻ ലിസ്റ്റിംഗ് തയ്യാറാകുമ്പോൾ സ്റ്റോർ റേറ്റിംഗ് ബന്ധിപ്പിക്കും.';

  @override
  String get subhanallahiWaBihamdihi => 'സുബ്ഹാനല്ലാഹി വ ബിഹംദിഹി';

  @override
  String get subhanallahilAzim => 'സുബ്ഹാനല്ലാഹിൽ അളീം';

  @override
  String get sunset => 'സൂര്യാസ്തമയം';

  @override
  String get supportQuranProOnTheStore =>
      'സ്റ്റോറിൽ ഖുർആൻ പ്രോയെ പിന്തുണയ്ക്കുക';

  @override
  String get surah => 'സൂറ';

  @override
  String get tasbih => 'തസ്ബീഹ്';

  @override
  String get tasbihSettings => 'തസ്ബീഹ് ക്രമീകരണങ്ങൾ';

  @override
  String get tellUsWhatToImprove => 'എന്ത് മെച്ചപ്പെടുത്തണമെന്ന് പറയൂ';

  @override
  String get termsOfUse => 'ഉപയോഗ നിബന്ധനകൾ';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'ഖുർആൻ പ്രോ ഉപയോഗിച്ചതിന് നന്ദി. പ്രൊഡക്ഷൻ സ്റ്റോർ ലിസ്റ്റിംഗ് തയ്യാറാകുമ്പോൾ സ്റ്റോർ റേറ്റിംഗ് ബന്ധിപ്പിക്കും.';

  @override
  String get thereIsNoDeityExceptAllah => 'അല്ലാഹുവല്ലാതെ ആരാധ്യനില്ല';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'അല്ലാഹുവിനെക്കൊണ്ടല്ലാതെ ഒരു ശക്തിയും കഴിവുമില്ല';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ഓർമ്മപ്പെടുത്തലുകൾ ക്രമീകരിക്കാനും നിങ്ങളുടെ പുരോഗതി രേഖപ്പെടുത്താനും ഇത് സഹായിക്കുന്നു.';

  @override
  String get tigerSEye => 'കടുവക്കണ്ണ്';

  @override
  String get today => 'ഇന്ന്';

  @override
  String get total => 'ആകെ';

  @override
  String get totalHasanat => 'ആകെ ഹസനാത്ത്';

  @override
  String get trackProgress => 'പുരോഗതി രേഖപ്പെടുത്തുക';

  @override
  String get trackYourReadingAndAchievements =>
      'നിങ്ങളുടെ വായനയും നേട്ടങ്ങളും രേഖപ്പെടുത്തുക.';

  @override
  String get tryAgain => 'വീണ്ടും ശ്രമിക്കുക';

  @override
  String get undo => 'പഴയപടിയാക്കുക';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'എല്ലാ ആപ്പ് തീമുകളും ഇഷ്ടാനുസൃതമാക്കലുകളും അൺലോക്ക് ചെയ്യുക';

  @override
  String get usageGuidelines => 'ഉപയോഗ മാർഗ്ഗനിർദ്ദേശങ്ങൾ';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'വ്യക്തിപരമായ ആരാധന, പഠനം, ദൈനംദിന ഇസ്ലാമിക ചിട്ടകൾ എന്നിവയ്ക്കായി ഖുർആൻ പ്രോ ആദരവോടെ ഉപയോഗിക്കുക.';

  @override
  String get viewAll => 'എല്ലാം കാണുക';

  @override
  String get w => 'പ';

  @override
  String get welcome => 'സ്വാഗതം';

  @override
  String get west => 'പടിഞ്ഞാറ്';

  @override
  String get yaHayyuYaQayyum => 'യാ ഹയ്യു യാ ഖയ്യൂം';

  @override
  String get youReAllSet => 'എല്ലാം തയ്യാറായി!';

  @override
  String get yourProgress => 'നിങ്ങളുടെ പുരോഗതി';

  @override
  String get continueLabel => 'തുടരുക';

  @override
  String get amethyst => 'അമേത്തിസ്റ്റ്';

  @override
  String get indonesian => 'ഇന്തോനേഷ്യൻ';

  @override
  String get turkish => 'ടർക്കിഷ്';

  @override
  String get vietnamese => 'വിയറ്റ്നാമീസ്';

  @override
  String get turquoise => 'ടർക്കോയ്സ്';

  @override
  String get wood => 'മരം';

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
