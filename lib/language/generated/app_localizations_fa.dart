// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get week => 'هفته';

  @override
  String get month => 'ماه';

  @override
  String get lifetime => 'کل زمان';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'کمی از کار خود فاصله بگیرید و برای الله وقت بگذارید.';

  @override
  String get prayerAlarmDefaultName => 'نماز';

  @override
  String productUnavailable(Object id) {
    return 'محصول $id برای خرید در دسترس نیست.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'خرید $productId با موفقیت انجام شد!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'خرید $productId بازیابی شد!';
  }

  @override
  String daysCount(Object count) {
    return '$count روز';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'نماز بعدی: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'فاصله تا مکه: $distance کیلومتر';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes دقیقه دیگر یادآوری کن';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'وقت نماز $prayerName فرا رسید';
  }

  @override
  String roundValue(Object round) {
    return 'دور: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language انتخاب شد';
  }

  @override
  String juzNumber(Object juz) {
    return 'جزء $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'صفحه $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'حزب $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: آیه $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count آیه';
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
    return 'سطح $level';
  }

  @override
  String get surahAlBaqarah2238 => '(سوره بقره 2:238)';

  @override
  String get text1juz => '1 جزء';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 صفحه';

  @override
  String get text100dhikr => '100 ذکر';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 صفحه';

  @override
  String get text28cclearsky => '28°C - آسمان صاف';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 صفحه';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'درباره';

  @override
  String get aboutQuranPro => 'درباره Quran Pro';

  @override
  String get activity => 'فعالیت';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'تبلیغ در حال بارگذاری است. لطفاً کمی بعد دوباره تلاش کنید.';

  @override
  String get addCustomDhikr => 'افزودن ذکر دلخواه';

  @override
  String get addCustomDhikr2 => 'افزودن ذکر دلخواه';

  @override
  String get addDhikr => 'افزودن ذکر';

  @override
  String get adjustPosition => 'تنظیم موقعیت';

  @override
  String get afternoon => 'بعدازظهر';

  @override
  String get alMasjidAlHaram => 'المسجد الحرام';

  @override
  String get alhamdulillahiRabbilAlamin => 'الحمد لله رب العالمین';

  @override
  String get alignedToQibla => 'رو به قبله';

  @override
  String get allPraiseIsDueToAllah => 'همه ستایش‌ها از آنِ الله است';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'همه امکانات ویژه با قیمت تخفیف‌خورده';

  @override
  String get allInOneQuranApp => 'اپلیکیشن جامع قرآن';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'الله برای من کافی است؛ هیچ معبودی جز او نیست';

  @override
  String get allahIsTheGreatest => 'الله بزرگ‌ترین است';

  @override
  String get allahuAkbar => 'الله اکبر';

  @override
  String get allahummaSalliAlaMuhammad => 'اللهم صل علی محمد';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'دسترسی به موقعیت مکانی را اجازه دهید یا برای استفاده از برنامه پیش‌فرض، تلاش دوباره را بزنید.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'برای دریافت اوقات نماز و یادآورهای روزانه، اعلان‌ها را اجازه دهید.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'اجازه دهید برنامه در پس‌زمینه اجرا شود';

  @override
  String get app => 'برنامه';

  @override
  String get arabic => 'عربی';

  @override
  String get asr => 'عصر';

  @override
  String get auzuBillahiMinAshShaytanirRajim => 'اعوذ بالله من الشیطان الرجیم';

  @override
  String get avg => 'میانگین';

  @override
  String get ayah => 'آیه';

  @override
  String get batteryOptimization => 'بهینه‌سازی باتری';

  @override
  String get beautifulWidgets => 'ویجت‌های زیبا';

  @override
  String get bestValue => 'بهترین ارزش';

  @override
  String get blackOnyx => 'اونیکس سیاه';

  @override
  String get bookmarks => 'نشانک‌ها';

  @override
  String get brightIvoryInterface => 'رابط روشن عاجی';

  @override
  String get calculatingDistance => 'در حال محاسبه فاصله...';

  @override
  String get calibrateYourDirection => 'جهت خود را کالیبره کنید';

  @override
  String get cancel => 'لغو';

  @override
  String get change => 'تغییر';

  @override
  String get changeTasbihMode => 'حالت تسبیح تغییر کند؟';

  @override
  String get chooseDhikr => 'انتخاب ذکر';

  @override
  String get chooseDisplayLanguage => 'انتخاب زبان نمایش';

  @override
  String get chooseTheme => 'انتخاب پوسته';

  @override
  String get chooseYourPreferredLanguage => 'زبان مورد نظر خود را انتخاب کنید';

  @override
  String get clickOrSwipeToCount => 'برای شمردن ضربه بزنید یا بکشید';

  @override
  String get close => 'بستن';

  @override
  String get closeCustomGoal => 'بستن هدف دلخواه';

  @override
  String get completeAtLeast33Dhikr => 'حداقل 33 ذکر را کامل کنید';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'قلب خود را با قرآن کریم پیوند دهید.';

  @override
  String get continueReading => 'ادامه خواندن';

  @override
  String get countsPerRound => 'تعداد در هر دور';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'مجموعه خود را با گوهرهای معنوی استادانه بسازید.';

  @override
  String get current => 'فعلی';

  @override
  String get current2 => 'فعلی';

  @override
  String get currentLocationToMecca => 'از موقعیت فعلی تا مکه';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'پیشرفت فعلی برای حالت جدید بازنشانی می‌شود.';

  @override
  String get currentStreak => 'زنجیره فعلی';

  @override
  String get custom => 'دلخواه';

  @override
  String get customDhikr => 'ذکر دلخواه';

  @override
  String get customGoal => 'هدف دلخواه';

  @override
  String get customPrayerSounds => 'صداهای اذان دلخواه';

  @override
  String get dailyGoal => 'هدف روزانه';

  @override
  String get dailyQuests => 'مأموریت‌های روزانه';

  @override
  String get dailyQuranReminder => 'یادآور روزانه قرآن';

  @override
  String get dailyReminders => 'یادآورهای روزانه';

  @override
  String get dailyTasbih => 'تسبیح روزانه';

  @override
  String get dark => 'تیره';

  @override
  String get dawn => 'سپیده‌دم';

  @override
  String get debug => 'اشکال‌زدایی';

  @override
  String get dhikr => 'ذکر';

  @override
  String get dhikrActivity => 'فعالیت ذکر';

  @override
  String get dhuAlHijjah => 'ذوالحجه';

  @override
  String get dhuAlQadah => 'ذوالقعده';

  @override
  String get dhuhr => 'ظهر';

  @override
  String get direction => 'جهت';

  @override
  String get disableBatteryOptimization => 'غیرفعال کردن بهینه‌سازی باتری';

  @override
  String get disableOptimization => 'غیرفعال کردن بهینه‌سازی';

  @override
  String get distance => 'فاصله';

  @override
  String get e => 'خ';

  @override
  String get eGHasbunallah => 'مثلاً حسبنا الله';

  @override
  String get east => 'شرق';

  @override
  String get enableAutoStart => 'فعال کردن اجرای خودکار';

  @override
  String get enableNotifications => 'فعال کردن اعلان‌ها';

  @override
  String get enableReminders => 'فعال کردن یادآورها';

  @override
  String get english => 'انگلیسی';

  @override
  String get enterYourName => 'نام خود را وارد کنید';

  @override
  String get equipped => 'انتخاب‌شده';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'هر آنچه برای تجربه بهتر قرآن نیاز دارید.';

  @override
  String get fajr => 'فجر';

  @override
  String get feedback => 'بازخورد';

  @override
  String get first => 'اولین';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'برای دقیق‌ترین نتیجه، گوشی را صاف نگه دارید و از اجسام مغناطیسی دور کنید.';

  @override
  String get free => 'رایگان';

  @override
  String get fullBundle => 'بسته کامل';

  @override
  String get getAnAdFreeExperienceForever =>
      'برای همیشه تجربه‌ای بدون تبلیغ داشته باشید';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'یادآوری بگیرید تا بخوانید و پیوسته بمانید.';

  @override
  String get getStarted => 'شروع کنید';

  @override
  String get gloryAndPraiseBeToAllah => 'پاکی و ستایش از آنِ الله است';

  @override
  String get gloryBeToAllah => 'پاک و منزه است الله';

  @override
  String get gloryBeToAllahTheMagnificent => 'پاک و منزه است الله عظیم';

  @override
  String get goToHome => 'رفتن به خانه';

  @override
  String get goldenEngraved => 'حکاکی طلایی';

  @override
  String get greenJade => 'یشم سبز';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'هانوی، ویتنام';

  @override
  String get haptic => 'لرزش';

  @override
  String get hasanatHub => 'مرکز حسنات';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'حسبی الله لا إله إلا هو';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'خانه';

  @override
  String get howYourDataIsHandled => 'داده‌های شما چگونه مدیریت می‌شود';

  @override
  String get iSeekForgivenessFromAllah => 'از الله آمرزش می‌خواهم';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'از شیطان رانده‌شده به الله پناه می‌برم';

  @override
  String get immediateAlerts => 'هشدارهای فوری';

  @override
  String get inTheNameOfAllah => 'به نام الله';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ما از آنِ الله هستیم و به سوی او بازمی‌گردیم';

  @override
  String get innaLillahiWaInnaIlayhiRajiun => 'إنا لله وإنا إلیه راجعون';

  @override
  String get isha => 'عشاء';

  @override
  String get jumadaAlAwwal => 'جمادی‌الاول';

  @override
  String get jumadaAlThani => 'جمادی‌الثانی';

  @override
  String get juz => 'جزء';

  @override
  String get juz2 => 'جزء';

  @override
  String get keepAdhanAlarmsReliable => 'اذان‌ها را قابل اعتماد نگه دارید';

  @override
  String get keepItUpYouReDoingGreat => 'ادامه بده! عالی پیش می‌روی.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'اذان را حتی وقتی برنامه بسته است قابل اعتماد نگه دارید.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'لا حول ولا قوة إلا بالله';

  @override
  String get laIlahaIllallah => 'لا إله إلا الله';

  @override
  String get language => 'زبان';

  @override
  String get lapisLazuli => 'لاجورد';

  @override
  String get last7Days => '7 روز گذشته';

  @override
  String get later => 'بعداً';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'بیایید سفر زیبای شما با قرآن را آغاز کنیم.';

  @override
  String get letSPersonalizeYourExperience =>
      'بیایید تجربه شما را\nشخصی‌سازی کنیم';

  @override
  String get light => 'روشن';

  @override
  String get lightMode => 'حالت روشن';

  @override
  String get listenToOrReadAnyAyahToday => 'امروز یک آیه بخوانید یا گوش دهید';

  @override
  String get locating => 'در حال مکان‌یابی...';

  @override
  String get location => 'موقعیت';

  @override
  String get locationPermissionsAreDenied => 'دسترسی به موقعیت مکانی رد شد';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'دسترسی به موقعیت مکانی برای همیشه رد شده است.';

  @override
  String get locationServicesAreDisabled => 'سرویس موقعیت مکانی غیرفعال است.';

  @override
  String get longestStreak => 'طولانی‌ترین زنجیره';

  @override
  String get maghrib => 'مغرب';

  @override
  String get maybeLater => 'شاید بعداً';

  @override
  String get meccaSaudiArabia => 'مکه، عربستان سعودی';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'پروردگارا، بیامرز و رحم کن';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'پروردگارا، به هر خیری که بر من فرو فرستی نیازمندم';

  @override
  String get myLordIncreaseMeInKnowledge => 'پروردگارا، بر دانشم بیفزا';

  @override
  String get myLordMakeItEasyAndDoNot => 'پروردگارا، آسان کن و دشوار مگردان';

  @override
  String get n => 'ش';

  @override
  String get nameOptional => 'نام (اختیاری)';

  @override
  String get next => 'بعدی';

  @override
  String get nextDhikr => 'ذکر بعدی';

  @override
  String get nextPrayer => 'نماز بعدی';

  @override
  String get night => 'شب';

  @override
  String get nightEmeraldInterface => 'رابط زمردی شب';

  @override
  String get noBookmarksYet => 'هنوز نشانکی نیست';

  @override
  String get noon => 'نیم‌روز';

  @override
  String get north => 'شمال';

  @override
  String get northeast => 'شمال شرقی';

  @override
  String get northwest => 'شمال غربی';

  @override
  String get notificationsAlarm => 'اعلان‌ها و هشدار';

  @override
  String get notificationsForPrayerTimes => 'اعلان برای اوقات نماز';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'بار الها، بر محمد درود فرست';

  @override
  String get oEverLivingOSustainer => 'ای زنده، ای پاینده';

  @override
  String get openAutoStart => 'باز کردن اجرای خودکار';

  @override
  String get optimizeAdhanPerformance => 'بهینه‌سازی عملکرد اذان';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'پروردگارا، در این دنیا به ما نیکی عطا کن';

  @override
  String get page => 'صفحه';

  @override
  String get pearl => 'مروارید';

  @override
  String get personalizeYourAdhanNotifications =>
      'اعلان‌های اذان خود را شخصی‌سازی کنید';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'ستایش از آنِ الله، پروردگار جهانیان است';

  @override
  String get prayerAlarms => 'هشدارهای نماز';

  @override
  String get prayerSchedule => 'برنامه اوقات نماز';

  @override
  String get prayerTimeNotifications => 'اعلان اوقات نماز';

  @override
  String get prayerTimesAreLoading => 'اوقات نماز در حال بارگذاری است';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'اوقات نماز، قبله، خواندن قرآن و تسبیح در یک همراه روزانه.';

  @override
  String get prayerQuranQibla => 'نماز • قرآن • قبله';

  @override
  String get premiumThemes => 'پوسته‌های ویژه';

  @override
  String get preparingYourSpiritualJourney =>
      'در حال آماده‌سازی سفر معنوی شما...';

  @override
  String get previousDhikr => 'ذکر قبلی';

  @override
  String get privacyPolicy => 'سیاست حریم خصوصی';

  @override
  String get qibla => 'قبله';

  @override
  String get qiblaFinder => 'قبله‌نما';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'قرآن';

  @override
  String get quranPlayback => 'پخش قرآن';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro اوقات نماز، قبله، خواندن قرآن و تسبیح را در یک همراه ساده روزانه گرد هم می‌آورد.';

  @override
  String get quranProPreferences => 'تنظیمات Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro تنظیمات آشنایی و پیشرفت را به‌صورت محلی روی همین دستگاه ذخیره می‌کند. ممکن است از تحلیل داده برای بهبود پایداری و کیفیت استفاده شود.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro پیشرفت تسبیح شما را به‌صورت محلی روی همین دستگاه ذخیره می‌کند. ممکن است از تحلیل داده برای بهبود پایداری و کیفیت برنامه استفاده شود.';

  @override
  String get quranRecitation => 'تلاوت قرآن';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ربنا آتنا فی الدنیا حسنة';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'رب إنی لما أنزلت إلیّ من خیر فقیر';

  @override
  String get rabbiYassirWaLaTuassir => 'رب یسر ولا تعسر';

  @override
  String get rabbiZidniIlma => 'رب زدنی علماً';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'رب اغفر وارحم وأنت خیر الراحمین';

  @override
  String get rabiAlAwwal => 'ربیع‌الاول';

  @override
  String get rabiAlThani => 'ربیع‌الثانی';

  @override
  String get rateApp => 'امتیاز به برنامه';

  @override
  String get rateQuranPro => 'امتیاز به Quran Pro';

  @override
  String get readListen => 'خواندن و شنیدن';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'قرآن را با تلاوت‌های زیبا بخوانید.';

  @override
  String get recent => 'اخیر';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'پیشنهادشده برای شیائومی، اوپو، ویوو و هواوی';

  @override
  String get redCarnelian => 'عقیق سرخ';

  @override
  String get remindMeAt => 'یادآوری در ساعت';

  @override
  String get removeAds => 'حذف تبلیغات';

  @override
  String get requestingLocationPermission =>
      'در حال درخواست دسترسی به موقعیت...';

  @override
  String get reset => 'بازنشانی';

  @override
  String get retry => 'تلاش دوباره';

  @override
  String get returnToCompass => 'بازگشت به قطب‌نما';

  @override
  String get s => 'ج';

  @override
  String get save => 'ذخیره';

  @override
  String get saveGoal => 'ذخیره هدف';

  @override
  String get searchSurahNumberArabic => 'جستجوی سوره، شماره، عربی...';

  @override
  String get searchSurah => 'جستجوی سوره...';

  @override
  String get selectLanguage => 'انتخاب زبان';

  @override
  String get selectTheThemeYouLike => 'پوسته دلخواه خود را انتخاب کنید';

  @override
  String get selectYourBead => 'دانه تسبیح خود را انتخاب کنید';

  @override
  String get shop => 'فروشگاه';

  @override
  String get shopCustomization => 'فروشگاه و شخصی‌سازی';

  @override
  String get sound => 'صدا';

  @override
  String get south => 'جنوب';

  @override
  String get southeast => 'جنوب شرقی';

  @override
  String get southwest => 'جنوب غربی';

  @override
  String get specialOccasionsAndMore => 'مناسبت‌های ویژه و بیشتر';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'امتیازدهی در فروشگاه پس از آماده شدن نسخه نهایی فعال می‌شود.';

  @override
  String get subhanallahiWaBihamdihi => 'سبحان الله وبحمده';

  @override
  String get subhanallahilAzim => 'سبحان الله العظیم';

  @override
  String get sunset => 'غروب';

  @override
  String get supportQuranProOnTheStore => 'از Quran Pro در فروشگاه حمایت کنید';

  @override
  String get surah => 'سوره';

  @override
  String get tasbih => 'تسبیح';

  @override
  String get tasbihSettings => 'تنظیمات تسبیح';

  @override
  String get tellUsWhatToImprove => 'بگویید چه چیزی را بهتر کنیم';

  @override
  String get termsOfUse => 'شرایط استفاده';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'از استفاده شما از Quran Pro سپاسگزاریم. امتیازدهی در فروشگاه پس از آماده شدن نسخه نهایی فعال می‌شود.';

  @override
  String get thereIsNoDeityExceptAllah => 'هیچ معبودی جز الله نیست';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'هیچ نیرو و توانی جز به یاری الله نیست';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'این کمک می‌کند یادآورها را شخصی کنیم و پیشرفت شما را دنبال کنیم.';

  @override
  String get tigerSEye => 'چشم ببر';

  @override
  String get today => 'امروز';

  @override
  String get total => 'کل';

  @override
  String get totalHasanat => 'کل حسنات';

  @override
  String get trackProgress => 'پیگیری پیشرفت';

  @override
  String get trackYourReadingAndAchievements =>
      'خواندن و دستاوردهای خود را دنبال کنید.';

  @override
  String get tryAgain => 'تلاش دوباره';

  @override
  String get undo => 'بازگردانی';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'باز کردن همه پوسته‌ها و شخصی‌سازی‌های برنامه';

  @override
  String get usageGuidelines => 'راهنمای استفاده';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'از Quran Pro با احترام برای عبادت شخصی، یادگیری و برنامه‌های روزانه اسلامی استفاده کنید.';

  @override
  String get viewAll => 'مشاهده همه';

  @override
  String get w => 'ب';

  @override
  String get welcome => 'خوش آمدید';

  @override
  String get west => 'غرب';

  @override
  String get yaHayyuYaQayyum => 'یا حی یا قیوم';

  @override
  String get youReAllSet => 'همه چیز آماده است!';

  @override
  String get yourProgress => 'پیشرفت شما';

  @override
  String get continueLabel => 'ادامه';

  @override
  String get amethyst => 'آمتیست';

  @override
  String get indonesian => 'اندونزیایی';

  @override
  String get turkish => 'ترکی';

  @override
  String get vietnamese => 'ویتنامی';

  @override
  String get turquoise => 'فیروزه';

  @override
  String get wood => 'چوب';

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
  String get estimatedLocation => 'موقعیت تقریبی';
}
