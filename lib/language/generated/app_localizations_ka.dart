// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Georgian (`ka`).
class AppLocalizationsKa extends AppLocalizations {
  AppLocalizationsKa([String locale = 'ka']) : super(locale);

  @override
  String get week => 'კვირა';

  @override
  String get month => 'თვე';

  @override
  String get lifetime => 'მთელი დრო';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'შეისვენეთ საქმეებისგან და დრო დაუთმეთ ალლაჰს.';

  @override
  String get prayerAlarmDefaultName => 'ნამაზი';

  @override
  String productUnavailable(Object id) {
    return 'პროდუქტი $id შესაძენად მიუწვდომელია.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId-ის შეძენა წარმატებულია!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId-ის შენაძენი აღდგენილია!';
  }

  @override
  String daysCount(Object count) {
    return '$count დღე';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'მოახლოებული: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'მანძილი მექამდე: $distance კმ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'შემახსენე $minutes წუთში';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName ნამაზის დროა';
  }

  @override
  String roundValue(Object round) {
    return 'წრე: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'არჩეულია $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'ჯუზი $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'გვერდი $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ჰიზბი $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: აიათი $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count აიათი';
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
    return 'დონე $level';
  }

  @override
  String get surahAlBaqarah2238 => '(სურა ალ-ბაყარა 2:238)';

  @override
  String get text1juz => '1 ჯუზი';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 გვერდი';

  @override
  String get text100dhikr => '100 ზიქრი';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 გვერდი';

  @override
  String get text28cclearsky => '28°C - მოწმენდილი ცა';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 გვერდი';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'აპის შესახებ';

  @override
  String get aboutQuranPro => 'Quran Pro-ს შესახებ';

  @override
  String get activity => 'აქტივობა';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'რეკლამა იტვირთება. სცადეთ ცოტა ხანში.';

  @override
  String get addCustomDhikr => 'საკუთარი ზიქრის დამატება';

  @override
  String get addCustomDhikr2 => 'საკუთარი ზიქრის დამატება';

  @override
  String get addDhikr => 'ზიქრის დამატება';

  @override
  String get adjustPosition => 'პოზიციის დარეგულირება';

  @override
  String get afternoon => 'ნაშუადღევი';

  @override
  String get alMasjidAlHaram => 'ალ-მასჯიდ ალ-ჰარამი';

  @override
  String get alhamdulillahiRabbilAlamin => 'ალჰამდულილლაჰი რაბბილ ალამინ';

  @override
  String get alignedToQibla => 'მიმართულია ყიბლისკენ';

  @override
  String get allPraiseIsDueToAllah => 'ყოველგვარი ქება ალლაჰს ეკუთვნის';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'ყველა პრემიუმ ფუნქცია შეღავათიან ფასად';

  @override
  String get allInOneQuranApp => 'ყურანის ერთიანი აპი';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'ალლაჰი მეყოფა; არ არსებობს ღვთაება მის გარდა';

  @override
  String get allahIsTheGreatest => 'ალლაჰი უდიდესია';

  @override
  String get allahuAkbar => 'ალლაჰუ აქბარ';

  @override
  String get allahummaSalliAlaMuhammad => 'ალლაჰუმმა სალლი ალა მუჰამმად';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'დაუშვით მდებარეობაზე წვდომა ან შეეხეთ „ხელახლა ცდას“, რომ სარეზერვო განრიგი გამოიყენოთ.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'ჩართეთ შეტყობინებები, რომ მიიღოთ ნამაზის დრო და ყოველდღიური შეხსენებები.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'დაუშვით აპის ფონურ რეჟიმში მუშაობა';

  @override
  String get app => 'აპი';

  @override
  String get arabic => 'არაბული';

  @override
  String get asr => 'ასრი';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'აუზუ ბილლაჰი მინ აშ-შაითანირ რაჯიმ';

  @override
  String get avg => 'საშ.';

