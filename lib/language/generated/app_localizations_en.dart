// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get week => 'Week';

  @override
  String get month => 'Month';

  @override
  String get lifetime => 'Lifetime';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Take a pause from your work and make time for Allah.';

  @override
  String get prayerAlarmDefaultName => 'Prayer';

  @override
  String productUnavailable(Object id) {
    return 'Product $id not available for purchase.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Purchase of $productId successful!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Purchase of $productId restored!';
  }

  @override
  String daysCount(Object count) {
    return '$count Days';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'UPCOMING: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Distance to Mecca: $distance Km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Remind me after $minutes minutes';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'It is time for $prayerName prayer';
  }

  @override
  String roundValue(Object round) {
    return 'Round: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language selected';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Page $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: Verse $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ayahs';
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
    return 'LEVEL $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Surah Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 Juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 pages';

  @override
  String get text100dhikr => '100 Dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 pages';

  @override
  String get text28cclearsky => '28°C - Clear Sky';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 pages';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'About';

  @override
  String get aboutQuranPro => 'About Quran Pro';

  @override
  String get activity => 'Activity';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Ad is loading. Please try again soon.';

  @override
  String get addCustomDhikr => 'Add custom dhikr';

  @override
  String get addCustomDhikr2 => 'Add Custom Dhikr';

  @override
  String get addDhikr => 'Add Dhikr';

  @override
  String get adjustPosition => 'ADJUST POSITION';

  @override
  String get afternoon => 'AFTERNOON';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ALIGNED TO QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'All praise is due to Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'All premium features at a discounted price';

  @override
  String get allInOneQuranApp => 'All-in-one Quran App';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah is sufficient for me; there is no deity except Him';

  @override
  String get allahIsTheGreatest => 'Allah is the Greatest';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Allow location permission or tap retry to use the fallback schedule.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Allow notifications to receive prayer times and daily reminders.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Allow the app to run in the background';

  @override
  String get app => 'App';

  @override
  String get arabic => 'Arabic';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Avg';

  @override
  String get ayah => 'Ayah';

  @override
  String get batteryOptimization => 'Battery Optimization';

  @override
  String get beautifulWidgets => 'Beautiful Widgets';

  @override
  String get bestValue => 'BEST VALUE';

  @override
  String get blackOnyx => 'Black Onyx';

  @override
  String get bookmarks => 'Bookmarks';

  @override
  String get brightIvoryInterface => 'Bright ivory interface';

  @override
  String get calculatingDistance => 'Calculating distance...';

  @override
  String get calibrateYourDirection => 'Calibrate your direction';

  @override
  String get cancel => 'Cancel';

  @override
  String get change => 'Change';

  @override
  String get changeTasbihMode => 'Change Tasbih mode?';

  @override
  String get chooseDhikr => 'Choose Dhikr';

  @override
  String get chooseDisplayLanguage => 'Choose display language';

  @override
  String get chooseTheme => 'Choose Theme';

  @override
  String get chooseYourPreferredLanguage => 'Choose your preferred language';

  @override
  String get clickOrSwipeToCount => 'Click or swipe to count';

  @override
  String get close => 'Close';

  @override
  String get closeCustomGoal => 'Close custom goal';

  @override
  String get completeAtLeast33Dhikr => 'Complete at least 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Connect your heart with the Holy Quran.';

  @override
  String get continueReading => 'Continue Reading';

  @override
  String get countsPerRound => 'Counts per round';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Curate your collection with master-crafted spiritual gems.';

  @override
  String get current => 'CURRENT';

  @override
  String get current2 => 'Current';

  @override
  String get currentLocationToMecca => 'Current Location to Mecca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Current progress will reset for the new mode.';

  @override
  String get currentStreak => 'Current Streak';

  @override
  String get custom => 'Custom';

  @override
  String get customDhikr => 'Custom dhikr';

  @override
  String get customGoal => 'Custom Goal';

  @override
  String get customPrayerSounds => 'Custom Prayer Sounds';

  @override
  String get dailyGoal => 'Daily Goal';

  @override
  String get dailyQuests => 'Daily Quests';

  @override
  String get dailyQuranReminder => 'Daily Quran reminder';

  @override
  String get dailyReminders => 'Daily Reminders';

  @override
  String get dailyTasbih => 'Daily Tasbih';

  @override
  String get dark => 'Dark';

  @override
  String get dawn => 'DAWN';

  @override
  String get debug => 'Debug';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Dhikr activity';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'DIRECTION';

  @override
  String get disableBatteryOptimization => 'Disable Battery Optimization';

  @override
  String get disableOptimization => 'DISABLE OPTIMIZATION';

  @override
  String get distance => 'DISTANCE';

  @override
  String get e => 'E';

  @override
  String get eGHasbunallah => 'e.g. HasbunAllah';

  @override
  String get east => 'East';

  @override
  String get enableAutoStart => 'Enable Auto-start';

  @override
  String get enableNotifications => 'Enable Notifications';

  @override
  String get enableReminders => 'Enable Reminders';

  @override
  String get english => 'English';

  @override
  String get enterYourName => 'Enter your name';

  @override
  String get equipped => 'EQUIPPED';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Everything you need for a better Quran experience.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Feedback';

  @override
  String get first => 'First';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'For the most accurate results, keep your phone flat and away from magnetic objects.';

  @override
  String get free => 'Free';

  @override
  String get fullBundle => 'Full Bundle';

  @override
  String get getAnAdFreeExperienceForever =>
      'Get an ad-free experience forever';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Get reminded to read and stay consistent.';

  @override
  String get getStarted => 'Get Started';

  @override
  String get gloryAndPraiseBeToAllah => 'Glory and praise be to Allah';

  @override
  String get gloryBeToAllah => 'Glory be to Allah';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'Glory be to Allah, the Magnificent';

  @override
  String get goToHome => 'Go to Home';

  @override
  String get goldenEngraved => 'Golden Engraved';

  @override
  String get greenJade => 'Green Jade';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Haptic';

  @override
  String get hasanatHub => 'Hasanat Hub';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Home';

  @override
  String get howYourDataIsHandled => 'How your data is handled';

  @override
  String get iSeekForgivenessFromAllah => 'I seek forgiveness from Allah';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'I seek refuge in Allah from the accursed Satan';

  @override
  String get immediateAlerts => 'Immediate alerts';

  @override
  String get inTheNameOfAllah => 'In the name of Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Indeed we belong to Allah and to Him we return';

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
  String get keepAdhanAlarmsReliable => 'Keep adhan alarms reliable';

  @override
  String get keepItUpYouReDoingGreat => 'Keep it up! You\'re doing great.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Keep prayer calls reliable even when the app is closed.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Language';

  @override
  String get lapisLazuli => 'Lapis Lazuli';

  @override
  String get last7Days => 'Last 7 Days';

  @override
  String get later => 'LATER';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Let\'s begin your beautiful journey with the Quran.';

  @override
  String get letSPersonalizeYourExperience =>
      'Let\'s personalize\nyour experience';

  @override
  String get light => 'Light';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get listenToOrReadAnyAyahToday => 'Listen to or read any Ayah today';

  @override
  String get locating => 'Locating...';

  @override
  String get location => 'Location';

  @override
  String get locationPermissionsAreDenied => 'Location permissions are denied';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Location permissions are permanently denied.';

  @override
  String get locationServicesAreDisabled => 'Location services are disabled.';

  @override
  String get longestStreak => 'Longest Streak';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Maybe later';

  @override
  String get meccaSaudiArabia => 'Mecca, Saudi Arabia';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'My Lord, forgive and have mercy';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'My Lord, I am in need of whatever good You send down';

  @override
  String get myLordIncreaseMeInKnowledge => 'My Lord, increase me in knowledge';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'My Lord, make it easy and do not make it difficult';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Name (Optional)';

  @override
  String get next => 'Next';

  @override
  String get nextDhikr => 'Next dhikr';

  @override
  String get nextPrayer => 'NEXT PRAYER';

  @override
  String get night => 'NIGHT';

  @override
  String get nightEmeraldInterface => 'Night emerald interface';

  @override
  String get noBookmarksYet => 'No bookmarks yet';

  @override
  String get noon => 'NOON';

  @override
  String get north => 'North';

  @override
  String get northeast => 'Northeast';

  @override
  String get northwest => 'Northwest';

  @override
  String get notificationsAlarm => 'Notifications & Alarm';

  @override
  String get notificationsForPrayerTimes => 'Notifications for prayer times';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'O Allah, send blessings upon Muhammad';

  @override
  String get oEverLivingOSustainer => 'O Ever-Living, O Sustainer';

  @override
  String get openAutoStart => 'OPEN AUTO-START';

  @override
  String get optimizeAdhanPerformance => 'Optimize Adhan Performance';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Our Lord, grant us good in this world';

  @override
  String get page => 'PAGE';

  @override
  String get pearl => 'Pearl';

  @override
  String get personalizeYourAdhanNotifications =>
      'Personalize your Adhan notifications';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Praise be to Allah, Lord of the worlds';

  @override
  String get prayerAlarms => 'Prayer Alarms';

  @override
  String get prayerSchedule => 'Prayer Schedule';

  @override
  String get prayerTimeNotifications => 'Prayer time notifications';

  @override
  String get prayerTimesAreLoading => 'Prayer times are loading';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Prayer Times, Qibla, Quran reading, and Tasbih in one daily companion.';

  @override
  String get prayerQuranQibla => 'PRAYER • QURAN • QIBLA';

  @override
  String get premiumThemes => 'Premium Themes';

  @override
  String get preparingYourSpiritualJourney =>
      'Preparing your spiritual journey...';

  @override
  String get previousDhikr => 'Previous dhikr';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Qibla Finder';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Quran';

  @override
  String get quranPlayback => 'Quran Playback';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro brings Prayer Times, Qibla, Quran reading, and Tasbih into one simple daily companion.';

  @override
  String get quranProPreferences => 'Quran Pro preferences';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro stores onboarding and progress preferences locally on this device. Analytics may be used to improve stability and quality.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro stores your Tasbih progress locally on this device. Analytics may be used to improve app stability and product quality.';

  @override
  String get quranRecitation => 'Quran Recitation';

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
  String get rateApp => 'Rate app';

  @override
  String get rateQuranPro => 'Rate Quran Pro';

  @override
  String get readListen => 'Read & Listen';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Read the Quran with beautiful recitations.';

  @override
  String get recent => 'Recent';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Recommended for Xiaomi, Oppo, Vivo and Huawei';

  @override
  String get redCarnelian => 'Red Carnelian';

  @override
  String get remindMeAt => 'Remind Me At';

  @override
  String get removeAds => 'Remove Ads';

  @override
  String get requestingLocationPermission =>
      'Requesting location permission...';

  @override
  String get reset => 'Reset';

  @override
  String get retry => 'Retry';

  @override
  String get returnToCompass => 'Return to Compass';

  @override
  String get s => 'S';

  @override
  String get save => 'Save';

  @override
  String get saveGoal => 'Save Goal';

  @override
  String get searchSurahNumberArabic => 'Search surah, number, Arabic...';

  @override
  String get searchSurah => 'Search Surah...';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get selectTheThemeYouLike => 'Select the theme you like';

  @override
  String get selectYourBead => 'Select Your Bead';

  @override
  String get shop => 'Shop';

  @override
  String get shopCustomization => 'Shop & Customization';

  @override
  String get sound => 'Sound';

  @override
  String get south => 'South';

  @override
  String get southeast => 'Southeast';

  @override
  String get southwest => 'Southwest';

  @override
  String get specialOccasionsAndMore => 'Special occasions and more';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Store rating will be connected when the production listing is ready.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SUNSET';

  @override
  String get supportQuranProOnTheStore => 'Support Quran Pro on the store';

  @override
  String get surah => 'Surah';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Tasbih Settings';

  @override
  String get tellUsWhatToImprove => 'Tell us what to improve';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Thanks for using Quran Pro. Store rating will be connected when the production store listing is ready.';

  @override
  String get thereIsNoDeityExceptAllah => 'There is no deity except Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'There is no power nor strength except through Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'This helps us customize reminders and track your progress.';

  @override
  String get tigerSEye => 'Tiger\'s Eye';

  @override
  String get today => 'Today';

  @override
  String get total => 'Total';

  @override
  String get totalHasanat => 'TOTAL HASANAT';

  @override
  String get trackProgress => 'Track Progress';

  @override
  String get trackYourReadingAndAchievements =>
      'Track your reading and achievements.';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get undo => 'Undo';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Unlock all app themes and customizations';

  @override
  String get usageGuidelines => 'Usage guidelines';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Use Quran Pro respectfully for personal worship, learning, and daily Islamic routines.';

  @override
  String get viewAll => 'View All';

  @override
  String get w => 'W';

  @override
  String get welcome => 'Welcome';

  @override
  String get west => 'West';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'You\'re All Set!';

  @override
  String get yourProgress => 'Your Progress';

  @override
  String get continueLabel => 'Continue';

  @override
  String get amethyst => 'Amethyst';

  @override
  String get indonesian => 'Indonesian';

  @override
  String get turkish => 'Turkish';

  @override
  String get vietnamese => 'Vietnamese';

  @override
  String get turquoise => 'Turquoise';

  @override
  String get wood => 'Wood';

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
