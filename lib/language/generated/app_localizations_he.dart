// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get week => 'שבוע';

  @override
  String get month => 'חודש';

  @override
  String get lifetime => 'כל הזמן';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote => 'עצרו לרגע מעבודתכם והקדישו זמן לאללה.';

  @override
  String get prayerAlarmDefaultName => 'תפילה';

  @override
  String productUnavailable(Object id) {
    return 'המוצר $id אינו זמין לרכישה.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'רכישת $productId הושלמה בהצלחה!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'רכישת $productId שוחזרה!';
  }

  @override
  String daysCount(Object count) {
    return '$count ימים';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'הקרובה: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'מרחק ממכה: $distance ק״מ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'הזכירו לי בעוד $minutes דקות';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'הגיע זמן תפילת $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'סבב: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language נבחרה';
  }

  @override
  String juzNumber(Object juz) {
    return 'ג\'וז $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'עמוד $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'חזב $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: פסוק $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count איות';
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
    return 'רמה $level';
  }

  @override
  String get surahAlBaqarah2238 => '(סורת אל-בקרה 2:238)';

  @override
  String get text1juz => '1 ג\'וז';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 עמודים';

  @override
  String get text100dhikr => '100 ד\'יכר';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 עמודים';

  @override
  String get text28cclearsky => '28°C - שמיים בהירים';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 עמודים';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'אודות';

  @override
  String get aboutQuranPro => 'אודות Quran Pro';

  @override
  String get activity => 'פעילות';

  @override
  String get adIsLoadingPleaseTryAgainSoon => 'המודעה נטענת. נסו שוב בקרוב.';

  @override
  String get addCustomDhikr => 'הוספת ד\'יכר מותאם';

  @override
  String get addCustomDhikr2 => 'הוספת ד\'יכר מותאם אישית';

  @override
  String get addDhikr => 'הוספת ד\'יכר';

  @override
  String get adjustPosition => 'כוונון המיקום';

  @override
  String get afternoon => 'אחר הצהריים';

  @override
  String get alMasjidAlHaram => 'אל-מסג\'ד אל-חראם';

  @override
  String get alhamdulillahiRabbilAlamin => 'אלחמדולילהי רבי אל-עאלמין';

  @override
  String get alignedToQibla => 'מכוון לקיבלה';

  @override
  String get allPraiseIsDueToAllah => 'כל השבח לאללה';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'כל תכונות הפרימיום במחיר מוזל';

  @override
  String get allInOneQuranApp => 'אפליקציית קוראן הכול-באחד';

  @override
  String get allahIsSufficientForMeThereIsNo => 'אללה מספיק לי; אין אלוה מלבדו';

  @override
  String get allahIsTheGreatest => 'אללה הוא הגדול מכול';

  @override
  String get allahuAkbar => 'אללהו אכבר';

  @override
  String get allahummaSalliAlaMuhammad => 'אללהומא סלי עלא מוחמד';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'אפשרו הרשאת מיקום או הקישו על נסו שוב כדי להשתמש בלוח החלופי.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'אפשרו התראות כדי לקבל זמני תפילה ותזכורות יומיות.';

  @override
  String get allowTheAppToRunInTheBackground => 'אפשרו לאפליקציה לפעול ברקע';

  @override
  String get app => 'אפליקציה';

  @override
  String get arabic => 'ערבית';

  @override
  String get asr => 'עסר';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'אעוד\'ו בילהי מן א-שיטאן א-רג\'ים';

  @override
  String get avg => 'ממוצע';

  @override
  String get ayah => 'איה';

  @override
  String get batteryOptimization => 'אופטימיזציית סוללה';

  @override
  String get beautifulWidgets => 'ווידג\'טים יפים';

  @override
  String get bestValue => 'הכי משתלם';

  @override
  String get blackOnyx => 'אוניקס שחור';

  @override
  String get bookmarks => 'סימניות';

  @override
  String get brightIvoryInterface => 'ממשק שנהב בהיר';

  @override
  String get calculatingDistance => 'מחשב מרחק...';

  @override
  String get calibrateYourDirection => 'כיילו את הכיוון שלכם';

  @override
  String get cancel => 'ביטול';

  @override
  String get change => 'שינוי';

  @override
  String get changeTasbihMode => 'לשנות מצב תסביח?';

  @override
  String get chooseDhikr => 'בחירת ד\'יכר';

  @override
  String get chooseDisplayLanguage => 'בחרו שפת תצוגה';

  @override
  String get chooseTheme => 'בחירת ערכת נושא';

  @override
  String get chooseYourPreferredLanguage => 'בחרו את השפה המועדפת עליכם';

  @override
  String get clickOrSwipeToCount => 'הקישו או החליקו לספירה';

  @override
  String get close => 'סגור';

  @override
  String get closeCustomGoal => 'סגירת יעד מותאם';

  @override
  String get completeAtLeast33Dhikr => 'השלימו לפחות 33 ד\'יכר';

  @override
  String get connectYourHeartWithTheHolyQuran => 'חברו את לבכם לקוראן הקדוש.';

  @override
  String get continueReading => 'המשך קריאה';

  @override
  String get countsPerRound => 'ספירות בכל סבב';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'אצרו את האוסף שלכם באבני חן רוחניות מעשה אמן.';

  @override
  String get current => 'נוכחי';

  @override
  String get current2 => 'נוכחי';

  @override
  String get currentLocationToMecca => 'מהמיקום הנוכחי אל מכה';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'ההתקדמות הנוכחית תתאפס עבור המצב החדש.';

  @override
  String get currentStreak => 'רצף נוכחי';

  @override
  String get custom => 'מותאם אישית';

  @override
  String get customDhikr => 'ד\'יכר מותאם אישית';

  @override
  String get customGoal => 'יעד מותאם אישית';

  @override
  String get customPrayerSounds => 'צלילי תפילה מותאמים';

  @override
  String get dailyGoal => 'יעד יומי';

  @override
  String get dailyQuests => 'משימות יומיות';

  @override
  String get dailyQuranReminder => 'תזכורת קוראן יומית';

  @override
  String get dailyReminders => 'תזכורות יומיות';

  @override
  String get dailyTasbih => 'תסביח יומי';

  @override
  String get dark => 'כהה';

  @override
  String get dawn => 'שחר';

  @override
  String get debug => 'ניפוי שגיאות';

  @override
  String get dhikr => 'ד\'יכר';

  @override
  String get dhikrActivity => 'פעילות ד\'יכר';

  @override
  String get dhuAlHijjah => 'ד\'ו אל-חיג\'ה';

  @override
  String get dhuAlQadah => 'ד\'ו אל-קעדה';

  @override
  String get dhuhr => 'זוהר';

  @override
  String get direction => 'כיוון';

  @override
  String get disableBatteryOptimization => 'ביטול אופטימיזציית הסוללה';

  @override
  String get disableOptimization => 'ביטול האופטימיזציה';

  @override
  String get distance => 'מרחק';

  @override
  String get e => 'מ';

  @override
  String get eGHasbunallah => 'לדוגמה: חסבונא אללה';

  @override
  String get east => 'מזרח';

  @override
  String get enableAutoStart => 'הפעלת הפעלה אוטומטית';

  @override
  String get enableNotifications => 'הפעלת התראות';

  @override
  String get enableReminders => 'הפעלת תזכורות';

  @override
  String get english => 'אנגלית';

  @override
  String get enterYourName => 'הזינו את שמכם';

  @override
  String get equipped => 'בשימוש';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'כל מה שצריך לחוויית קוראן טובה יותר.';

  @override
  String get fajr => 'פג\'ר';

  @override
  String get feedback => 'משוב';

  @override
  String get first => 'ראשון';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'לתוצאות המדויקות ביותר, החזיקו את הטלפון במאוזן והרחק מחפצים מגנטיים.';

  @override
  String get free => 'חינם';

  @override
  String get fullBundle => 'חבילה מלאה';

  @override
  String get getAnAdFreeExperienceForever => 'קבלו חוויה ללא פרסומות לתמיד';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'קבלו תזכורות לקרוא ושמרו על עקביות.';

  @override
  String get getStarted => 'בואו נתחיל';

  @override
  String get gloryAndPraiseBeToAllah => 'תהילה ושבח לאללה';

  @override
  String get gloryBeToAllah => 'תהילה לאללה';

  @override
  String get gloryBeToAllahTheMagnificent => 'תהילה לאללה האדיר';

  @override
  String get goToHome => 'מעבר לדף הבית';

  @override
  String get goldenEngraved => 'חריטת זהב';

  @override
  String get greenJade => 'ירקן ירוק';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'האנוי, וייטנאם';

  @override
  String get haptic => 'רטט';

  @override
  String get hasanatHub => 'מרכז החסנאת';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'חסבי אללהו לא אילאהא אילא הוא';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'בית';

  @override
  String get howYourDataIsHandled => 'כיצד מטופלים הנתונים שלכם';

  @override
  String get iSeekForgivenessFromAllah => 'אני מבקש מחילה מאללה';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'אני מבקש מחסה באללה מן השטן הארור';

  @override
  String get immediateAlerts => 'התראות מיידיות';

  @override
  String get inTheNameOfAllah => 'בשם אללה';

  @override
  String get indeedWeBelongToAllahAndToHim => 'אכן לאללה אנו שייכים ואליו נשוב';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'אינא לילהי ואינא אילייהי ראג\'יעון';

  @override
  String get isha => 'עישא';

  @override
  String get jumadaAlAwwal => 'ג\'ומאדא אל-אוול';

  @override
  String get jumadaAlThani => 'ג\'ומאדא א-ת\'אני';

  @override
  String get juz => 'ג\'וז';

  @override
  String get juz2 => 'ג\'וז';

  @override
  String get keepAdhanAlarmsReliable => 'שמרו על אמינות התראות האד\'אן';

  @override
  String get keepItUpYouReDoingGreat => 'המשיכו כך! אתם מצוינים.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'שמרו על אמינות הקריאה לתפילה גם כשהאפליקציה סגורה.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'לא חוולא ולא קוותא אילא בילה';

  @override
  String get laIlahaIllallah => 'לא אילאהא אילא אללה';

  @override
  String get language => 'שפה';

  @override
  String get lapisLazuli => 'לאפיס לזולי';

  @override
  String get last7Days => '7 הימים האחרונים';

  @override
  String get later => 'מאוחר יותר';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'בואו נתחיל את המסע היפה שלכם עם הקוראן.';

  @override
  String get letSPersonalizeYourExperience =>
      'בואו נתאים אישית\nאת החוויה שלכם';

  @override
  String get light => 'בהיר';

  @override
  String get lightMode => 'מצב בהיר';

  @override
  String get listenToOrReadAnyAyahToday => 'האזינו או קראו איה היום';

  @override
  String get locating => 'מאתר...';

  @override
  String get location => 'מיקום';

  @override
  String get locationPermissionsAreDenied => 'הרשאות המיקום נדחו';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'הרשאות המיקום נדחו לצמיתות.';

  @override
  String get locationServicesAreDisabled => 'שירותי המיקום מושבתים.';

  @override
  String get longestStreak => 'הרצף הארוך ביותר';

  @override
  String get maghrib => 'מגריב';

  @override
  String get maybeLater => 'אולי מאוחר יותר';

  @override
  String get meccaSaudiArabia => 'מכה, ערב הסעודית';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'אדוני, מחל ורחם';

  @override
  String get myLordIAmInNeedOfWhatever => 'אדוני, זקוק אני לכל טוב שתשלח';

  @override
  String get myLordIncreaseMeInKnowledge => 'אדוני, הוסף לי דעת';

  @override
  String get myLordMakeItEasyAndDoNot => 'אדוני, הקל ואל תקשה';

  @override
  String get n => 'צ';

  @override
  String get nameOptional => 'שם (אופציונלי)';

  @override
  String get next => 'הבא';

  @override
  String get nextDhikr => 'הד\'יכר הבא';

  @override
  String get nextPrayer => 'התפילה הבאה';

  @override
  String get night => 'לילה';

  @override
  String get nightEmeraldInterface => 'ממשק אזמרגד לילי';

  @override
  String get noBookmarksYet => 'אין עדיין סימניות';

  @override
  String get noon => 'צהריים';

  @override
  String get north => 'צפון';

  @override
  String get northeast => 'צפון-מזרח';

  @override
  String get northwest => 'צפון-מערב';

  @override
  String get notificationsAlarm => 'התראות ושעון מעורר';

  @override
  String get notificationsForPrayerTimes => 'התראות לזמני התפילה';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'הו אללה, שלח ברכות על מוחמד';

  @override
  String get oEverLivingOSustainer => 'הו החי לעד, הו המקיים';

  @override
  String get openAutoStart => 'פתיחת הפעלה אוטומטית';

  @override
  String get optimizeAdhanPerformance => 'אופטימיזציה של ביצועי האד\'אן';

  @override
  String get ourLordGrantUsGoodInThisWorld => 'אדוננו, העניק לנו טוב בעולם הזה';

  @override
  String get page => 'עמוד';

  @override
  String get pearl => 'פנינה';

  @override
  String get personalizeYourAdhanNotifications =>
      'התאימו אישית את התראות האד\'אן';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'השבח לאללה, ריבון העולמים';

  @override
  String get prayerAlarms => 'התראות תפילה';

  @override
  String get prayerSchedule => 'לוח התפילות';

  @override
  String get prayerTimeNotifications => 'התראות זמני תפילה';

  @override
  String get prayerTimesAreLoading => 'זמני התפילה נטענים';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'זמני תפילה, קיבלה, קריאת קוראן ותסביח במלווה יומי אחד.';

  @override
  String get prayerQuranQibla => 'תפילה • קוראן • קיבלה';

  @override
  String get premiumThemes => 'ערכות נושא פרימיום';

  @override
  String get preparingYourSpiritualJourney => 'מכינים את המסע הרוחני שלכם...';

  @override
  String get previousDhikr => 'הד\'יכר הקודם';

  @override
  String get privacyPolicy => 'מדיניות פרטיות';

  @override
  String get qibla => 'קיבלה';

  @override
  String get qiblaFinder => 'מאתר הקיבלה';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'קוראן';

  @override
  String get quranPlayback => 'השמעת הקוראן';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro מאחדת זמני תפילה, קיבלה, קריאת קוראן ותסביח למלווה יומי פשוט אחד.';

  @override
  String get quranProPreferences => 'העדפות Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro שומרת את העדפות ההיכרות וההתקדמות באופן מקומי במכשיר זה. ייתכן שייעשה שימוש בנתוני אנליטיקה לשיפור היציבות והאיכות.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro שומרת את התקדמות התסביח שלכם באופן מקומי במכשיר זה. ייתכן שייעשה שימוש בנתוני אנליטיקה לשיפור יציבות האפליקציה ואיכות המוצר.';

  @override
  String get quranRecitation => 'דקלום הקוראן';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'רבנא אתינא פיד-דוניא חסנה';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'רבי אינני לימא אנזלתא אילייא מן ח\'יירין פקיר';

  @override
  String get rabbiYassirWaLaTuassir => 'רבי יסיר ולא תעסיר';

  @override
  String get rabbiZidniIlma => 'רבי זדני עלמא';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'רבי אע\'פר וארחם ואנתא ח\'יר א-ראחמין';

  @override
  String get rabiAlAwwal => 'רביע אל-אוול';

  @override
  String get rabiAlThani => 'רביע א-ת\'אני';

  @override
  String get rateApp => 'דרגו את האפליקציה';

  @override
  String get rateQuranPro => 'דרגו את Quran Pro';

  @override
  String get readListen => 'קריאה והאזנה';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'קראו את הקוראן עם דקלומים יפים.';

  @override
  String get recent => 'אחרונים';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'מומלץ עבור Xiaomi, Oppo, Vivo ו-Huawei';

  @override
  String get redCarnelian => 'קרנליאן אדום';

  @override
  String get remindMeAt => 'הזכירו לי בשעה';

  @override
  String get removeAds => 'הסרת פרסומות';

  @override
  String get requestingLocationPermission => 'מבקש הרשאת מיקום...';

  @override
  String get reset => 'איפוס';

  @override
  String get retry => 'נסה שוב';

  @override
  String get returnToCompass => 'חזרה למצפן';

  @override
  String get s => 'ד';

  @override
  String get save => 'שמור';

  @override
  String get saveGoal => 'שמירת היעד';

  @override
  String get searchSurahNumberArabic => 'חיפוש סורה, מספר, ערבית...';

  @override
  String get searchSurah => 'חיפוש סורה...';

  @override
  String get selectLanguage => 'בחר שפה';

  @override
  String get selectTheThemeYouLike => 'בחרו את ערכת הנושא שאהבתם';

  @override
  String get selectYourBead => 'בחרו את החרוז שלכם';

  @override
  String get shop => 'חנות';

  @override
  String get shopCustomization => 'חנות והתאמה אישית';

  @override
  String get sound => 'צליל';

  @override
  String get south => 'דרום';

  @override
  String get southeast => 'דרום-מזרח';

  @override
  String get southwest => 'דרום-מערב';

  @override
  String get specialOccasionsAndMore => 'אירועים מיוחדים ועוד';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'דירוג בחנות יופעל כשדף החנות הרשמי יהיה מוכן.';

  @override
  String get subhanallahiWaBihamdihi => 'סובחאן אללהי ובחמדיהי';

  @override
  String get subhanallahilAzim => 'סובחאן אללהי אל-עט\'ים';

  @override
  String get sunset => 'שקיעה';

  @override
  String get supportQuranProOnTheStore => 'תמכו ב-Quran Pro בחנות';

  @override
  String get surah => 'סורה';

  @override
  String get tasbih => 'תסביח';

  @override
  String get tasbihSettings => 'הגדרות תסביח';

  @override
  String get tellUsWhatToImprove => 'ספרו לנו מה לשפר';

  @override
  String get termsOfUse => 'תנאי שימוש';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'תודה שאתם משתמשים ב-Quran Pro. דירוג בחנות יופעל כשדף החנות הרשמי יהיה מוכן.';

  @override
  String get thereIsNoDeityExceptAllah => 'אין אלוה מלבד אללה';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'אין כוח ואין עוצמה אלא באללה';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'זה עוזר לנו להתאים את התזכורות ולעקוב אחר ההתקדמות שלכם.';

  @override
  String get tigerSEye => 'עין הנמר';

  @override
  String get today => 'היום';

  @override
  String get total => 'סה״כ';

  @override
  String get totalHasanat => 'סך החסנאת';

  @override
  String get trackProgress => 'מעקב אחר ההתקדמות';

  @override
  String get trackYourReadingAndAchievements =>
      'עקבו אחר הקריאה וההישגים שלכם.';

  @override
  String get tryAgain => 'נסו שוב';

  @override
  String get undo => 'ביטול';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'פתחו את כל ערכות הנושא וההתאמות';

  @override
  String get usageGuidelines => 'הנחיות שימוש';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'השתמשו ב-Quran Pro בכבוד לעבודת אללה אישית, ללימוד ולשגרה אסלאמית יומית.';

  @override
  String get viewAll => 'הצגת הכול';

  @override
  String get w => 'מע';

  @override
  String get welcome => 'ברוך הבא';

  @override
  String get west => 'מערב';

  @override
  String get yaHayyuYaQayyum => 'יא חיו יא קיום';

  @override
  String get youReAllSet => 'הכול מוכן!';

  @override
  String get yourProgress => 'ההתקדמות שלכם';

  @override
  String get continueLabel => 'המשך';

  @override
  String get amethyst => 'אמטיסט';

  @override
  String get indonesian => 'אינדונזית';

  @override
  String get turkish => 'טורקית';

  @override
  String get vietnamese => 'וייטנאמית';

  @override
  String get turquoise => 'טורקיז';

  @override
  String get wood => 'עץ';

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