  @override
  String get ayah => 'აიათი';

  @override
  String get batteryOptimization => 'ბატარეის ოპტიმიზაცია';

  @override
  String get beautifulWidgets => 'ლამაზი ვიჯეტები';

  @override
  String get bestValue => 'საუკეთესო შეთავაზება';

  @override
  String get blackOnyx => 'შავი ონიქსი';

  @override
  String get bookmarks => 'სანიშნეები';

  @override
  String get brightIvoryInterface => 'ღია, სპილოს ძვლის ფერის ინტერფეისი';

  @override
  String get calculatingDistance => 'მანძილი გამოითვლება...';

  @override
  String get calibrateYourDirection => 'დააკალიბრეთ მიმართულება';

  @override
  String get cancel => 'გაუქმება';

  @override
  String get change => 'შეცვლა';

  @override
  String get changeTasbihMode => 'შევცვალოთ თასბიჰის რეჟიმი?';

  @override
  String get chooseDhikr => 'აირჩიეთ ზიქრი';

  @override
  String get chooseDisplayLanguage => 'აირჩიეთ ინტერფეისის ენა';

  @override
  String get chooseTheme => 'აირჩიეთ თემა';

  @override
  String get chooseYourPreferredLanguage => 'აირჩიეთ თქვენთვის სასურველი ენა';

  @override
  String get clickOrSwipeToCount => 'დასათვლელად შეეხეთ ან გადაუსვით';

  @override
  String get close => 'დახურვა';

  @override
  String get closeCustomGoal => 'მორგებული მიზნის დახურვა';

  @override
  String get completeAtLeast33Dhikr => 'შეასრულეთ სულ მცირე 33 ზიქრი';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'დააკავშირეთ თქვენი გული წმინდა ყურანთან.';

  @override
  String get continueReading => 'კითხვის გაგრძელება';

  @override
  String get countsPerRound => 'დათვლა ერთ წრეზე';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'შეავსეთ კოლექცია ოსტატურად შექმნილი სულიერი თვლებით.';

  @override
  String get current => 'მიმდინარე';

  @override
  String get current2 => 'მიმდინარე';

  @override
  String get currentLocationToMecca => 'მიმდინარე მდებარეობიდან მექამდე';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'მიმდინარე პროგრესი ახალი რეჟიმისთვის განულდება.';

  @override
  String get currentStreak => 'მიმდინარე სერია';

  @override
  String get custom => 'მორგებული';

  @override
  String get customDhikr => 'საკუთარი ზიქრი';

  @override
  String get customGoal => 'მორგებული მიზანი';

  @override
  String get customPrayerSounds => 'ნამაზის საკუთარი ხმები';

  @override
  String get dailyGoal => 'დღიური მიზანი';

  @override
  String get dailyQuests => 'დღიური დავალებები';

  @override
  String get dailyQuranReminder => 'ყურანის ყოველდღიური შეხსენება';

  @override
  String get dailyReminders => 'ყოველდღიური შეხსენებები';

  @override
  String get dailyTasbih => 'დღიური თასბიჰი';

  @override
  String get dark => 'მუქი';

  @override
  String get dawn => 'გამთენიება';

  @override
  String get debug => 'გამართვა';

  @override
  String get dhikr => 'ზიქრი';

  @override
  String get dhikrActivity => 'ზიქრის აქტივობა';

  @override
  String get dhuAlHijjah => 'ზულ-ჰიჯა';

  @override
  String get dhuAlQadah => 'ზულ-ყაადა';

  @override
  String get dhuhr => 'ზუჰრი';

  @override
  String get direction => 'მიმართულება';

  @override
  String get disableBatteryOptimization => 'ბატარეის ოპტიმიზაციის გამორთვა';

  @override
  String get disableOptimization => 'ოპტიმიზაციის გამორთვა';

  @override
  String get distance => 'მანძილი';

  @override
  String get e => 'ა';

