// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get week => 'Неделя';

  @override
  String get month => 'Месяц';

  @override
  String get lifetime => 'За всё время';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Сделайте паузу в делах и найдите время для Аллаха.';

  @override
  String get prayerAlarmDefaultName => 'Намаз';

  @override
  String productUnavailable(Object id) {
    return 'Товар $id недоступен для покупки.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Покупка $productId завершена!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Покупка $productId восстановлена!';
  }

  @override
  String daysCount(Object count) {
    return '$count дней';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'СКОРО: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Расстояние до Мекки: $distance км';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Напомнить через $minutes мин.';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Наступило время намаза $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Круг: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Выбран язык: $language';
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
    return '$count аятов';
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
    return 'УРОВЕНЬ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Сура Аль-Бакара 2:238)';

  @override
  String get text1juz => '1 джуз';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 страниц';

  @override
  String get text100dhikr => '100 зикров';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 страниц';

  @override
  String get text28cclearsky => '28°C - Ясное небо';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 страниц';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'О приложении';

  @override
  String get aboutQuranPro => 'О Quran Pro';

  @override
  String get activity => 'Активность';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Реклама загружается. Повторите попытку чуть позже.';

  @override
  String get addCustomDhikr => 'Добавить свой зикр';

  @override
  String get addCustomDhikr2 => 'Добавить свой зикр';

  @override
  String get addDhikr => 'Добавить зикр';

  @override
  String get adjustPosition => 'НАСТРОИТЬ ПОЛОЖЕНИЕ';

  @override
  String get afternoon => 'ДЕНЬ';

  @override
  String get alMasjidAlHaram => 'Аль-Масджид аль-Харам';

  @override
  String get alhamdulillahiRabbilAlamin => 'Альхамдулиллахи Раббиль Алямин';

  @override
  String get alignedToQibla => 'НАПРАВЛЕНО НА КИБЛУ';

  @override
  String get allPraiseIsDueToAllah => 'Вся хвала принадлежит Аллаху';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Все премиум-функции по сниженной цене';

  @override
  String get allInOneQuranApp => 'Всё для Корана в одном приложении';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Мне достаточно Аллаха; нет божества, кроме Него';

  @override
  String get allahIsTheGreatest => 'Аллах Величайший';

  @override
  String get allahuAkbar => 'Аллаху Акбар';

  @override
  String get allahummaSalliAlaMuhammad => 'Аллахумма салли аля Мухаммад';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Разрешите доступ к геолокации или нажмите «Повторить», чтобы использовать резервное расписание.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Разрешите уведомления, чтобы получать время намазов и ежедневные напоминания.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Разрешите приложению работать в фоне';

  @override
  String get app => 'Приложение';

  @override
  String get arabic => 'Арабский';

  @override
  String get asr => 'Аср';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Аузу билляхи мин аш-шайтани р-раджим';

  @override
  String get avg => 'Сред.';

  @override
  String get ayah => 'Аят';

  @override
  String get batteryOptimization => 'Оптимизация батареи';

  @override
  String get beautifulWidgets => 'Красивые виджеты';

  @override
  String get bestValue => 'ЛУЧШАЯ ЦЕНА';

  @override
  String get blackOnyx => 'Чёрный оникс';

  @override
  String get bookmarks => 'Закладки';

  @override
  String get brightIvoryInterface => 'Светлый интерфейс цвета слоновой кости';

  @override
  String get calculatingDistance => 'Вычисление расстояния...';

  @override
  String get calibrateYourDirection => 'Откалибруйте направление';

  @override
  String get cancel => 'Отмена';

  @override
  String get change => 'Изменить';

  @override
  String get changeTasbihMode => 'Сменить режим тасбиха?';

  @override
  String get chooseDhikr => 'Выберите зикр';

  @override
  String get chooseDisplayLanguage => 'Выберите язык интерфейса';

  @override
  String get chooseTheme => 'Выберите тему';

  @override
  String get chooseYourPreferredLanguage => 'Выберите удобный язык';

  @override
  String get clickOrSwipeToCount => 'Нажимайте или проводите для счёта';

  @override
  String get close => 'Закрыть';

  @override
  String get closeCustomGoal => 'Закрыть свою цель';

  @override
  String get completeAtLeast33Dhikr => 'Совершите не менее 33 зикров';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Соедините сердце со Священным Кораном.';

  @override
  String get continueReading => 'Продолжить чтение';

  @override
  String get countsPerRound => 'Повторений в круге';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Соберите коллекцию из искусно созданных духовных самоцветов.';

  @override
  String get current => 'ТЕКУЩИЙ';

  @override
  String get current2 => 'Текущий';

  @override
  String get currentLocationToMecca => 'От вашего местоположения до Мекки';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Текущий прогресс сбросится для нового режима.';

  @override
  String get currentStreak => 'Текущая серия';

  @override
  String get custom => 'Свой';

  @override
  String get customDhikr => 'Свой зикр';

  @override
  String get customGoal => 'Своя цель';

  @override
  String get customPrayerSounds => 'Свои звуки для намазов';

  @override
  String get dailyGoal => 'Ежедневная цель';

  @override
  String get dailyQuests => 'Ежедневные задания';

  @override
  String get dailyQuranReminder => 'Ежедневное напоминание о Коране';

  @override
  String get dailyReminders => 'Ежедневные напоминания';

  @override
  String get dailyTasbih => 'Ежедневный тасбих';

  @override
  String get dark => 'Тёмная';

  @override
  String get dawn => 'РАССВЕТ';

  @override
  String get debug => 'Отладка';

  @override
  String get dhikr => 'Зикр';

  @override
  String get dhikrActivity => 'Активность зикра';

  @override
  String get dhuAlHijjah => 'Зуль-Хиджа';

  @override
  String get dhuAlQadah => 'Зуль-Када';

  @override
  String get dhuhr => 'Зухр';

  @override
  String get direction => 'НАПРАВЛЕНИЕ';

  @override
  String get disableBatteryOptimization => 'Отключить оптимизацию батареи';

  @override
  String get disableOptimization => 'ОТКЛЮЧИТЬ ОПТИМИЗАЦИЮ';

  @override
  String get distance => 'РАССТОЯНИЕ';

  @override
  String get e => 'В';

  @override
  String get eGHasbunallah => 'напр. ХасбунАллах';

  @override
  String get east => 'Восток';

  @override
  String get enableAutoStart => 'Включить автозапуск';

  @override
  String get enableNotifications => 'Включить уведомления';

  @override
  String get enableReminders => 'Включить напоминания';

  @override
  String get english => 'Английский';

  @override
  String get enterYourName => 'Введите имя';

  @override
  String get equipped => 'ВЫБРАНО';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Всё необходимое для удобного чтения Корана.';

  @override
  String get fajr => 'Фаджр';

  @override
  String get feedback => 'Отзыв';

  @override
  String get first => 'Первый';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Для наибольшей точности держите телефон ровно и вдали от магнитных предметов.';

  @override
  String get free => 'Бесплатно';

  @override
  String get fullBundle => 'Полный набор';

  @override
  String get getAnAdFreeExperienceForever => 'Навсегда уберите рекламу';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Получайте напоминания и читайте регулярно.';

  @override
  String get getStarted => 'Начать';

  @override
  String get gloryAndPraiseBeToAllah => 'Пречист Аллах и хвала Ему';

  @override
  String get gloryBeToAllah => 'Пречист Аллах';

  @override
  String get gloryBeToAllahTheMagnificent => 'Пречист Аллах Великий';

  @override
  String get goToHome => 'На главную';

  @override
  String get goldenEngraved => 'Золотая гравировка';

  @override
  String get greenJade => 'Зелёный нефрит';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Ханой, Вьетнам';

  @override
  String get haptic => 'Вибрация';

  @override
  String get hasanatHub => 'Центр хасанат';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Хасбияллаху ля иляха илля Хува';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Главная';

  @override
  String get howYourDataIsHandled => 'Как обрабатываются ваши данные';

  @override
  String get iSeekForgivenessFromAllah => 'Прошу прощения у Аллаха';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Прибегаю к Аллаху от проклятого шайтана';

  @override
  String get immediateAlerts => 'Мгновенные оповещения';

  @override
  String get inTheNameOfAllah => 'С именем Аллаха';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Поистине, мы принадлежим Аллаху и к Нему возвращаемся';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Инна лилляхи ва инна иляйхи раджиун';

  @override
  String get isha => 'Иша';

  @override
  String get jumadaAlAwwal => 'Джумада аль-Авваль';

  @override
  String get jumadaAlThani => 'Джумада ас-Сани';

  @override
  String get juz => 'ДЖУЗ';

  @override
  String get juz2 => 'Джуз';

  @override
  String get keepAdhanAlarmsReliable => 'Чтобы азан звучал вовремя';

  @override
  String get keepItUpYouReDoingGreat =>
      'Так держать! У вас отлично получается.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Азан прозвучит вовремя, даже когда приложение закрыто.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'Ля хауля ва ля куввата илля биллях';

  @override
  String get laIlahaIllallah => 'Ля иляха илляллах';

  @override
  String get language => 'Язык';

  @override
  String get lapisLazuli => 'Лазурит';

  @override
  String get last7Days => 'Последние 7 дней';

  @override
  String get later => 'ПОЗЖЕ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Начнём ваш прекрасный путь с Кораном.';

  @override
  String get letSPersonalizeYourExperience => 'Настроим приложение\nпод вас';

  @override
  String get light => 'Светлая';

  @override
  String get lightMode => 'Светлая тема';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Послушайте или прочитайте любой аят сегодня';

  @override
  String get locating => 'Определение места...';

  @override
  String get location => 'Местоположение';

  @override
  String get locationPermissionsAreDenied => 'Доступ к геолокации запрещён';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Доступ к геолокации запрещён навсегда.';

  @override
  String get locationServicesAreDisabled => 'Службы геолокации отключены.';

  @override
  String get longestStreak => 'Лучшая серия';

  @override
  String get maghrib => 'Магриб';

  @override
  String get maybeLater => 'Может быть, позже';

  @override
  String get meccaSaudiArabia => 'Мекка, Саудовская Аравия';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Господь мой, прости и помилуй';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Господь мой, я нуждаюсь в любом благе, которое Ты ниспошлёшь';

  @override
  String get myLordIncreaseMeInKnowledge => 'Господь мой, приумножь мои знания';

  @override
  String get myLordMakeItEasyAndDoNot => 'Господь мой, облегчи и не затрудняй';

  @override
  String get n => 'С';

  @override
  String get nameOptional => 'Имя (необязательно)';

  @override
  String get next => 'Далее';

  @override
  String get nextDhikr => 'Следующий зикр';

  @override
  String get nextPrayer => 'СЛЕДУЮЩИЙ НАМАЗ';

  @override
  String get night => 'НОЧЬ';

  @override
  String get nightEmeraldInterface => 'Ночной изумрудный интерфейс';

  @override
  String get noBookmarksYet => 'Закладок пока нет';

  @override
  String get noon => 'ПОЛДЕНЬ';

  @override
  String get north => 'Север';

  @override
  String get northeast => 'Северо-восток';

  @override
  String get northwest => 'Северо-запад';

  @override
  String get notificationsAlarm => 'Уведомления и будильник';

  @override
  String get notificationsForPrayerTimes => 'Уведомления о времени намазов';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'О Аллах, благослови Мухаммада';

  @override
  String get oEverLivingOSustainer => 'О Живой, О Вседержитель';

  @override
  String get openAutoStart => 'ОТКРЫТЬ АВТОЗАПУСК';

  @override
  String get optimizeAdhanPerformance => 'Оптимизировать работу азана';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Господь наш, даруй нам благо в этом мире';

  @override
  String get page => 'СТРАНИЦА';

  @override
  String get pearl => 'Жемчуг';

  @override
  String get personalizeYourAdhanNotifications => 'Настройте уведомления азана';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'Хвала Аллаху, Господу миров';

  @override
  String get prayerAlarms => 'Будильники намазов';

  @override
  String get prayerSchedule => 'Расписание намазов';

  @override
  String get prayerTimeNotifications => 'Уведомления о времени намазов';

  @override
  String get prayerTimesAreLoading => 'Время намазов загружается';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Время намазов, кибла, чтение Корана и тасбих в одном спутнике на каждый день.';

  @override
  String get prayerQuranQibla => 'НАМАЗ • КОРАН • КИБЛА';

  @override
  String get premiumThemes => 'Премиум-темы';

  @override
  String get preparingYourSpiritualJourney => 'Готовим ваш духовный путь...';

  @override
  String get previousDhikr => 'Предыдущий зикр';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get qibla => 'Кибла';

  @override
  String get qiblaFinder => 'Поиск киблы';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Коран';

  @override
  String get quranPlayback => 'Воспроизведение Корана';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro объединяет время намазов, киблу, чтение Корана и тасбих в одном простом спутнике на каждый день.';

  @override
  String get quranProPreferences => 'Настройки Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro хранит настройки знакомства и прогресса локально на этом устройстве. Аналитика может использоваться для повышения стабильности и качества.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro хранит ваш прогресс тасбиха локально на этом устройстве. Аналитика может использоваться для повышения стабильности приложения и качества продукта.';

  @override
  String get quranRecitation => 'Рецитация Корана';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'Раббана атина фид-дунья хасана';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'Рабби инни лима анзальта иляйя мин хайрин факир';

  @override
  String get rabbiYassirWaLaTuassir => 'Рабби яссир ва ля туассир';

  @override
  String get rabbiZidniIlma => 'Рабби зидни ильма';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'Раббигфир вархам ва анта хайрур-рахимин';

  @override
  String get rabiAlAwwal => 'Раби аль-Авваль';

  @override
  String get rabiAlThani => 'Раби ас-Сани';

  @override
  String get rateApp => 'Оценить приложение';

  @override
  String get rateQuranPro => 'Оценить Quran Pro';

  @override
  String get readListen => 'Чтение и аудио';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Читайте Коран в прекрасном исполнении чтецов.';

  @override
  String get recent => 'Недавние';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Рекомендуется для Xiaomi, Oppo, Vivo и Huawei';

  @override
  String get redCarnelian => 'Красный сердолик';

  @override
  String get remindMeAt => 'Напомнить в';

  @override
  String get removeAds => 'Убрать рекламу';

  @override
  String get requestingLocationPermission => 'Запрос доступа к геолокации...';

  @override
  String get reset => 'Сбросить';

  @override
  String get retry => 'Повторить';

  @override
  String get returnToCompass => 'Вернуться к компасу';

  @override
  String get s => 'Ю';

  @override
  String get save => 'Сохранить';

  @override
  String get saveGoal => 'Сохранить цель';

  @override
  String get searchSurahNumberArabic => 'Поиск: сура, номер, арабский...';

  @override
  String get searchSurah => 'Поиск суры...';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get selectTheThemeYouLike => 'Выберите понравившуюся тему';

  @override
  String get selectYourBead => 'Выберите чётки';

  @override
  String get shop => 'Магазин';

  @override
  String get shopCustomization => 'Магазин и оформление';

  @override
  String get sound => 'Звук';

  @override
  String get south => 'Юг';

  @override
  String get southeast => 'Юго-восток';

  @override
  String get southwest => 'Юго-запад';

  @override
  String get specialOccasionsAndMore => 'Особые даты и не только';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Оценка в магазине станет доступна, когда страница приложения будет опубликована.';

  @override
  String get subhanallahiWaBihamdihi => 'СубханАллахи ва бихамдихи';

  @override
  String get subhanallahilAzim => 'СубханАллахиль Азым';

  @override
  String get sunset => 'ЗАКАТ';

  @override
  String get supportQuranProOnTheStore => 'Поддержите Quran Pro в магазине';

  @override
  String get surah => 'Сура';

  @override
  String get tasbih => 'Тасбих';

  @override
  String get tasbihSettings => 'Настройки тасбиха';

  @override
  String get tellUsWhatToImprove => 'Расскажите, что улучшить';

  @override
  String get termsOfUse => 'Условия использования';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Спасибо, что пользуетесь Quran Pro. Оценка в магазине станет доступна, когда страница приложения будет опубликована.';

  @override
  String get thereIsNoDeityExceptAllah => 'Нет божества, кроме Аллаха';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Нет мощи и силы ни у кого, кроме Аллаха';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Это поможет настроить напоминания и следить за вашим прогрессом.';

  @override
  String get tigerSEye => 'Тигровый глаз';

  @override
  String get today => 'Сегодня';

  @override
  String get total => 'Всего';

  @override
  String get totalHasanat => 'ВСЕГО ХАСАНАТ';

  @override
  String get trackProgress => 'Отслеживание прогресса';

  @override
  String get trackYourReadingAndAchievements =>
      'Следите за чтением и достижениями.';

  @override
  String get tryAgain => 'Повторить';

  @override
  String get undo => 'Отменить';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Откройте все темы и настройки оформления';

  @override
  String get usageGuidelines => 'Правила использования';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Используйте Quran Pro с уважением — для личного поклонения, обучения и ежедневных исламских практик.';

  @override
  String get viewAll => 'Показать все';

  @override
  String get w => 'З';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get west => 'Запад';

  @override
  String get yaHayyuYaQayyum => 'Я Хайю Я Каюм';

  @override
  String get youReAllSet => 'Всё готово!';

  @override
  String get yourProgress => 'Ваш прогресс';

  @override
  String get continueLabel => 'Продолжить';

  @override
  String get amethyst => 'Аметист';

  @override
  String get indonesian => 'Индонезийский';

  @override
  String get turkish => 'Турецкий';

  @override
  String get vietnamese => 'Вьетнамский';

  @override
  String get turquoise => 'Бирюза';

  @override
  String get wood => 'Дерево';

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
  String get estimatedLocation => 'Примерное местоположение';
}
