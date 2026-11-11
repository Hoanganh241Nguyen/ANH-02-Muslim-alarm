// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get week => 'Tydzień';

  @override
  String get month => 'Miesiąc';

  @override
  String get lifetime => 'Cały czas';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Zrób przerwę w pracy i znajdź czas dla Allaha.';

  @override
  String get prayerAlarmDefaultName => 'Modlitwa';

  @override
  String productUnavailable(Object id) {
    return 'Produkt $id jest niedostępny do zakupu.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Zakup $productId zakończony pomyślnie!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Zakup $productId został przywrócony!';
  }

  @override
  String daysCount(Object count) {
    return '$count dni';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'WKRÓTCE: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Odległość do Mekki: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Przypomnij mi za $minutes min';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Nadszedł czas modlitwy $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Runda: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Wybrano: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Dżuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Strona $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ajat $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ajatów';
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
    return 'POZIOM $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Baqara 2:238)';

  @override
  String get text1juz => '1 dżuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 stron';

  @override
  String get text100dhikr => '100 zikrów';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 stron';

  @override
  String get text28cclearsky => '28°C - Bezchmurnie';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 stron';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'O aplikacji';

  @override
  String get aboutQuranPro => 'O Quran Pro';

  @override
  String get activity => 'Aktywność';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklama się ładuje. Spróbuj ponownie za chwilę.';

  @override
  String get addCustomDhikr => 'Dodaj własny zikr';

  @override
  String get addCustomDhikr2 => 'Dodaj własny zikr';

  @override
  String get addDhikr => 'Dodaj zikr';

  @override
  String get adjustPosition => 'DOSTOSUJ POZYCJĘ';

  @override
  String get afternoon => 'POPOŁUDNIE';

  @override
  String get alMasjidAlHaram => 'Al-Masdżid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'USTAWIONY NA KIBLĘ';

  @override
  String get allPraiseIsDueToAllah => 'Wszelka chwała należy się Allahowi';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Wszystkie funkcje premium w niższej cenie';

  @override
  String get allInOneQuranApp => 'Kompletna aplikacja z Koranem';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah mi wystarczy; nie ma bóstwa prócz Niego';

  @override
  String get allahIsTheGreatest => 'Allah jest Największy';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Zezwól na dostęp do lokalizacji lub dotknij „Ponów”, aby użyć harmonogramu zapasowego.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Zezwól na powiadomienia, aby otrzymywać czasy modlitw i codzienne przypomnienia.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Zezwól aplikacji na działanie w tle';

  @override
  String get app => 'Aplikacja';

  @override
  String get arabic => 'Arabski';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Śr.';

  @override
  String get ayah => 'Ajat';

  @override
  String get batteryOptimization => 'Optymalizacja baterii';

  @override
  String get beautifulWidgets => 'Piękne widżety';

  @override
  String get bestValue => 'NAJLEPSZA OFERTA';

  @override
  String get blackOnyx => 'Czarny onyks';

  @override
  String get bookmarks => 'Zakładki';

  @override
  String get brightIvoryInterface =>
      'Jasny interfejs w kolorze kości słoniowej';

  @override
  String get calculatingDistance => 'Obliczanie odległości...';

  @override
  String get calibrateYourDirection => 'Skalibruj kierunek';

  @override
  String get cancel => 'Anuluj';

  @override
  String get change => 'Zmień';

  @override
  String get changeTasbihMode => 'Zmienić tryb tasbih?';

  @override
  String get chooseDhikr => 'Wybierz zikr';

  @override
  String get chooseDisplayLanguage => 'Wybierz język wyświetlania';

  @override
  String get chooseTheme => 'Wybierz motyw';

  @override
  String get chooseYourPreferredLanguage => 'Wybierz preferowany język';

  @override
  String get clickOrSwipeToCount => 'Dotknij lub przesuń, aby liczyć';

  @override
  String get close => 'Zamknij';

  @override
  String get closeCustomGoal => 'Zamknij własny cel';

  @override
  String get completeAtLeast33Dhikr => 'Wykonaj co najmniej 33 zikry';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Połącz swoje serce ze Świętym Koranem.';

  @override
  String get continueReading => 'Czytaj dalej';

  @override
  String get countsPerRound => 'Powtórzeń na rundę';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Twórz kolekcję mistrzowsko wykonanych, duchowych klejnotów.';

  @override
  String get current => 'AKTUALNIE';

  @override
  String get current2 => 'Aktualnie';

  @override
  String get currentLocationToMecca => 'Z obecnej lokalizacji do Mekki';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Obecny postęp zostanie zresetowany dla nowego trybu.';

  @override
  String get currentStreak => 'Aktualna passa';

  @override
  String get custom => 'Własny';

  @override
  String get customDhikr => 'Własny zikr';

  @override
  String get customGoal => 'Własny cel';

  @override
  String get customPrayerSounds => 'Własne dźwięki modlitw';

  @override
  String get dailyGoal => 'Cel dzienny';

  @override
  String get dailyQuests => 'Codzienne zadania';

  @override
  String get dailyQuranReminder => 'Codzienne przypomnienie o Koranie';

  @override
  String get dailyReminders => 'Codzienne przypomnienia';

  @override
  String get dailyTasbih => 'Codzienny tasbih';

  @override
  String get dark => 'Ciemny';

  @override
  String get dawn => 'ŚWIT';

  @override
  String get debug => 'Debugowanie';

  @override
  String get dhikr => 'Zikr';

  @override
  String get dhikrActivity => 'Aktywność zikr';

  @override
  String get dhuAlHijjah => 'Zu al-Hidżdża';

  @override
  String get dhuAlQadah => 'Zu al-Kada';

  @override
  String get dhuhr => 'Zuhr';

  @override
  String get direction => 'KIERUNEK';

  @override
  String get disableBatteryOptimization => 'Wyłącz optymalizację baterii';

  @override
  String get disableOptimization => 'WYŁĄCZ OPTYMALIZACJĘ';

  @override
  String get distance => 'ODLEGŁOŚĆ';

  @override
  String get e => 'E';

  @override
  String get eGHasbunallah => 'np. HasbunAllah';

  @override
  String get east => 'Wschód';

  @override
  String get enableAutoStart => 'Włącz autostart';

  @override
  String get enableNotifications => 'Włącz powiadomienia';

  @override
  String get enableReminders => 'Włącz przypomnienia';

  @override
  String get english => 'Angielski';

  @override
  String get enterYourName => 'Wpisz swoje imię';

  @override
  String get equipped => 'W UŻYCIU';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Wszystko, czego potrzebujesz, by lepiej obcować z Koranem.';

  @override
  String get fajr => 'Fadżr';

  @override
  String get feedback => 'Opinie';

  @override
  String get first => 'Pierwszy';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Aby uzyskać najdokładniejszy wynik, trzymaj telefon poziomo, z dala od przedmiotów magnetycznych.';

  @override
  String get free => 'Za darmo';

  @override
  String get fullBundle => 'Pełny pakiet';

  @override
  String get getAnAdFreeExperienceForever => 'Korzystaj bez reklam na zawsze';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Otrzymuj przypomnienia o czytaniu i zachowaj regularność.';

  @override
  String get getStarted => 'Zaczynajmy';

  @override
  String get gloryAndPraiseBeToAllah => 'Chwała i uwielbienie Allahowi';

  @override
  String get gloryBeToAllah => 'Chwała Allahowi';

  @override
  String get gloryBeToAllahTheMagnificent => 'Chwała Allahowi Wspaniałemu';

  @override
  String get goToHome => 'Przejdź do ekranu głównego';

  @override
  String get goldenEngraved => 'Złote grawerowanie';

  @override
  String get greenJade => 'Zielony jadeit';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Wietnam';

  @override
  String get haptic => 'Wibracje';

  @override
  String get hasanatHub => 'Centrum hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Start';

  @override
  String get howYourDataIsHandled => 'Jak przetwarzamy Twoje dane';

  @override
  String get iSeekForgivenessFromAllah => 'Proszę Allaha o przebaczenie';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Szukam schronienia u Allaha przed przeklętym szatanem';

  @override
  String get immediateAlerts => 'Natychmiastowe powiadomienia';

  @override
  String get inTheNameOfAllah => 'W imię Allaha';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Zaprawdę, do Allaha należymy i do Niego powracamy';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isza';

  @override
  String get jumadaAlAwwal => 'Dżumada al-Awwal';

  @override
  String get jumadaAlThani => 'Dżumada as-Sani';

  @override
  String get juz => 'DŻUZ';

  @override
  String get juz2 => 'Dżuz';

  @override
  String get keepAdhanAlarmsReliable => 'Zadbaj o niezawodne alarmy azanu';

  @override
  String get keepItUpYouReDoingGreat => 'Tak trzymaj! Świetnie Ci idzie.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Zadbaj o niezawodne wezwania do modlitwy, nawet gdy aplikacja jest zamknięta.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Język';

  @override
  String get lapisLazuli => 'Lapis lazuli';

  @override
  String get last7Days => 'Ostatnie 7 dni';

  @override
  String get later => 'PÓŹNIEJ';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Rozpocznij swoją piękną podróż z Koranem.';

  @override
  String get letSPersonalizeYourExperience => 'Dostosujmy\naplikację do Ciebie';

  @override
  String get light => 'Jasny';

  @override
  String get lightMode => 'Tryb jasny';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Posłuchaj lub przeczytaj dziś dowolny ajat';

  @override
  String get locating => 'Lokalizowanie...';

  @override
  String get location => 'Lokalizacja';

  @override
  String get locationPermissionsAreDenied => 'Odmówiono dostępu do lokalizacji';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Dostęp do lokalizacji został trwale zablokowany.';

  @override
  String get locationServicesAreDisabled => 'Usługi lokalizacji są wyłączone.';

  @override
  String get longestStreak => 'Najdłuższa passa';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Może później';

  @override
  String get meccaSaudiArabia => 'Mekka, Arabia Saudyjska';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Panie mój, przebacz i zmiłuj się';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Panie mój, potrzebuję każdego dobra, które ześlesz';

  @override
  String get myLordIncreaseMeInKnowledge => 'Panie mój, pomnóż moją wiedzę';

  @override
  String get myLordMakeItEasyAndDoNot => 'Panie mój, ułatw i nie utrudniaj';

  @override
  String get n => 'N';

  @override
  String get nameOptional => 'Imię (opcjonalnie)';

  @override
  String get next => 'Dalej';

  @override
  String get nextDhikr => 'Następny zikr';

  @override
  String get nextPrayer => 'NASTĘPNA MODLITWA';

  @override
  String get night => 'NOC';

  @override
  String get nightEmeraldInterface => 'Nocny interfejs w kolorze szmaragdu';

  @override
  String get noBookmarksYet => 'Brak zakładek';

  @override
  String get noon => 'POŁUDNIE';

  @override
  String get north => 'Północ';

  @override
  String get northeast => 'Północny wschód';

  @override
  String get northwest => 'Północny zachód';

  @override
  String get notificationsAlarm => 'Powiadomienia i alarm';

  @override
  String get notificationsForPrayerTimes => 'Powiadomienia o czasach modlitw';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'O Allahu, błogosław Muhammada';

  @override
  String get oEverLivingOSustainer => 'O Wiecznie Żywy, o Samoistny';

  @override
  String get openAutoStart => 'OTWÓRZ AUTOSTART';

  @override
  String get optimizeAdhanPerformance => 'Zoptymalizuj działanie azanu';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Panie nasz, obdarz nas dobrem na tym świecie';

  @override
  String get page => 'STRONA';

  @override
  String get pearl => 'Perła';

  @override
  String get personalizeYourAdhanNotifications =>
      'Spersonalizuj powiadomienia azanu';

  @override
  String get praiseBeToAllahLordOfTheWorlds => 'Chwała Allahowi, Panu światów';

  @override
  String get prayerAlarms => 'Alarmy modlitw';

  @override
  String get prayerSchedule => 'Harmonogram modlitw';

  @override
  String get prayerTimeNotifications => 'Powiadomienia o czasie modlitwy';

  @override
  String get prayerTimesAreLoading => 'Wczytywanie czasów modlitw';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Czasy modlitw, kibla, czytanie Koranu i tasbih w jednym codziennym towarzyszu.';

  @override
  String get prayerQuranQibla => 'MODLITWA • KORAN • KIBLA';

  @override
  String get premiumThemes => 'Motywy premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Przygotowujemy Twoją duchową podróż...';

  @override
  String get previousDhikr => 'Poprzedni zikr';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get qibla => 'Kibla';

  @override
  String get qiblaFinder => 'Kompas kibli';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Koran';

  @override
  String get quranPlayback => 'Odtwarzanie Koranu';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro łączy czasy modlitw, kiblę, czytanie Koranu i tasbih w jednym prostym, codziennym towarzyszu.';

  @override
  String get quranProPreferences => 'Ustawienia Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro przechowuje ustawienia wprowadzenia i postępów lokalnie na tym urządzeniu. Analityka może służyć poprawie stabilności i jakości.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro przechowuje Twój postęp w tasbih lokalnie na tym urządzeniu. Analityka może służyć poprawie stabilności aplikacji i jakości produktu.';

  @override
  String get quranRecitation => 'Recytacja Koranu';

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
  String get rabiAlAwwal => 'Rabi al-Awwal';

  @override
  String get rabiAlThani => 'Rabi as-Sani';

  @override
  String get rateApp => 'Oceń aplikację';

  @override
  String get rateQuranPro => 'Oceń Quran Pro';

  @override
  String get readListen => 'Czytaj i słuchaj';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Czytaj Koran z pięknymi recytacjami.';

  @override
  String get recent => 'Ostatnie';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Zalecane dla Xiaomi, Oppo, Vivo i Huawei';

  @override
  String get redCarnelian => 'Czerwony karneol';

  @override
  String get remindMeAt => 'Przypomnij mi o';

  @override
  String get removeAds => 'Usuń reklamy';

  @override
  String get requestingLocationPermission =>
      'Prośba o dostęp do lokalizacji...';

  @override
  String get reset => 'Resetuj';

  @override
  String get retry => 'Ponów';

  @override
  String get returnToCompass => 'Wróć do kompasu';

  @override
  String get s => 'S';

  @override
  String get save => 'Zapisz';

  @override
  String get saveGoal => 'Zapisz cel';

  @override
  String get searchSurahNumberArabic => 'Szukaj sury, numeru, po arabsku...';

  @override
  String get searchSurah => 'Szukaj sury...';

  @override
  String get selectLanguage => 'Wybierz język';

  @override
  String get selectTheThemeYouLike => 'Wybierz motyw, który Ci się podoba';

  @override
  String get selectYourBead => 'Wybierz koralik';

  @override
  String get shop => 'Sklep';

  @override
  String get shopCustomization => 'Sklep i personalizacja';

  @override
  String get sound => 'Dźwięk';

  @override
  String get south => 'Południe';

  @override
  String get southeast => 'Południowy wschód';

  @override
  String get southwest => 'Południowy zachód';

  @override
  String get specialOccasionsAndMore => 'Wyjątkowe okazje i więcej';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Ocenianie w sklepie będzie dostępne, gdy wersja produkcyjna trafi do sklepu.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'ZACHÓD SŁOŃCA';

  @override
  String get supportQuranProOnTheStore => 'Wesprzyj Quran Pro w sklepie';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Ustawienia tasbih';

  @override
  String get tellUsWhatToImprove => 'Napisz, co możemy poprawić';

  @override
  String get termsOfUse => 'Warunki korzystania';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Dziękujemy za korzystanie z Quran Pro. Ocenianie w sklepie będzie dostępne, gdy wersja produkcyjna trafi do sklepu.';

  @override
  String get thereIsNoDeityExceptAllah => 'Nie ma bóstwa prócz Allaha';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Nie ma mocy ani siły poza Allahem';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Dzięki temu dopasujemy przypomnienia i będziemy śledzić Twoje postępy.';

  @override
  String get tigerSEye => 'Tygrysie oko';

  @override
  String get today => 'Dziś';

  @override
  String get total => 'Łącznie';

  @override
  String get totalHasanat => 'ŁĄCZNIE HASANAT';

  @override
  String get trackProgress => 'Śledź postępy';

  @override
  String get trackYourReadingAndAchievements =>
      'Śledź swoje czytanie i osiągnięcia.';

  @override
  String get tryAgain => 'Spróbuj ponownie';

  @override
  String get undo => 'Cofnij';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Odblokuj wszystkie motywy i personalizacje';

  @override
  String get usageGuidelines => 'Zasady korzystania';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Korzystaj z Quran Pro z szacunkiem — do osobistej modlitwy, nauki i codziennych praktyk islamu.';

  @override
  String get viewAll => 'Zobacz wszystko';

  @override
  String get w => 'W';

  @override
  String get welcome => 'Witaj';

  @override
  String get west => 'Zachód';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Wszystko gotowe!';

  @override
  String get yourProgress => 'Twoje postępy';

  @override
  String get continueLabel => 'Kontynuuj';

  @override
  String get amethyst => 'Ametyst';

  @override
  String get indonesian => 'Indonezyjski';

  @override
  String get turkish => 'Turecki';

  @override
  String get vietnamese => 'Wietnamski';

  @override
  String get turquoise => 'Turkus';

  @override
  String get wood => 'Drewno';

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