  @override
  String get eGHasbunallah => 'მაგ. ჰასბუნალლაჰ';

  @override
  String get east => 'აღმოსავლეთი';

  @override
  String get enableAutoStart => 'ავტოგაშვების ჩართვა';

  @override
  String get enableNotifications => 'შეტყობინებების ჩართვა';

  @override
  String get enableReminders => 'შეხსენებების ჩართვა';

  @override
  String get english => 'ინგლისური';

  @override
  String get enterYourName => 'შეიყვანეთ თქვენი სახელი';

  @override
  String get equipped => 'გამოყენებაშია';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'ყველაფერი, რაც ყურანთან უკეთესი კავშირისთვის გჭირდებათ.';

  @override
  String get fajr => 'ფაჯრი';

  @override
  String get feedback => 'უკუკავშირი';

  @override
  String get first => 'პირველი';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'ყველაზე ზუსტი შედეგისთვის დაიჭირეთ ტელეფონი ჰორიზონტალურად, მაგნიტური საგნებისგან მოშორებით.';

  @override
  String get free => 'უფასო';

  @override
  String get fullBundle => 'სრული პაკეტი';

  @override
  String get getAnAdFreeExperienceForever => 'სამუდამოდ დაემშვიდობეთ რეკლამებს';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'მიიღეთ შეხსენებები კითხვაზე და შეინარჩუნეთ თანმიმდევრულობა.';

  @override
  String get getStarted => 'დაწყება';

  @override
  String get gloryAndPraiseBeToAllah => 'დიდება და ქება ალლაჰს';

  @override
  String get gloryBeToAllah => 'დიდება ალლაჰს';

  @override
  String get gloryBeToAllahTheMagnificent => 'დიდება ალლაჰს, უდიდებულესს';

  @override
  String get goToHome => 'მთავარზე გადასვლა';

  @override
  String get goldenEngraved => 'ოქროთი გრავირებული';

  @override
  String get greenJade => 'მწვანე ნეფრიტი';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ჰანოი, ვიეტნამი';

  @override
  String get haptic => 'ვიბრაცია';

  @override
  String get hasanatHub => 'ჰასანათის ცენტრი';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ჰასბიალლაჰუ ლა ილაჰა ილლა ჰუვა';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'მთავარი';

  @override
  String get howYourDataIsHandled => 'როგორ მუშავდება თქვენი მონაცემები';

  @override
  String get iSeekForgivenessFromAllah => 'შენდობას ვთხოვ ალლაჰს';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'ალლაჰს შევეფარები დაწყევლილი სატანისგან';

  @override
  String get immediateAlerts => 'მყისიერი შეტყობინებები';

  @override
  String get inTheNameOfAllah => 'ალლაჰის სახელით';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'ჭეშმარიტად, ალლაჰს ვეკუთვნით და მასთან დავბრუნდებით';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'ინნა ლილლაჰი ვა ინნა ილაიჰი რაჯიუნ';

  @override
  String get isha => 'იშა';

  @override
  String get jumadaAlAwwal => 'ჯუმადა ალ-ავვალი';

  @override
  String get jumadaAlThani => 'ჯუმადა ალ-თანი';

  @override
  String get juz => 'ჯუზი';

  @override
  String get juz2 => 'ჯუზი';

  @override
  String get keepAdhanAlarmsReliable =>
      'შეინარჩუნეთ აზანის სიგნალების საიმედოობა';

  @override
  String get keepItUpYouReDoingGreat => 'განაგრძეთ! შესანიშნავად გამოგდით.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'აზანი საიმედოდ იმუშაოს მაშინაც, როცა აპი დახურულია.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'ლა ჰაულა ვა ლა ყუვვათა ილლა ბილლაჰ';

  @override
  String get laIlahaIllallah => 'ლა ილაჰა ილლალლაჰ';

  @override
  String get language => 'ენა';

  @override
  String get lapisLazuli => 'ლაზურიტი';

