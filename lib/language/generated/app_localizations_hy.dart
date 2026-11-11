// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Armenian (`hy`).
class AppLocalizationsHy extends AppLocalizations {
  AppLocalizationsHy([String locale = 'hy']) : super(locale);

  @override
  String get week => 'Շաբաթ';

  @override
  String get month => 'Ամիս';

  @override
  String get lifetime => 'Ողջ ժամանակը';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Ընդմիջեք ձեր գործը և ժամանակ հատկացրեք Ալլահին։';

  @override
  String get prayerAlarmDefaultName => 'Աղոթք';

  @override
  String productUnavailable(Object id) {
    return '$id ապրանքը հասանելի չէ գնման համար։';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId-ի գնումը հաջողվեց!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId-ի գնումը վերականգնվեց!';
  }

  @override
  String daysCount(Object count) {
    return '$count օր';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'ՄՈՏԱԿԱ՝ $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Հեռավորությունը մինչև Մեքքա՝ $distance կմ';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Հիշեցնել $minutes րոպեից';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName աղոթքի ժամն է';
  }

  @override
  String roundValue(Object round) {
    return 'Շրջան՝ $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Ընտրվեց $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Ջուզ $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Էջ $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Հիզբ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName՝ այա $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count այա';
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
    return 'ՄԱԿԱՐԴԱԿ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Ալ-Բաքարա սուրա 2:238)';

  @override
  String get text1juz => '1 ջուզ';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 էջ';

  @override
  String get text100dhikr => '100 զիկր';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 էջ';

  @override
  String get text28cclearsky => '28°C - Պարզ երկինք';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 էջ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Հավելվածի մասին';

  @override
  String get aboutQuranPro => 'Quran Pro-ի մասին';

  @override
  String get activity => 'Ակտիվություն';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Գովազդը բեռնվում է։ Խնդրում ենք շուտով նորից փորձել։';

  @override
  String get addCustomDhikr => 'Ավելացնել սեփական զիկր';

  @override
  String get addCustomDhikr2 => 'Ավելացնել Սեփական Զիկր';

  @override
  String get addDhikr => 'Ավելացնել զիկր';

  @override
  String get adjustPosition => 'ԿԱՐԳԱՎՈՐԵԼ ԴԻՐՔԸ';

  @override
  String get afternoon => 'ԿԵՍՕՐԻՑ ՀԵՏՈ';

  @override
  String get alMasjidAlHaram => 'Ալ-Մասջիդ ալ-Հարամ';

  @override
  String get alhamdulillahiRabbilAlamin => 'Ալհամդուլիլլահի Ռաբբիլ Ալամին';

  @override
  String get alignedToQibla => 'ՈՒՂՂՎԱԾ Է ԴԵՊԻ ԿԻԲԼԱ';

  @override
  String get allPraiseIsDueToAllah => 'Ամբողջ գովքը Ալլահինն է';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Բոլոր պրեմիում հնարավորությունները զեղչված գնով';

  @override
  String get allInOneQuranApp => 'Ամեն ինչ մեկ Ղուրան հավելվածում';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Ալլահը բավական է ինձ համար, Նրանից բացի աստվածություն չկա';

  @override
  String get allahIsTheGreatest => 'Ալլահն ամենամեծն է';

  @override
  String get allahuAkbar => 'Ալլահու Աքբար';

  @override
  String get allahummaSalliAlaMuhammad => 'Ալլահումմա սալլի ալա Մուհամմադ';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Թույլատրեք տեղորոշումը կամ սեղմեք «Կրկնել»՝ պահեստային ժամանակացույցն օգտագործելու համար։';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Թույլատրեք ծանուցումները՝ աղոթքի ժամերն ու ամենօրյա հիշեցումները ստանալու համար։';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Թույլատրել հավելվածին աշխատել ֆոնային ռեժիմում';

  @override
  String get app => 'Հավելված';

  @override
  String get arabic => 'Արաբերեն';

  @override
  String get asr => 'Ասր';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Աուզու բիլլահի մին աշ-շայթանիր ռաջիմ';

  @override
  String get avg => 'Միջին';

  @override
  String get ayah => 'Այա';

  @override
  String get batteryOptimization => 'Մարտկոցի օպտիմալացում';

  @override
  String get beautifulWidgets => 'Գեղեցիկ վիջեթներ';

  @override
  String get bestValue => 'ԼԱՎԱԳՈՒՅՆ ԱՌԱՋԱՐԿ';

  @override
  String get blackOnyx => 'Սև օնիքս';

  @override
  String get bookmarks => 'Էջանիշեր';

  @override
  String get brightIvoryInterface => 'Պայծառ փղոսկրյա միջերես';

  @override
  String get calculatingDistance => 'Հեռավորությունը հաշվարկվում է...';

  @override
  String get calibrateYourDirection => 'Ճշգրտեք ձեր ուղղությունը';

  @override
  String get cancel => 'Չեղարկել';

  @override
  String get change => 'Փոխել';

  @override
  String get changeTasbihMode => 'Փոխե՞լ թասբիհի ռեժիմը';

  @override
  String get chooseDhikr => 'Ընտրեք զիկրը';

  @override
  String get chooseDisplayLanguage => 'Ընտրեք ցուցադրման լեզուն';

  @override
  String get chooseTheme => 'Ընտրել թեման';

  @override
  String get chooseYourPreferredLanguage => 'Ընտրեք ձեր նախընտրած լեզուն';

  @override
  String get clickOrSwipeToCount => 'Հաշվելու համար սեղմեք կամ սահեցրեք';

  @override
  String get close => 'Փակել';

  @override
  String get closeCustomGoal => 'Փակել սեփական նպատակը';

  @override
  String get completeAtLeast33Dhikr => 'Կատարեք առնվազն 33 զիկր';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Կապեք ձեր սիրտը Սուրբ Ղուրանի հետ։';

  @override
  String get continueReading => 'Շարունակել ընթերցումը';

  @override
  String get countsPerRound => 'Հաշվարկների քանակը շրջանում';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Համալրեք ձեր հավաքածուն վարպետորեն մշակված հոգևոր քարերով։';

  @override
  String get current => 'ԸՆԹԱՑԻԿ';

  @override
  String get current2 => 'Ընթացիկ';

  @override
  String get currentLocationToMecca => 'Ընթացիկ դիրքից մինչև Մեքքա';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Ընթացիկ առաջընթացը կզրոյացվի նոր ռեժիմի համար։';

  @override
  String get currentStreak => 'Ընթացիկ շարք';

  @override
  String get custom => 'Սեփական';

  @override
  String get customDhikr => 'Սեփական զիկր';

  @override
  String get customGoal => 'Սեփական նպատակ';

  @override
  String get customPrayerSounds => 'Աղոթքի սեփական ձայներ';

  @override
  String get dailyGoal => 'Օրական նպատակ';

  @override
  String get dailyQuests => 'Օրական առաջադրանքներ';

  @override
  String get dailyQuranReminder => 'Ղուրանի ամենօրյա հիշեցում';

  @override
  String get dailyReminders => 'Ամենօրյա հիշեցումներ';

  @override
  String get dailyTasbih => 'Օրական թասբիհ';

  @override
  String get dark => 'Մուգ';

  @override
  String get dawn => 'ԱՐՇԱԼՈՒՅՍ';

  @override
  String get debug => 'Վրիպազերծում';

  @override
  String get dhikr => 'Զիկր';

  @override
  String get dhikrActivity => 'Զիկրի ակտիվություն';

  @override
  String get dhuAlHijjah => 'Զու ալ-Հիջջա';

  @override
  String get dhuAlQadah => 'Զու ալ-Քադա';

  @override
  String get dhuhr => 'Զուհր';

  @override
  String get direction => 'ՈՒՂՂՈՒԹՅՈՒՆ';

  @override
  String get disableBatteryOptimization => 'Անջատել մարտկոցի օպտիմալացումը';

  @override
  String get disableOptimization => 'ԱՆՋԱՏԵԼ ՕՊՏԻՄԱԼԱՑՈՒՄԸ';

  @override
  String get distance => 'ՀԵՌԱՎՈՐՈՒԹՅՈՒՆ';

  @override
  String get e => 'Ար';

  @override
  String get eGHasbunallah => 'օր. ՀասբունԱլլահ';

  @override
  String get east => 'Արևելք';

  @override
  String get enableAutoStart => 'Միացնել ավտոմատ մեկնարկը';

  @override
  String get enableNotifications => 'Միացնել ծանուցումները';

  @override
  String get enableReminders => 'Միացնել հիշեցումները';

  @override
  String get english => 'Անգլերեն';

  @override
  String get enterYourName => 'Մուտքագրեք ձեր անունը';

  @override
  String get equipped => 'ԿԻՐԱՌՎԱԾ';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Ամեն ինչ՝ Ղուրանի ավելի լավ փորձառության համար։';

  @override
  String get fajr => 'Ֆաջր';

  @override
  String get feedback => 'Հետադարձ կապ';

  @override
  String get first => 'Առաջին';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Առավել ճշգրիտ արդյունքի համար հեռախոսը պահեք հորիզոնական և հեռու մագնիսական առարկաներից։';

  @override
  String get free => 'Անվճար';

  @override
  String get fullBundle => 'Ամբողջական փաթեթ';

  @override
  String get getAnAdFreeExperienceForever => 'Ընդմիշտ ազատվեք գովազդից';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Ստացեք հիշեցումներ՝ ընթերցելու և հետևողական մնալու համար։';

  @override
  String get getStarted => 'Սկսել';

  @override
  String get gloryAndPraiseBeToAllah => 'Փառք և գովք Ալլահին';

  @override
  String get gloryBeToAllah => 'Փառք Ալլահին';

  @override
  String get gloryBeToAllahTheMagnificent => 'Փառք Ալլահին՝ Մեծագույնին';

  @override
  String get goToHome => 'Անցնել գլխավոր էջ';

  @override
  String get goldenEngraved => 'Ոսկե փորագրված';

  @override
  String get greenJade => 'Կանաչ նեֆրիտ';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Հանոյ, Վիետնամ';

  @override
  String get haptic => 'Թրթռում';

  @override
  String get hasanatHub => 'Հասանաթի կենտրոն';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Հասբիյալլահու լա իլահա իլլա Հուվա';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Գլխավոր';

  @override
  String get howYourDataIsHandled => 'Ինչպես են մշակվում ձեր տվյալները';

  @override
  String get iSeekForgivenessFromAllah => 'Ներում եմ հայցում Ալլահից';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Ապավինում եմ Ալլահին անիծյալ սատանայից';

  @override
  String get immediateAlerts => 'Անհապաղ ծանուցումներ';

  @override
  String get inTheNameOfAllah => 'Ալլահի անունով';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Արդարև, մենք Ալլահինն ենք և Նրան ենք վերադառնալու';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Իննա լիլլահի վա իննա իլայհի ռաջիուն';

  @override
  String get isha => 'Իշա';

  @override
  String get jumadaAlAwwal => 'Ջումադա ալ-Ավվալ';

  @override
  String get jumadaAlThani => 'Ջումադա ալ-Թանի';

  @override
  String get juz => 'ՋՈՒԶ';

  @override
  String get juz2 => 'Ջուզ';

  @override
  String get keepAdhanAlarmsReliable =>
      'Ապահովեք ազանի ազդանշանների հուսալիությունը';

  @override
  String get keepItUpYouReDoingGreat => 'Շարունակեք այդպես! Դուք հիանալի եք։';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Աղոթքի կանչերը հուսալի կմնան նույնիսկ երբ հավելվածը փակ է։';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Լա հաուլա վա լա քուվվաթա իլլա բիլլահ';

  @override
  String get laIlahaIllallah => 'Լա իլահա իլլալլահ';

  @override
  String get language => 'Լեզու';

  @override
  String get lapisLazuli => 'Լազուրիտ';

  @override
  String get last7Days => 'Վերջին 7 օրը';

  @override
  String get later => 'ԱՎԵԼԻ ՈՒՇ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Սկսենք ձեր գեղեցիկ ճանապարհորդությունը Ղուրանի հետ։';

  @override
  String get letSPersonalizeYourExperience =>
      'Անհատականացնենք\nձեր փորձառությունը';

  @override
  String get light => 'Բաց';

  @override
  String get lightMode => 'Բաց ռեժիմ';

  @override
  String get listenToOrReadAnyAyahToday => 'Այսօր լսեք կամ կարդացեք որևէ այա';

  @override
  String get locating => 'Տեղորոշում...';

  @override
  String get location => 'Տեղադրություն';

  @override
  String get locationPermissionsAreDenied =>
      'Տեղորոշման թույլտվությունը մերժված է';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Տեղորոշման թույլտվությունը մշտապես մերժված է։';

  @override
  String get locationServicesAreDisabled =>
      'Տեղորոշման ծառայություններն անջատված են։';

  @override
  String get longestStreak => 'Ամենաերկար շարք';

  @override
  String get maghrib => 'Մաղրիբ';

  @override
  String get maybeLater => 'Միգուցե ավելի ուշ';

  @override
  String get meccaSaudiArabia => 'Մեքքա, Սաուդյան Արաբիա';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Տեր իմ, ներիր և ողորմիր';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Տեր իմ, ես կարիք ունեմ այն բարիքի, որ Դու իջեցնում ես';

  @override
  String get myLordIncreaseMeInKnowledge => 'Տեր իմ, ավելացրու իմ գիտելիքը';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Տեր իմ, դյուրին դարձրու և մի դժվարացրու';

  @override
  String get n => 'Հս';

  @override
  String get nameOptional => 'Անուն (ըստ ցանկության)';

  @override
  String get next => 'Հաջորդ';

  @override
  String get nextDhikr => 'Հաջորդ զիկրը';

  @override
  String get nextPrayer => 'ՀԱՋՈՐԴ ԱՂՈԹՔԸ';

  @override
  String get night => 'ԳԻՇԵՐ';

  @override
  String get nightEmeraldInterface => 'Գիշերային զմրուխտե միջերես';

  @override
  String get noBookmarksYet => 'Դեռ էջանիշեր չկան';

  @override
  String get noon => 'ԿԵՍՕՐ';

  @override
  String get north => 'Հյուսիս';

  @override
  String get northeast => 'Հյուսիս-արևելք';

  @override
  String get northwest => 'Հյուսիս-արևմուտք';

  @override
  String get notificationsAlarm => 'Ծանուցումներ և ազդանշան';

  @override
  String get notificationsForPrayerTimes => 'Ծանուցումներ աղոթքի ժամերի մասին';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'Ով Ալլահ, օրհնիր Մուհամմադին';

  @override
  String get oEverLivingOSustainer => 'Ով Հավերժ Կենդանի, ով Ամենապահ';

  @override
  String get openAutoStart => 'ԲԱՑԵԼ ԱՎՏՈՄԱՏ ՄԵԿՆԱՐԿԸ';

  @override
  String get optimizeAdhanPerformance => 'Օպտիմալացնել ազանի աշխատանքը';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Տեր մեր, բարիք շնորհիր մեզ այս աշխարհում';

  @override
  String get page => 'ԷՋ';

  @override
  String get pearl => 'Մարգարիտ';

  @override
  String get personalizeYourAdhanNotifications =>
      'Անհատականացրեք ազանի ծանուցումները';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Գովք Ալլահին՝ աշխարհների Տիրոջը';

  @override
  String get prayerAlarms => 'Աղոթքի ազդանշաններ';

  @override
  String get prayerSchedule => 'Աղոթքի ժամանակացույց';

  @override
  String get prayerTimeNotifications => 'Աղոթքի ժամի ծանուցումներ';

  @override
  String get prayerTimesAreLoading => 'Աղոթքի ժամերը բեռնվում են';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Աղոթքի ժամեր, կիբլա, Ղուրանի ընթերցում և թասբիհ՝ մեկ ամենօրյա ուղեկցի մեջ։';

  @override
  String get prayerQuranQibla => 'ԱՂՈԹՔ • ՂՈՒՐԱՆ • ԿԻԲԼԱ';

  @override
  String get premiumThemes => 'Պրեմիում թեմաներ';

  @override
  String get preparingYourSpiritualJourney =>
      'Պատրաստվում է ձեր հոգևոր ճանապարհորդությունը...';

  @override
  String get previousDhikr => 'Նախորդ զիկրը';

  @override
  String get privacyPolicy => 'Գաղտնիության քաղաքականություն';

  @override
  String get qibla => 'Կիբլա';

  @override
  String get qiblaFinder => 'Կիբլայի որոնիչ';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Ղուրան';

  @override
  String get quranPlayback => 'Ղուրանի նվագարկում';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro-ն միավորում է աղոթքի ժամերը, կիբլան, Ղուրանի ընթերցումը և թասբիհը մեկ պարզ ամենօրյա ուղեկցի մեջ։';

  @override
  String get quranProPreferences => 'Quran Pro-ի կարգավորումներ';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro-ն ծանոթացման և առաջընթացի կարգավորումները պահում է այս սարքում։ Կայունությունն ու որակը բարելավելու համար կարող է օգտագործվել վերլուծություն։';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro-ն ձեր թասբիհի առաջընթացը պահում է այս սարքում։ Հավելվածի կայունությունն ու արտադրանքի որակը բարելավելու համար կարող է օգտագործվել վերլուծություն։';

  @override
  String get quranRecitation => 'Ղուրանի ընթերցանություն';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Ռաբբանա աթինա ֆիդ-դունյա հասանա';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Ռաբբի իննի լիմա անզալթա իլայյա մին խայրին ֆաքիր';

  @override
  String get rabbiYassirWaLaTuassir => 'Ռաբբի յասսիր վա լա թուասսիր';

  @override
  String get rabbiZidniIlma => 'Ռաբբի զիդնի իլմա';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Ռաբբիղֆիր վարհամ վա անթա խայրուր ռահիմին';

  @override
  String get rabiAlAwwal => 'Ռաբի ալ-Ավվալ';

  @override
  String get rabiAlThani => 'Ռաբի ալ-Թանի';

  @override
  String get rateApp => 'Գնահատել հավելվածը';

  @override
  String get rateQuranPro => 'Գնահատել Quran Pro-ն';

  @override
  String get readListen => 'Կարդալ և լսել';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Կարդացեք Ղուրանը գեղեցիկ ընթերցումներով։';

  @override
  String get recent => 'Վերջինները';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Խորհուրդ է տրվում Xiaomi, Oppo, Vivo և Huawei սարքերի համար';

  @override
  String get redCarnelian => 'Կարմիր սարդիոն';

  @override
  String get remindMeAt => 'Հիշեցնել ժամը';

  @override
  String get removeAds => 'Հեռացնել գովազդը';

  @override
  String get requestingLocationPermission =>
      'Հայցվում է տեղորոշման թույլտվություն...';

  @override
  String get reset => 'Զրոյացնել';

  @override
  String get retry => 'Կրկնել';

  @override
  String get returnToCompass => 'Վերադառնալ կողմնացույցին';

  @override
  String get s => 'Հվ';

  @override
  String get save => 'Պահպանել';

  @override
  String get saveGoal => 'Պահպանել նպատակը';

  @override
  String get searchSurahNumberArabic => 'Որոնել սուրա, համար, արաբերեն...';

  @override
  String get searchSurah => 'Որոնել սուրա...';

  @override
  String get selectLanguage => 'Ընտրել լեզուն';

  @override
  String get selectTheThemeYouLike => 'Ընտրեք ձեր նախընտրած թեման';

  @override
  String get selectYourBead => 'Ընտրեք ձեր հատիկը';

  @override
  String get shop => 'Խանութ';

  @override
  String get shopCustomization => 'Խանութ և անհատականացում';

  @override
  String get sound => 'Ձայն';

  @override
  String get south => 'Հարավ';

  @override
  String get southeast => 'Հարավ-արևելք';

  @override
  String get southwest => 'Հարավ-արևմուտք';

  @override
  String get specialOccasionsAndMore => 'Հատուկ առիթներ և ավելին';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Խանութի գնահատականը կմիացվի, երբ պաշտոնական էջը պատրաստ լինի։';

  @override
  String get subhanallahiWaBihamdihi => 'Սուբհանալլահի վա բիհամդիհի';

  @override
  String get subhanallahilAzim => 'Սուբհանալլահիլ Ազիմ';

  @override
  String get sunset => 'ՄԱՅՐԱՄՈՒՏ';

  @override
  String get supportQuranProOnTheStore => 'Աջակցեք Quran Pro-ին խանութում';

  @override
  String get surah => 'Սուրա';

  @override
  String get tasbih => 'Թասբիհ';

  @override
  String get tasbihSettings => 'Թասբիհի կարգավորումներ';

  @override
  String get tellUsWhatToImprove => 'Ասեք մեզ՝ ինչ բարելավել';

  @override
  String get termsOfUse => 'Օգտագործման պայմաններ';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Շնորհակալություն Quran Pro-ից օգտվելու համար։ Խանութի գնահատականը կմիացվի, երբ պաշտոնական էջը պատրաստ լինի։';

  @override
  String get thereIsNoDeityExceptAllah => 'Ալլահից բացի աստվածություն չկա';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Չկա զորություն և ուժ, բացի Ալլահից';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Սա օգնում է անհատականացնել հիշեցումները և հետևել ձեր առաջընթացին։';

  @override
  String get tigerSEye => 'Վագրի աչք';

  @override
  String get today => 'Այսօր';

  @override
  String get total => 'Ընդամենը';

  @override
  String get totalHasanat => 'ԸՆԴՀԱՆՈՒՐ ՀԱՍԱՆԱԹ';

  @override
  String get trackProgress => 'Հետևել առաջընթացին';

  @override
  String get trackYourReadingAndAchievements =>
      'Հետևեք ձեր ընթերցումներին և ձեռքբերումներին։';

  @override
  String get tryAgain => 'Կրկին փորձել';

  @override
  String get undo => 'Հետարկել';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Բացեք հավելվածի բոլոր թեմաներն ու անհատականացումները';

  @override
  String get usageGuidelines => 'Օգտագործման ուղեցույց';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Օգտագործեք Quran Pro-ն հարգանքով՝ անձնական երկրպագության, ուսուցման և ամենօրյա իսլամական սովորույթների համար։';

  @override
  String get viewAll => 'Տեսնել բոլորը';

  @override
  String get w => 'Ամ';

  @override
  String get welcome => 'Բարի գալուստ';

  @override
  String get west => 'Արևմուտք';

  @override
  String get yaHayyuYaQayyum => 'Յա Հայյու Յա Քայյում';

  @override
  String get youReAllSet => 'Ամեն ինչ պատրաստ է!';

  @override
  String get yourProgress => 'Ձեր առաջընթացը';

  @override
  String get continueLabel => 'Շարունակել';

  @override
  String get amethyst => 'Ամեթիստ';

  @override
  String get indonesian => 'Ինդոնեզերեն';

  @override
  String get turkish => 'Թուրքերեն';

  @override
  String get vietnamese => 'Վիետնամերեն';

  @override
  String get turquoise => 'Փիրուզ';

  @override
  String get wood => 'Փայտ';

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
