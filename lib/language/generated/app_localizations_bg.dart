// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get week => 'Седмица';

  @override
  String get month => 'Месец';

  @override
  String get lifetime => 'За цялото време';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Направете пауза от работата и отделете време за Аллах.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return 'Продуктът $id не е достъпен за покупка.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Покупката на $productId е успешна!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Покупката на $productId е възстановена!';
  }

  @override
  String daysCount(Object count) {
    return '$count дни';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'СЛЕДВА: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Разстояние до Мека: $distance км';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Напомни ми след $minutes минути';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Настъпи времето за $prayerName намаз';
  }

  @override
  String roundValue(Object round) {
    return 'Кръг: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Избран е $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Джуз $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Страница $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Хизб $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: аят $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count аята';
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
    return 'НИВО $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Сура Ел-Бакара 2:238)';

  @override
  String get text1juz => '1 джуз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 страници';

  @override
  String get text100dhikr => '100 зикра';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 страници';

  @override
  String get text28cclearsky => '28°C - Ясно небе';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 страници';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'За приложението';

  @override
  String get aboutQuranPro => 'За Quran Pro';

  @override
  String get activity => 'Активност';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Рекламата се зарежда. Опитайте отново скоро.';

  @override
  String get addCustomDhikr => 'Добави собствен зикр';

  @override
  String get addCustomDhikr2 => 'Добави собствен зикр';

  @override
  String get addDhikr => 'Добави зикр';

  @override
  String get adjustPosition => 'НАГЛАСЕТЕ ПОЛОЖЕНИЕТО';

  @override
  String get afternoon => 'СЛЕДОБЕД';

  @override
  String get alMasjidAlHaram => 'Ел-Месджид ел-Харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Елхамдулиллахи Раббил алемин';

  @override
  String get alignedToQibla => 'НАСОЧЕНО КЪМ КИБЛАТА';

  @override
  String get allPraiseIsDueToAllah => 'Всяка възхвала е за Аллах';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Всички премиум функции на намалена цена';

  @override
  String get allInOneQuranApp => 'Всичко в едно приложение за Корана';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Аллах ми е достатъчен; няма друг бог освен Него';

  @override
  String get allahIsTheGreatest => 'Аллах е Най-велик';

  @override
  String get allahuAkbar => 'Аллаху екбер';

  @override
  String get allahummaSalliAlaMuhammad => 'Аллахумме салли аля Мухаммед';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Разрешете достъп до местоположението или докоснете „Опитай отново“, за да използвате резервния график.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Разрешете известията, за да получавате времената за намаз и ежедневните напомняния.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Разрешете на приложението да работи във фонов режим';

  @override
  String get app => 'Приложение';

  @override
  String get arabic => 'Арабски';

  @override
  String get asr => 'Икиндия';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Еузу билляхи минеш-шейтанир-раджим';

  @override
  String get avg => 'Средно';

  @override
  String get ayah => 'Аят';

  @override
  String get batteryOptimization => 'Оптимизация на батерията';

  @override
  String get beautifulWidgets => 'Красиви джаджи';

  @override
  String get bestValue => 'НАЙ-ИЗГОДНО';

  @override
  String get blackOnyx => 'Черен оникс';

  @override
  String get bookmarks => 'Отметки';

  @override
  String get brightIvoryInterface => 'Светъл интерфейс в цвят слонова кост';

  @override
  String get calculatingDistance => 'Изчисляване на разстоянието...';

  @override
  String get calibrateYourDirection => 'Калибрирайте посоката';

  @override
  String get cancel => 'Отказ';

  @override
  String get change => 'Промени';

  @override
  String get changeTasbihMode => 'Да сменим ли режима на тесбиха?';

  @override
  String get chooseDhikr => 'Изберете зикр';

  @override
  String get chooseDisplayLanguage => 'Изберете език на интерфейса';

  @override
  String get chooseTheme => 'Изберете тема';

  @override
  String get chooseYourPreferredLanguage =>
      'Изберете предпочитания от вас език';

  @override
  String get clickOrSwipeToCount => 'Натиснете или плъзнете за броене';

  @override
  String get close => 'Затвори';

  @override
  String get closeCustomGoal => 'Затвори собствената цел';

  @override
  String get completeAtLeast33Dhikr => 'Направете поне 33 зикра';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Свържете сърцето си със Свещения Коран.';

  @override
  String get continueReading => 'Продължи четенето';

  @override
  String get countsPerRound => 'Броения на кръг';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Създайте колекция от майсторски изработени духовни скъпоценности.';

  @override
  String get current => 'ТЕКУЩО';

  @override
  String get current2 => 'Текущо';

  @override
  String get currentLocationToMecca => 'От текущото местоположение до Мека';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Текущият напредък ще се нулира за новия режим.';

  @override
  String get currentStreak => 'Текуща серия';

  @override
  String get custom => 'Собствено';

  @override
  String get customDhikr => 'Собствен зикр';

  @override
  String get customGoal => 'Собствена цел';

  @override
  String get customPrayerSounds => 'Собствени звуци за намаз';

  @override
  String get dailyGoal => 'Дневна цел';

  @override
  String get dailyQuests => 'Ежедневни задачи';

  @override
  String get dailyQuranReminder => 'Ежедневно напомняне за Корана';

  @override
  String get dailyReminders => 'Ежедневни напомняния';

  @override
  String get dailyTasbih => 'Ежедневен тесбих';

  @override
  String get dark => 'Тъмна';

  @override
  String get dawn => 'ЗОРА';

  @override
  String get debug => 'Дебъг';

  @override
  String get dhikr => 'Зикр';

  @override
  String get dhikrActivity => 'Активност на зикр';

  @override
  String get dhuAlHijjah => 'Зулхидже';

  @override
  String get dhuAlQadah => 'Зулкаде';

  @override
  String get dhuhr => 'Обед';

  @override
  String get direction => 'ПОСОКА';

  @override
  String get disableBatteryOptimization => 'Изключи оптимизацията на батерията';

  @override
  String get disableOptimization => 'ИЗКЛЮЧИ ОПТИМИЗАЦИЯТА';

  @override
  String get distance => 'РАЗСТОЯНИЕ';

  @override
  String get e => 'И';

  @override
  String get eGHasbunallah => 'напр. ХасбунАллах';

  @override
  String get east => 'Изток';

  @override
  String get enableAutoStart => 'Включи автостартирането';

  @override
  String get enableNotifications => 'Включи известията';

  @override
  String get enableReminders => 'Включи напомнянията';

  @override
  String get english => 'Английски';

  @override
  String get enterYourName => 'Въведете името си';

  @override
  String get equipped => 'ИЗБРАНО';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Всичко необходимо за по-добро изживяване с Корана.';

  @override
  String get fajr => 'Сабах';

  @override
  String get feedback => 'Мнение';

  @override
  String get first => 'Първи';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'За най-точни резултати дръжте телефона хоризонтално и далеч от магнитни предмети.';

  @override
  String get free => 'Безплатно';

  @override
  String get fullBundle => 'Пълен пакет';

  @override
  String get getAnAdFreeExperienceForever => 'Завинаги без реклами';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Получавайте напомняния за четене и бъдете постоянни.';

  @override
  String get getStarted => 'Да започнем';

  @override
  String get gloryAndPraiseBeToAllah => 'Пречист е Аллах и Нему е възхвалата';

  @override
  String get gloryBeToAllah => 'Пречист е Аллах';

  @override
  String get gloryBeToAllahTheMagnificent => 'Пречист е Аллах, Превеликият';

  @override
  String get goToHome => 'Към началото';

  @override
  String get goldenEngraved => 'Златна гравюра';

  @override
  String get greenJade => 'Зелен нефрит';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханой, Виетнам';

  @override
  String get haptic => 'Вибрация';

  @override
  String get hasanatHub => 'Център за хасанат';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбияллаху ля иляхе илля Хуве';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Начало';

  @override
  String get howYourDataIsHandled => 'Как се обработват вашите данни';

  @override
  String get iSeekForgivenessFromAllah => 'Моля Аллах за опрощение';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Търся убежище при Аллах от прокудения шейтан';

  @override
  String get immediateAlerts => 'Незабавни известия';

  @override
  String get inTheNameOfAllah => 'В името на Аллах';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Наистина, ние сме на Аллах и при Него се завръщаме';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Инна лилляхи ве инна илейхи раджиун';

  @override
  String get isha => 'Ятсия';

  @override
  String get jumadaAlAwwal => 'Джумазиел-еввел';

  @override
  String get jumadaAlThani => 'Джумазиел-ахир';

  @override
  String get juz => 'ДЖУЗ';

  @override
  String get juz2 => 'Джуз';

  @override
  String get keepAdhanAlarmsReliable => 'Езанът да звучи навреме';

  @override
  String get keepItUpYouReDoingGreat =>
      'Продължавайте така! Справяте се отлично.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Езанът звучи навреме дори когато приложението е затворено.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Ля хавле ве ля кувете илля биллях';

  @override
  String get laIlahaIllallah => 'Ля иляхе илляллах';

  @override
  String get language => 'Език';

  @override
  String get lapisLazuli => 'Лазурит';

  @override
  String get last7Days => 'Последните 7 дни';

  @override
  String get later => 'ПО-КЪСНО';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Нека започнем прекрасното ви пътуване с Корана.';

  @override
  String get letSPersonalizeYourExperience =>
      'Нека персонализираме\nвашето изживяване';

  @override
  String get light => 'Светла';

  @override
  String get lightMode => 'Светъл режим';

  @override
  String get listenToOrReadAnyAyahToday => 'Чуйте или прочетете аят днес';

  @override
  String get locating => 'Определяне на местоположението...';

  @override
  String get location => 'Местоположение';

  @override
  String get locationPermissionsAreDenied =>
      'Достъпът до местоположението е отказан';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Достъпът до местоположението е отказан завинаги.';

  @override
  String get locationServicesAreDisabled =>
      'Услугите за местоположение са изключени.';

  @override
  String get longestStreak => 'Най-дълга серия';

  @override
  String get maghrib => 'Акшам';

  @override
  String get maybeLater => 'Може би по-късно';

  @override
  String get meccaSaudiArabia => 'Мека, Саудитска Арабия';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Господи мой, опрости и помилвай';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Господи мой, нуждая се от всяко добро, което ми низпослеш';

  @override
  String get myLordIncreaseMeInKnowledge => 'Господи мой, увеличи знанието ми';

  @override
  String get myLordMakeItEasyAndDoNot => 'Господи мой, улесни и не затруднявай';

  @override
  String get n => 'С';

  @override
  String get nameOptional => 'Име (по избор)';

  @override
  String get next => 'Напред';

  @override
  String get nextDhikr => 'Следващ зикр';

  @override
  String get nextPrayer => 'СЛЕДВАЩ НАМАЗ';

  @override
  String get night => 'НОЩ';

  @override
  String get nightEmeraldInterface => 'Нощен изумруден интерфейс';

  @override
  String get noBookmarksYet => 'Все още няма отметки';

  @override
  String get noon => 'ПЛАДНЕ';

  @override
  String get north => 'Север';

  @override
  String get northeast => 'Североизток';

  @override
  String get northwest => 'Северозапад';

  @override
  String get notificationsAlarm => 'Известия и будилник';

  @override
  String get notificationsForPrayerTimes => 'Известия за времената за намаз';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'О, Аллах, благослови Мухаммед';

  @override
  String get oEverLivingOSustainer => 'О, Вечноживи, О, Вседържителю';

  @override
  String get openAutoStart => 'ОТВОРИ АВТОСТАРТИРАНЕТО';

  @override
  String get optimizeAdhanPerformance => 'Оптимизирай работата на езана';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Господи наш, дай ни добрина на този свят';

  @override
  String get page => 'СТРАНИЦА';

  @override
  String get pearl => 'Перла';

  @override
  String get personalizeYourAdhanNotifications =>
      'Персонализирайте известията за езан';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Възхвала на Аллах, Господаря на световете';

  @override
  String get prayerAlarms => 'Будилници за намаз';

  @override
  String get prayerSchedule => 'График на намазите';

  @override
  String get prayerTimeNotifications => 'Известия за време за намаз';

  @override
  String get prayerTimesAreLoading => 'Времената за намаз се зареждат';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Времена за намаз, кибла, четене на Корана и тесбих в един ежедневен спътник.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • КОРАН • КИБЛА';

  @override
  String get premiumThemes => 'Премиум теми';

  @override
  String get preparingYourSpiritualJourney =>
      'Подготвяме вашето духовно пътуване...';

  @override
  String get previousDhikr => 'Предишен зикр';

  @override
  String get privacyPolicy => 'Политика за поверителност';

  @override
  String get qibla => 'Кибла';

  @override
  String get qiblaFinder => 'Намиране на кибла';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Коран';

  @override
  String get quranPlayback => 'Възпроизвеждане на Корана';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro обединява времената за намаз, киблата, четенето на Корана и тесбиха в един прост ежедневен спътник.';

  @override
  String get quranProPreferences => 'Настройки на Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro съхранява настройките от въведението и напредъка локално на това устройство. Анализите може да се използват за подобряване на стабилността и качеството.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro съхранява напредъка ви с тесбиха локално на това устройство. Анализите може да се използват за подобряване на стабилността на приложението и качеството на продукта.';

  @override
  String get quranRecitation => 'Рецитация на Корана';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Раббена атина фид-дуня хасене';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Рабби инни лима ензелте илейе мин хайрин факир';

  @override
  String get rabbiYassirWaLaTuassir => 'Рабби йессир ве ля туассир';

  @override
  String get rabbiZidniIlma => 'Рабби зидни илма';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Раббигфир верхам ве енте хайрур-рахимин';

  @override
  String get rabiAlAwwal => 'Ребиул-еввел';

  @override
  String get rabiAlThani => 'Ребиул-ахир';

  @override
  String get rateApp => 'Оцени приложението';

  @override
  String get rateQuranPro => 'Оценете Quran Pro';

  @override
  String get readListen => 'Четене и слушане';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Четете Корана с прекрасни рецитации.';

  @override
  String get recent => 'Скорошни';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Препоръчва се за Xiaomi, Oppo, Vivo и Huawei';

  @override
  String get redCarnelian => 'Червен карнеол';

  @override
  String get remindMeAt => 'Напомни ми в';

  @override
  String get removeAds => 'Премахни рекламите';

  @override
  String get requestingLocationPermission =>
      'Заявка за достъп до местоположението...';

  @override
  String get reset => 'Нулирай';

  @override
  String get retry => 'Опитай отново';

  @override
  String get returnToCompass => 'Обратно към компаса';

  @override
  String get s => 'Ю';

  @override
  String get save => 'Запази';

  @override
  String get saveGoal => 'Запази целта';

  @override
  String get searchSurahNumberArabic => 'Търси сура, номер, арабски...';

  @override
  String get searchSurah => 'Търси сура...';

  @override
  String get selectLanguage => 'Изберете език';

  @override
  String get selectTheThemeYouLike => 'Изберете темата, която харесвате';

  @override
  String get selectYourBead => 'Изберете зърно';

  @override
  String get shop => 'Магазин';

  @override
  String get shopCustomization => 'Магазин и персонализация';

  @override
  String get sound => 'Звук';

  @override
  String get south => 'Юг';

  @override
  String get southeast => 'Югоизток';

  @override
  String get southwest => 'Югозапад';

  @override
  String get specialOccasionsAndMore => 'Специални поводи и още';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Оценяването в магазина ще бъде активирано, когато официалната страница е готова.';

  @override
  String get subhanallahiWaBihamdihi => 'Субханаллахи ве бихамдихи';

  @override
  String get subhanallahilAzim => 'Субханаллахил азим';

  @override
  String get sunset => 'ЗАЛЕЗ';

  @override
  String get supportQuranProOnTheStore => 'Подкрепете Quran Pro в магазина';

  @override
  String get surah => 'Сура';

  @override
  String get tasbih => 'Тесбих';

  @override
  String get tasbihSettings => 'Настройки на тесбиха';

  @override
  String get tellUsWhatToImprove => 'Кажете ни какво да подобрим';

  @override
  String get termsOfUse => 'Условия за ползване';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Благодарим ви, че използвате Quran Pro. Оценяването в магазина ще бъде активирано, когато официалната страница е готова.';

  @override
  String get thereIsNoDeityExceptAllah => 'Няма друг бог освен Аллах';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Няма сила и мощ освен от Аллах';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Това ни помага да персонализираме напомнянията и да следим напредъка ви.';

  @override
  String get tigerSEye => 'Тигрово око';

  @override
  String get today => 'Днес';

  @override
  String get total => 'Общо';

  @override
  String get totalHasanat => 'ОБЩО ХАСАНАТ';

  @override
  String get trackProgress => 'Проследяване на напредъка';

  @override
  String get trackYourReadingAndAchievements =>
      'Следете четенето и постиженията си.';

  @override
  String get tryAgain => 'Опитайте отново';

  @override
  String get undo => 'Отмени';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Отключете всички теми и персонализации';

  @override
  String get usageGuidelines => 'Указания за ползване';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Използвайте Quran Pro с уважение — за личен ибадет, учене и ежедневни ислямски навици.';

  @override
  String get viewAll => 'Виж всички';

  @override
  String get w => 'З';

  @override
  String get welcome => 'Добре дошли';

  @override
  String get west => 'Запад';

  @override
  String get yaHayyuYaQayyum => 'Я Хаййу я Каййум';

  @override
  String get youReAllSet => 'Всичко е готово!';

  @override
  String get yourProgress => 'Вашият напредък';

  @override
  String get continueLabel => 'Продължи';

  @override
  String get amethyst => 'Аметист';

  @override
  String get indonesian => 'Индонезийски';

  @override
  String get turkish => 'Турски';

  @override
  String get vietnamese => 'Виетнамски';

  @override
  String get turquoise => 'Тюркоаз';

  @override
  String get wood => 'Дърво';

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