  @override
  String get last7Days => 'ბოლო 7 დღე';

  @override
  String get later => 'მოგვიანებით';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'დავიწყოთ თქვენი მშვენიერი მოგზაურობა ყურანთან ერთად.';

  @override
  String get letSPersonalizeYourExperience =>
      'მოვარგოთ აპი\nთქვენს საჭიროებებს';

  @override
  String get light => 'ღია';

  @override
  String get lightMode => 'ღია რეჟიმი';

  @override
  String get listenToOrReadAnyAyahToday =>
      'მოისმინეთ ან წაიკითხეთ ნებისმიერი აიათი დღეს';

  @override
  String get locating => 'მდებარეობის დადგენა...';

  @override
  String get location => 'მდებარეობა';

  @override
  String get locationPermissionsAreDenied => 'მდებარეობაზე წვდომა აკრძალულია';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'მდებარეობაზე წვდომა სამუდამოდ აკრძალულია.';

  @override
  String get locationServicesAreDisabled => 'გეოლოკაციის სერვისები გამორთულია.';

  @override
  String get longestStreak => 'ყველაზე გრძელი სერია';

  @override
  String get maghrib => 'მაღრიბი';

  @override
  String get maybeLater => 'იქნებ მოგვიანებით';

  @override
  String get meccaSaudiArabia => 'მექა, საუდის არაბეთი';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'უფალო ჩემო, მაპატიე და შემიწყალე';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'უფალო ჩემო, მჭირდება ყოველი სიკეთე, რასაც ჩამომივლენ';

  @override
  String get myLordIncreaseMeInKnowledge => 'უფალო ჩემო, შემძინე ცოდნა';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'უფალო ჩემო, გამიადვილე და ნუ გამიძნელებ';

  @override
  String get n => 'ჩ';

  @override
  String get nameOptional => 'სახელი (არასავალდებულო)';

  @override
  String get next => 'შემდეგი';

  @override
  String get nextDhikr => 'შემდეგი ზიქრი';

  @override
  String get nextPrayer => 'შემდეგი ნამაზი';

  @override
  String get night => 'ღამე';

  @override
  String get nightEmeraldInterface => 'ღამის ზურმუხტისფერი ინტერფეისი';

  @override
  String get noBookmarksYet => 'სანიშნეები ჯერ არ არის';

  @override
  String get noon => 'შუადღე';

  @override
  String get north => 'ჩრდილოეთი';

  @override
  String get northeast => 'ჩრდილო-აღმოსავლეთი';

  @override
  String get northwest => 'ჩრდილო-დასავლეთი';

  @override
  String get notificationsAlarm => 'შეტყობინებები და მაღვიძარა';

  @override
  String get notificationsForPrayerTimes => 'შეტყობინებები ნამაზის დროზე';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'ჰოი ალლაჰ, აკურთხე მუჰამმადი';

  @override
  String get oEverLivingOSustainer => 'ჰოი მარადცოცხალო, ჰოი მარადმყოფო';

  @override
  String get openAutoStart => 'ავტოგაშვების გახსნა';

  @override
  String get optimizeAdhanPerformance => 'აზანის მუშაობის ოპტიმიზაცია';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'უფალო ჩვენო, მოგვმადლე სიკეთე ამ ქვეყნად';

  @override
  String get page => 'გვერდი';

  @override
  String get pearl => 'მარგალიტი';

  @override
  String get personalizeYourAdhanNotifications =>
      'მოირგეთ აზანის შეტყობინებები';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'ქება ალლაჰს, სამყაროთა უფალს';

  @override
  String get prayerAlarms => 'ნამაზის მაღვიძარები';

  @override
  String get prayerSchedule => 'ნამაზის განრიგი';

  @override
  String get prayerTimeNotifications => 'ნამაზის დროის შეტყობინებები';

