// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get week => 'الأسبوع';

  @override
  String get month => 'الشهر';

  @override
  String get lifetime => 'مدى الحياة';

  @override
  String get appTitle => 'Quran Pro: القرآن المجيد';

  @override
  String get prayerAlarmDefaultQuote => 'توقف قليلًا عن عملك وخصص وقتًا لله.';

  @override
  String get prayerAlarmDefaultName => 'الصلاة';

  @override
  String productUnavailable(Object id) {
    return 'المنتج $id غير متاح للشراء.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'تم شراء $productId بنجاح!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'تمت استعادة شراء $productId!';
  }

  @override
  String daysCount(Object count) {
    return '$count يوم';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'القادم: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'المسافة إلى مكة: $distance كم';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'ذكّرني بعد $minutes دقيقة';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'حان وقت صلاة $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'الجولة: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'تم اختيار $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'الجزء $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'الصفحة $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'الحزب $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: الآية $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count آية';
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
    return 'المستوى $level';
  }

  @override
  String get surahAlBaqarah2238 => '(سورة البقرة 2:238)';

  @override
  String get text1juz => '1 جزء';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 صفحات';

  @override
  String get text100dhikr => '100 ذكر';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 صفحة';

  @override
  String get text28cclearsky => '28°C - سماء صافية';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 صفحات';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'حول';

  @override
  String get aboutQuranPro => 'حول Quran Pro';

  @override
  String get activity => 'النشاط';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'يتم تحميل الإعلان. حاول مرة أخرى قريبًا.';

  @override
  String get addCustomDhikr => 'إضافة ذكر مخصص';

  @override
  String get addCustomDhikr2 => 'إضافة ذكر مخصص';

  @override
  String get addDhikr => 'إضافة ذكر';

  @override
  String get adjustPosition => 'اضبط الموضع';

  @override
  String get afternoon => 'بعد الظهر';

  @override
  String get alMasjidAlHaram => 'المسجد الحرام';

  @override
  String get alhamdulillahiRabbilAlamin => 'الحمد لله رب العالمين';

  @override
  String get alignedToQibla => 'متجه نحو القبلة';

  @override
  String get allPraiseIsDueToAllah => 'الحمد كله لله';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'كل الميزات المميزة بسعر مخفض';

  @override
  String get allInOneQuranApp => 'تطبيق قرآن شامل';

  @override
  String get allahIsSufficientForMeThereIsNo => 'حسبي الله، لا إله إلا هو';

  @override
  String get allahIsTheGreatest => 'الله أكبر من كل شيء';

  @override
  String get allahuAkbar => 'الله أكبر';

  @override
  String get allahummaSalliAlaMuhammad => 'اللهم صل على محمد';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'اسمح بالموقع أو اضغط إعادة المحاولة لاستخدام الجدول الاحتياطي.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'اسمح بالإشعارات لاستقبال أوقات الصلاة والتذكيرات اليومية.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'اسمح للتطبيق بالعمل في الخلفية';

  @override
  String get app => 'التطبيق';

  @override
  String get arabic => 'العربية';

  @override
  String get asr => 'العصر';

  @override
  String get auzuBillahiMinAshShaytanirRajim => 'أعوذ بالله من الشيطان الرجيم';

  @override
  String get avg => 'المتوسط';

  @override
  String get ayah => 'آية';

  @override
  String get batteryOptimization => 'تحسين البطارية';

  @override
  String get beautifulWidgets => 'ودجات جميلة';

  @override
  String get bestValue => 'أفضل قيمة';

  @override
  String get blackOnyx => 'أونيكس أسود';

  @override
  String get bookmarks => 'الإشارات المرجعية';

  @override
  String get brightIvoryInterface => 'واجهة عاجية مشرقة';

  @override
  String get calculatingDistance => 'جارٍ حساب المسافة...';

  @override
  String get calibrateYourDirection => 'معايرة الاتجاه';

  @override
  String get cancel => 'إلغاء';

  @override
  String get change => 'تغيير';

  @override
  String get changeTasbihMode => 'تغيير وضع التسبيح؟';

  @override
  String get chooseDhikr => 'اختر الذكر';

  @override
  String get chooseDisplayLanguage => 'اختر لغة العرض';

  @override
  String get chooseTheme => 'اختر المظهر';

  @override
  String get chooseYourPreferredLanguage => 'اختر لغتك المفضلة';

  @override
  String get clickOrSwipeToCount => 'اضغط أو اسحب للعد';

  @override
  String get close => 'إغلاق';

  @override
  String get closeCustomGoal => 'إغلاق الهدف المخصص';

  @override
  String get completeAtLeast33Dhikr => 'أكمل 33 ذكرًا على الأقل';

  @override
  String get connectYourHeartWithTheHolyQuran => 'صل قلبك بالقرآن الكريم.';

  @override
  String get continueReading => 'متابعة القراءة';

  @override
  String get countsPerRound => 'العدد في كل جولة';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'نسِّق مجموعتك بأحجار روحانية مصنوعة بإتقان.';

  @override
  String get current => 'الحالي';

  @override
  String get current2 => 'الحالي';

  @override
  String get currentLocationToMecca => 'الموقع الحالي إلى مكة';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'سيتم إعادة ضبط التقدم الحالي للوضع الجديد.';

  @override
  String get currentStreak => 'السلسلة الحالية';

  @override
  String get custom => 'مخصص';

  @override
  String get customDhikr => 'ذكر مخصص';

  @override
  String get customGoal => 'هدف مخصص';

  @override
  String get customPrayerSounds => 'أصوات أذان مخصصة';

  @override
  String get dailyGoal => 'الهدف اليومي';

  @override
  String get dailyQuests => 'مهام يومية';

  @override
  String get dailyQuranReminder => 'تذكير يومي بالقرآن';

  @override
  String get dailyReminders => 'تذكيرات يومية';

  @override
  String get dailyTasbih => 'تسبيح يومي';

  @override
  String get dark => 'داكن';

  @override
  String get dawn => 'الفجر';

  @override
  String get debug => 'تصحيح الأخطاء';

  @override
  String get dhikr => 'ذكر';

  @override
  String get dhikrActivity => 'نشاط الذكر';

  @override
  String get dhuAlHijjah => 'ذو الحجة';

  @override
  String get dhuAlQadah => 'ذو القعدة';

  @override
  String get dhuhr => 'الظهر';

  @override
  String get direction => 'الاتجاه';

  @override
  String get disableBatteryOptimization => 'إيقاف تحسين البطارية';

  @override
  String get disableOptimization => 'إيقاف التحسين';

  @override
  String get distance => 'المسافة';

  @override
  String get e => 'ق';

  @override
  String get eGHasbunallah => 'مثال: حسبنا الله';

  @override
  String get east => 'الشرق';

  @override
  String get enableAutoStart => 'تفعيل التشغيل التلقائي';

  @override
  String get enableNotifications => 'تفعيل الإشعارات';

  @override
  String get enableReminders => 'تفعيل التذكيرات';

  @override
  String get english => 'الإنجليزية';

  @override
  String get enterYourName => 'أدخل اسمك';

  @override
  String get equipped => 'مستخدم';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'كل ما تحتاجه لتجربة قرآن أفضل.';

  @override
  String get fajr => 'الفجر';

  @override
  String get feedback => 'ملاحظات';

  @override
  String get first => 'الأول';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'للحصول على أدق النتائج، ضع هاتفك بشكل مسطح وبعيدًا عن الأجسام المغناطيسية.';

  @override
  String get free => 'مجاني';

  @override
  String get fullBundle => 'الحزمة الكاملة';

  @override
  String get getAnAdFreeExperienceForever =>
      'احصل على تجربة بلا إعلانات إلى الأبد';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'احصل على تذكيرات للقراءة والاستمرار.';

  @override
  String get getStarted => 'ابدأ';

  @override
  String get gloryAndPraiseBeToAllah => 'تنزيه لله وحمد له';

  @override
  String get gloryBeToAllah => 'تنزيه لله عن كل نقص';

  @override
  String get gloryBeToAllahTheMagnificent => 'تنزيه لله العظيم عن كل نقص';

  @override
  String get goToHome => 'الذهاب إلى الرئيسية';

  @override
  String get goldenEngraved => 'منقوش ذهبي';

  @override
  String get greenJade => 'يشم أخضر';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'هانوي، فيتنام';

  @override
  String get haptic => 'اهتزاز';

  @override
  String get hasanatHub => 'مركز الحسنات';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'حسبي الله لا إله إلا هو';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'الرئيسية';

  @override
  String get howYourDataIsHandled => 'كيف تتم معالجة بياناتك';

  @override
  String get iSeekForgivenessFromAllah => 'أطلب المغفرة من الله';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'أحتمي بالله من الشيطان الرجيم';

  @override
  String get immediateAlerts => 'تنبيهات فورية';

  @override
  String get inTheNameOfAllah => 'باسم الله';

  @override
  String get indeedWeBelongToAllahAndToHim => 'إنا لله وإليه مرجعنا';

  @override
  String get innaLillahiWaInnaIlayhiRajiun => 'إنا لله وإنا إليه راجعون';

  @override
  String get isha => 'العشاء';

  @override
  String get jumadaAlAwwal => 'جمادى الأولى';

  @override
  String get jumadaAlThani => 'جمادى الآخرة';

  @override
  String get juz => 'الجزء';

  @override
  String get juz2 => 'جزء';

  @override
  String get keepAdhanAlarmsReliable => 'حافظ على موثوقية منبهات الأذان';

  @override
  String get keepItUpYouReDoingGreat => 'واصل! أداؤك رائع.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'حافظ على وصول تنبيهات الأذان حتى عند إغلاق التطبيق.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'لا حول ولا قوة إلا بالله';

  @override
  String get laIlahaIllallah => 'لا إله إلا الله';

  @override
  String get language => 'اللغة';

  @override
  String get lapisLazuli => 'لازورد';

  @override
  String get last7Days => 'آخر 7 أيام';

  @override
  String get later => 'لاحقًا';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'لنبدأ رحلتك الجميلة مع القرآن.';

  @override
  String get letSPersonalizeYourExperience => 'لنخصص\nتجربتك';

  @override
  String get light => 'فاتح';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get listenToOrReadAnyAyahToday => 'استمع إلى أي آية أو اقرأها اليوم';

  @override
  String get locating => 'جارٍ تحديد الموقع...';

  @override
  String get location => 'الموقع';

  @override
  String get locationPermissionsAreDenied => 'تم رفض أذونات الموقع';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'تم رفض أذونات الموقع نهائيًا.';

  @override
  String get locationServicesAreDisabled => 'خدمات الموقع معطلة.';

  @override
  String get longestStreak => 'أطول سلسلة';

  @override
  String get maghrib => 'المغرب';

  @override
  String get maybeLater => 'ربما لاحقًا';

  @override
  String get meccaSaudiArabia => 'مكة المكرمة، السعودية';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'رب اغفر وارحم';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'رب إني محتاج إلى ما تنزله عليَّ من خير';

  @override
  String get myLordIncreaseMeInKnowledge => 'رب زدني علمًا';

  @override
  String get myLordMakeItEasyAndDoNot => 'رب يسر ولا تعسر';

  @override
  String get n => 'ش';

  @override
  String get nameOptional => 'الاسم (اختياري)';

  @override
  String get next => 'التالي';

  @override
  String get nextDhikr => 'الذكر التالي';

  @override
  String get nextPrayer => 'الصلاة القادمة';

  @override
  String get night => 'الليل';

  @override
  String get nightEmeraldInterface => 'واجهة زمردية ليلية';

  @override
  String get noBookmarksYet => 'لا توجد إشارات بعد';

  @override
  String get noon => 'الظهيرة';

  @override
  String get north => 'شمال';

  @override
  String get northeast => 'شمال شرق';

  @override
  String get northwest => 'شمال غرب';

  @override
  String get notificationsAlarm => 'الإشعارات والمنبه';

  @override
  String get notificationsForPrayerTimes => 'إشعارات مواقيت الصلاة';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'اللهم صل على محمد';

  @override
  String get oEverLivingOSustainer => 'يا حي يا قيوم';

  @override
  String get openAutoStart => 'فتح التشغيل التلقائي';

  @override
  String get optimizeAdhanPerformance => 'تحسين أداء الأذان';

  @override
  String get ourLordGrantUsGoodInThisWorld => 'ربنا آتنا في الدنيا حسنة';

  @override
  String get page => 'الصفحة';

  @override
  String get pearl => 'لؤلؤ';

  @override
  String get personalizeYourAdhanNotifications => 'خصص إشعارات الأذان';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'الحمد لله رب العالمين';

  @override
  String get prayerAlarms => 'منبهات الصلاة';

  @override
  String get prayerSchedule => 'جدول الصلاة';

  @override
  String get prayerTimeNotifications => 'إشعارات أوقات الصلاة';

  @override
  String get prayerTimesAreLoading => 'جارٍ تحميل أوقات الصلاة';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'مواقيت الصلاة والقبلة وقراءة القرآن والتسبيح في رفيق يومي واحد.';

  @override
  String get prayerQuranQibla => 'الصلاة • القرآن • القبلة';

  @override
  String get premiumThemes => 'سمات مميزة';

  @override
  String get preparingYourSpiritualJourney => 'نجهز رحلتك الروحانية...';

  @override
  String get previousDhikr => 'الذكر السابق';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get qibla => 'القبلة';

  @override
  String get qiblaFinder => 'محدد القبلة';

  @override
  String get qiblaMap => 'خريطة القبلة';

  @override
  String get quran => 'القرآن';

  @override
  String get quranPlayback => 'تشغيل القرآن';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'يجمع Quran Pro مواقيت الصلاة والقبلة وقراءة القرآن والتسبيح في رفيق يومي بسيط.';

  @override
  String get quranProPreferences => 'تفضيلات Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'يحفظ Quran Pro تفضيلات التهيئة والتقدم محليًا على هذا الجهاز. قد تُستخدم التحليلات لتحسين الاستقرار والجودة.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'يحفظ Quran Pro تقدمك في التسبيح محليًا على هذا الجهاز. قد تُستخدم التحليلات لتحسين استقرار التطبيق وجودة المنتج.';

  @override
  String get quranRecitation => 'تلاوة القرآن';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ربنا آتنا في الدنيا حسنة';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'رب إني لما أنزلت إليَّ من خير فقير';

  @override
  String get rabbiYassirWaLaTuassir => 'رب يسر ولا تعسر';

  @override
  String get rabbiZidniIlma => 'رب زدني علمًا';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'رب اغفر وارحم وأنت خير الراحمين';

  @override
  String get rabiAlAwwal => 'ربيع الأول';

  @override
  String get rabiAlThani => 'ربيع الآخر';

  @override
  String get rateApp => 'قيّم التطبيق';

  @override
  String get rateQuranPro => 'قيِّم Quran Pro';

  @override
  String get readListen => 'اقرأ واستمع';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'اقرأ القرآن مع تلاوات عذبة.';

  @override
  String get recent => 'الأخيرة';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'موصى به لأجهزة Xiaomi وOppo وVivo وHuawei';

  @override
  String get redCarnelian => 'عقيق أحمر';

  @override
  String get remindMeAt => 'ذكرني في';

  @override
  String get removeAds => 'إزالة الإعلانات';

  @override
  String get requestingLocationPermission => 'جارٍ طلب إذن الموقع...';

  @override
  String get reset => 'إعادة ضبط';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get returnToCompass => 'العودة إلى البوصلة';

  @override
  String get s => 'ج';

  @override
  String get save => 'حفظ';

  @override
  String get saveGoal => 'حفظ الهدف';

  @override
  String get searchSurahNumberArabic => 'ابحث عن سورة أو رقم أو نص عربي...';

  @override
  String get searchSurah => 'ابحث عن سورة...';

  @override
  String get selectLanguage => 'اختر اللغة';

  @override
  String get selectTheThemeYouLike => 'اختر المظهر الذي يعجبك';

  @override
  String get selectYourBead => 'اختر خرزتك';

  @override
  String get shop => 'المتجر';

  @override
  String get shopCustomization => 'المتجر والتخصيص';

  @override
  String get sound => 'الصوت';

  @override
  String get south => 'جنوب';

  @override
  String get southeast => 'جنوب شرق';

  @override
  String get southwest => 'جنوب غرب';

  @override
  String get specialOccasionsAndMore => 'مناسبات خاصة والمزيد';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'سيتم تفعيل تقييم المتجر عند جاهزية النسخة الإنتاجية.';

  @override
  String get subhanallahiWaBihamdihi => 'سبحان الله وبحمده';

  @override
  String get subhanallahilAzim => 'سبحان الله العظيم';

  @override
  String get sunset => 'الغروب';

  @override
  String get supportQuranProOnTheStore => 'ادعم Quran Pro في المتجر';

  @override
  String get surah => 'سورة';

  @override
  String get tasbih => 'تسبيح';

  @override
  String get tasbihSettings => 'إعدادات التسبيح';

  @override
  String get tellUsWhatToImprove => 'أخبرنا بما يجب تحسينه';

  @override
  String get termsOfUse => 'شروط الاستخدام';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'شكرًا لاستخدامك Quran Pro. سيتم تفعيل تقييم المتجر عند جاهزية صفحة التطبيق في المتجر.';

  @override
  String get thereIsNoDeityExceptAllah => 'لا إله إلا الله';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'لا حول ولا قوة إلا بالله';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'يساعدنا ذلك على تخصيص التذكيرات وتتبع تقدمك.';

  @override
  String get tigerSEye => 'عين النمر';

  @override
  String get today => 'اليوم';

  @override
  String get total => 'الإجمالي';

  @override
  String get totalHasanat => 'إجمالي الحسنات';

  @override
  String get trackProgress => 'تتبع التقدم';

  @override
  String get trackYourReadingAndAchievements => 'تابع قراءتك وإنجازاتك.';

  @override
  String get tryAgain => 'حاول مرة أخرى';

  @override
  String get undo => 'تراجع';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'افتح جميع مظاهر التطبيق وتخصيصاته';

  @override
  String get usageGuidelines => 'إرشادات الاستخدام';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'استخدم Quran Pro باحترام للعبادة الشخصية والتعلم والأعمال الإسلامية اليومية.';

  @override
  String get viewAll => 'عرض الكل';

  @override
  String get w => 'غ';

  @override
  String get welcome => 'مرحبًا';

  @override
  String get west => 'غرب';

  @override
  String get yaHayyuYaQayyum => 'يا حي يا قيوم';

  @override
  String get youReAllSet => 'أنت جاهز!';

  @override
  String get yourProgress => 'تقدمك';

  @override
  String get continueLabel => 'متابعة';

  @override
  String get amethyst => 'جمشت';

  @override
  String get indonesian => 'الإندونيسية';

  @override
  String get turkish => 'التركية';

  @override
  String get vietnamese => 'الفيتنامية';

  @override
  String get turquoise => 'فيروز';

  @override
  String get wood => 'خشب';

  @override
  String get left => 'left';

  @override
  String get stayInspiredOnYourHomeScreen =>
      'Stay inspired on your home screen.';

  @override
  String get settings => 'الإعدادات';

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
  String get estimatedLocation => 'موقع تقديري';
}