  @override
  String get prayerTimesAreLoading => 'ნამაზის დრო იტვირთება';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'ნამაზის დრო, ყიბლა, ყურანის კითხვა და თასბიჰი ერთ ყოველდღიურ თანამგზავრში.';

  @override
  String get prayerQuranQibla => 'ნამაზი • ყურანი • ყიბლა';

  @override
  String get premiumThemes => 'პრემიუმ თემები';

  @override
  String get preparingYourSpiritualJourney =>
      'მზადდება თქვენი სულიერი მოგზაურობა...';

  @override
  String get previousDhikr => 'წინა ზიქრი';

  @override
  String get privacyPolicy => 'კონფიდენციალურობის პოლიტიკა';

  @override
  String get qibla => 'ყიბლა';

  @override
  String get qiblaFinder => 'ყიბლის საძიებელი';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'ყურანი';

  @override
  String get quranPlayback => 'ყურანის დაკვრა';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro აერთიანებს ნამაზის დროს, ყიბლას, ყურანის კითხვასა და თასბიჰს ერთ მარტივ ყოველდღიურ თანამგზავრში.';

  @override
  String get quranProPreferences => 'Quran Pro-ს პარამეტრები';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro ინახავს გაცნობისა და პროგრესის პარამეტრებს ლოკალურად ამ მოწყობილობაზე. ანალიტიკა შესაძლოა გამოყენებულ იქნეს სტაბილურობისა და ხარისხის გასაუმჯობესებლად.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro ინახავს თქვენი თასბიჰის პროგრესს ლოკალურად ამ მოწყობილობაზე. ანალიტიკა შესაძლოა გამოყენებულ იქნეს აპის სტაბილურობისა და პროდუქტის ხარისხის გასაუმჯობესებლად.';

  @override
  String get quranRecitation => 'ყურანის რეციტაცია';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'რაბბანა ათინა ფიდ-დუნია ჰასანა';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'რაბბი ინნი ლიმა ანზალთა ილაია მინ ხაირინ ფაყირ';

  @override
  String get rabbiYassirWaLaTuassir => 'რაბბი იასსირ ვა ლა თუასსირ';

  @override
  String get rabbiZidniIlma => 'რაბბი ზიდნი ილმა';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'რაბბიღფირ ვარჰამ ვა ანთა ხაირურ რაჰიმინ';

  @override
  String get rabiAlAwwal => 'რაბი ალ-ავვალი';

  @override
  String get rabiAlThani => 'რაბი ალ-თანი';

  @override
  String get rateApp => 'შეაფასეთ აპი';

  @override
  String get rateQuranPro => 'შეაფასეთ Quran Pro';

  @override
  String get readListen => 'წაიკითხეთ და მოისმინეთ';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'იკითხეთ ყურანი მშვენიერი რეციტაციებით.';

  @override
  String get recent => 'ბოლოდროინდელი';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'რეკომენდებულია Xiaomi, Oppo, Vivo და Huawei მოწყობილობებისთვის';

  @override
  String get redCarnelian => 'წითელი სარდიონი';

  @override
  String get remindMeAt => 'შემახსენე';

  @override
  String get removeAds => 'რეკლამის მოხსნა';

  @override
  String get requestingLocationPermission =>
      'მდებარეობაზე ნებართვის მოთხოვნა...';

  @override
  String get reset => 'განულება';

  @override
  String get retry => 'ხელახლა ცდა';

  @override
  String get returnToCompass => 'კომპასზე დაბრუნება';

  @override
  String get s => 'ს';

  @override
  String get save => 'შენახვა';

  @override
  String get saveGoal => 'მიზნის შენახვა';

  @override
  String get searchSurahNumberArabic => 'მოძებნეთ სურა, ნომერი, არაბული...';

  @override
  String get searchSurah => 'მოძებნეთ სურა...';

  @override
  String get selectLanguage => 'აირჩიეთ ენა';

  @override
  String get selectTheThemeYouLike => 'აირჩიეთ თემა, რომელიც მოგწონთ';

  @override
  String get selectYourBead => 'აირჩიეთ თქვენი მძივი';

  @override
  String get shop => 'მაღაზია';

  @override
  String get shopCustomization => 'მაღაზია და პერსონალიზაცია';

  @override
  String get sound => 'ხმა';

  @override
  String get south => 'სამხრეთი';

  @override
  String get southeast => 'სამხრეთ-აღმოსავლეთი';

  @override
  String get southwest => 'სამხრეთ-დასავლეთი';

  @override
  String get specialOccasionsAndMore => 'განსაკუთრებული დღეები და სხვა';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'მაღაზიაში შეფასება ხელმისაწვდომი გახდება, როცა გამოქვეყნების გვერდი მზად იქნება.';

  @override
  String get subhanallahiWaBihamdihi => 'სუბჰანალლაჰი ვა ბიჰამდიჰი';

  @override
  String get subhanallahilAzim => 'სუბჰანალლაჰილ აზიმ';

  @override
  String get sunset => 'მზის ჩასვლა';

  @override
  String get supportQuranProOnTheStore =>
      'მხარი დაუჭირეთ Quran Pro-ს მაღაზიაში';

  @override
  String get surah => 'სურა';

  @override
  String get tasbih => 'თასბიჰი';

  @override
  String get tasbihSettings => 'თასბიჰის პარამეტრები';

  @override
  String get tellUsWhatToImprove => 'გვითხარით, რა გავაუმჯობესოთ';

  @override
  String get termsOfUse => 'მოხმარების პირობები';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'მადლობა Quran Pro-ს გამოყენებისთვის. მაღაზიაში შეფასება ხელმისაწვდომი გახდება, როცა გამოქვეყნების გვერდი მზად იქნება.';

  @override
  String get thereIsNoDeityExceptAllah => 'არ არსებობს ღვთაება ალლაჰის გარდა';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'არ არსებობს ძალა და შესაძლებლობა ალლაჰის გარეშე';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'ეს დაგვეხმარება შეხსენებების მორგებასა და თქვენი პროგრესის თვალყურის დევნებაში.';

  @override
  String get tigerSEye => 'ვეფხვის თვალი';

  @override
  String get today => 'დღეს';

  @override
  String get total => 'სულ';

  @override
  String get totalHasanat => 'სულ ჰასანათი';

  @override
  String get trackProgress => 'თვალი ადევნეთ პროგრესს';

  @override
  String get trackYourReadingAndAchievements =>
      'თვალი ადევნეთ თქვენს კითხვასა და მიღწევებს.';

  @override
  String get tryAgain => 'სცადეთ ხელახლა';

  @override
  String get undo => 'მოქმედების დაბრუნება';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'გახსენით აპის ყველა თემა და პერსონალიზაცია';

  @override
  String get usageGuidelines => 'გამოყენების წესები';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'გამოიყენეთ Quran Pro პატივისცემით პირადი თაყვანისცემის, სწავლისა და ყოველდღიური ისლამური რუტინისთვის.';

  @override
  String get viewAll => 'ყველას ნახვა';

  @override
  String get w => 'დ';

  @override
  String get welcome => 'მოგესალმებით';

  @override
  String get west => 'დასავლეთი';

  @override
  String get yaHayyuYaQayyum => 'ია ჰაიუ ია ყაიუმ';

  @override
  String get youReAllSet => 'ყველაფერი მზადაა!';

  @override
  String get yourProgress => 'თქვენი პროგრესი';

  @override
  String get continueLabel => 'გაგრძელება';

  @override
  String get amethyst => 'ამეთვისტო';

  @override
  String get indonesian => 'ინდონეზიური';

  @override
  String get turkish => 'თურქული';

  @override
  String get vietnamese => 'ვიეტნამური';

  @override
  String get turquoise => 'ფირუზი';

  @override
  String get wood => 'ხე';

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
