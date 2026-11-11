// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get week => 'Teden';

  @override
  String get month => 'Mesec';

  @override
  String get lifetime => 'Ves čas';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Za trenutek prekinite delo in si vzemite čas za Allaha.';

  @override
  String get prayerAlarmDefaultName => 'Namaz';

  @override
  String productUnavailable(Object id) {
    return 'Izdelek $id ni na voljo za nakup.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Nakup $productId je uspel!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Nakup $productId je obnovljen!';
  }

  @override
  String daysCount(Object count) {
    return '$count dni';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'SLEDI: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Razdalja do Meke: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Opomni me čez $minutes minut';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Nastopil je čas za namaz $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Krog: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Izbran jezik: $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Džuz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Stran $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ajet $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ajetov';
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
    return 'STOPNJA $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Sura Al-Bekare 2:238)';

  @override
  String get text1juz => '1 džuz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 strani';

  @override
  String get text100dhikr => '100 dhikrov';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 strani';

  @override
  String get text28cclearsky => '28°C - Jasno nebo';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 strani';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'O aplikaciji';

  @override
  String get aboutQuranPro => 'O Quran Pro';

  @override
  String get activity => 'Aktivnost';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Oglas se nalaga. Poskusite znova čez trenutek.';

  @override
  String get addCustomDhikr => 'Dodaj lasten dhikr';

  @override
  String get addCustomDhikr2 => 'Dodaj lasten dhikr';

  @override
  String get addDhikr => 'Dodaj dhikr';

  @override
  String get adjustPosition => 'PRILAGODI POLOŽAJ';

  @override
  String get afternoon => 'POPOLDNE';

  @override
  String get alMasjidAlHaram => 'Al-Masdžid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'PORAVNANO S KIBLO';

  @override
  String get allPraiseIsDueToAllah => 'Vsa hvala pripada Allahu';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Vse premium možnosti po znižani ceni';

  @override
  String get allInOneQuranApp => 'Aplikacija za Koran vse v enem';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah mi zadošča; ni boga razen Njega';

  @override
  String get allahIsTheGreatest => 'Allah je največji';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Dovolite dostop do lokacije ali tapnite Poskusi znova za rezervni razpored.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Dovolite obvestila za prejemanje časov namaza in dnevnih opomnikov.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Dovolite aplikaciji delovanje v ozadju';

  @override
  String get app => 'Aplikacija';

  @override
  String get arabic => 'Arabščina';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Povpr.';

  @override
  String get ayah => 'Ajet';

  @override
  String get batteryOptimization => 'Optimizacija baterije';

  @override
  String get beautifulWidgets => 'Čudoviti gradniki';

  @override
  String get bestValue => 'NAJUGODNEJE';

  @override
  String get blackOnyx => 'Črni oniks';

  @override
  String get bookmarks => 'Zaznamki';

  @override
  String get brightIvoryInterface => 'Svetel vmesnik v barvi slonovine';

  @override
  String get calculatingDistance => 'Računanje razdalje...';

  @override
  String get calibrateYourDirection => 'Umerite svojo smer';

  @override
  String get cancel => 'Prekliči';

  @override
  String get change => 'Spremeni';

  @override
  String get changeTasbihMode => 'Spremenim način tasbiha?';

  @override
  String get chooseDhikr => 'Izberi dhikr';

  @override
  String get chooseDisplayLanguage => 'Izberite jezik prikaza';

  @override
  String get chooseTheme => 'Izberi temo';

  @override
  String get chooseYourPreferredLanguage => 'Izberite želeni jezik';

  @override
  String get clickOrSwipeToCount => 'Tapnite ali povlecite za štetje';

  @override
  String get close => 'Zapri';

  @override
  String get closeCustomGoal => 'Zapri lasten cilj';

  @override
  String get completeAtLeast33Dhikr => 'Opravite vsaj 33 dhikrov';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Povežite svoje srce s svetim Koranom.';

  @override
  String get continueReading => 'Nadaljuj branje';

  @override
  String get countsPerRound => 'Število na krog';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Sestavite svojo zbirko mojstrsko izdelanih duhovnih dragih kamnov.';

  @override
  String get current => 'TRENUTNO';

  @override
  String get current2 => 'Trenutno';

  @override
  String get currentLocationToMecca => 'Od trenutne lokacije do Meke';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Trenutni napredek se bo ponastavil za nov način.';

  @override
  String get currentStreak => 'Trenutni niz';

  @override
  String get custom => 'Po meri';

  @override
  String get customDhikr => 'Lasten dhikr';

  @override
  String get customGoal => 'Cilj po meri';

  @override
  String get customPrayerSounds => 'Lastni zvoki za namaz';

  @override
  String get dailyGoal => 'Dnevni cilj';

  @override
  String get dailyQuests => 'Dnevne naloge';

  @override
  String get dailyQuranReminder => 'Dnevni opomnik za Koran';

  @override
  String get dailyReminders => 'Dnevni opomniki';

  @override
  String get dailyTasbih => 'Dnevni tasbih';

  @override
  String get dark => 'Temna';

  @override
  String get dawn => 'ZORA';

  @override
  String get debug => 'Razhroščevanje';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Dejavnost dhikra';

  @override
  String get dhuAlHijjah => 'Zul-hidždže';

  @override
  String get dhuAlQadah => 'Zul-kade';

  @override
  String get dhuhr => 'Zuhr';

  @override
  String get direction => 'SMER';

  @override
  String get disableBatteryOptimization => 'Onemogoči optimizacijo baterije';

  @override
  String get disableOptimization => 'ONEMOGOČI OPTIMIZACIJO';

  @override
  String get distance => 'RAZDALJA';

  @override
  String get e => 'V';

  @override
  String get eGHasbunallah => 'npr. HasbunAllah';

  @override
  String get east => 'Vzhod';

  @override
  String get enableAutoStart => 'Omogoči samodejni zagon';

  @override
  String get enableNotifications => 'Omogoči obvestila';

  @override
  String get enableReminders => 'Omogoči opomnike';

  @override
  String get english => 'Angleščina';

  @override
  String get enterYourName => 'Vnesite svoje ime';

  @override
  String get equipped => 'V UPORABI';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Vse, kar potrebujete za boljše doživetje Korana.';

  @override
  String get fajr => 'Fadžr';

  @override
  String get feedback => 'Povratne informacije';

  @override
  String get first => 'Prvi';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Za najbolj natančne rezultate držite telefon vodoravno in stran od magnetnih predmetov.';

  @override
  String get free => 'Brezplačno';

  @override
  String get fullBundle => 'Celoten paket';

  @override
  String get getAnAdFreeExperienceForever => 'Za vedno brez oglasov';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Prejemajte opomnike za branje in ostanite dosledni.';

  @override
  String get getStarted => 'Začnimo';

  @override
  String get gloryAndPraiseBeToAllah => 'Slava in hvala Allahu';

  @override
  String get gloryBeToAllah => 'Slava Allahu';

  @override
  String get gloryBeToAllahTheMagnificent => 'Slava Allahu, Veličastnemu';

  @override
  String get goToHome => 'Pojdi na začetno stran';

  @override
  String get goldenEngraved => 'Zlato gravirano';

  @override
  String get greenJade => 'Zeleni žad';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoj, Vietnam';

  @override
  String get haptic => 'Vibriranje';

  @override
  String get hasanatHub => 'Središče hasanata';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Domov';

  @override
  String get howYourDataIsHandled => 'Kako ravnamo z vašimi podatki';

  @override
  String get iSeekForgivenessFromAllah => 'Prosim Allaha za odpuščanje';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Pri Allahu iščem zatočišče pred prekletim šejtanom';

  @override
  String get immediateAlerts => 'Takojšnja opozorila';

  @override
  String get inTheNameOfAllah => 'V imenu Allaha';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Zares Allahu pripadamo in k Njemu se vračamo';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Iša';

  @override
  String get jumadaAlAwwal => 'Džumadel-ula';

  @override
  String get jumadaAlThani => 'Džumadel-uhra';

  @override
  String get juz => 'DŽUZ';

  @override
  String get juz2 => 'Džuz';

  @override
  String get keepAdhanAlarmsReliable => 'Ohranite zanesljive alarme za ezan';

  @override
  String get keepItUpYouReDoingGreat => 'Kar tako! Odlično vam gre.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Ezan ostane zanesljiv tudi, ko je aplikacija zaprta.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Jezik';

  @override
  String get lapisLazuli => 'Lapis lazuli';

  @override
  String get last7Days => 'Zadnjih 7 dni';

  @override
  String get later => 'POZNEJE';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Začnimo vašo čudovito pot s Koranom.';

  @override
  String get letSPersonalizeYourExperience => 'Prilagodimo\nvašo izkušnjo';

  @override
  String get light => 'Svetla';

  @override
  String get lightMode => 'Svetli način';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Danes poslušajte ali preberite kateri koli ajet';

  @override
  String get locating => 'Iskanje lokacije...';

  @override
  String get location => 'Lokacija';

  @override
  String get locationPermissionsAreDenied =>
      'Dovoljenja za lokacijo so zavrnjena';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Dovoljenja za lokacijo so trajno zavrnjena.';

  @override
  String get locationServicesAreDisabled =>
      'Lokacijske storitve so onemogočene.';

  @override
  String get longestStreak => 'Najdaljši niz';

  @override
  String get maghrib => 'Magrib';

  @override
  String get maybeLater => 'Mogoče pozneje';

  @override
  String get meccaSaudiArabia => 'Meka, Saudova Arabija';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Moj Gospod, odpusti in usmili se';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Moj Gospod, potrebujem vsako dobro, ki mi ga pošlješ';

  @override
  String get myLordIncreaseMeInKnowledge => 'Moj Gospod, povečaj mi znanje';

  @override
  String get myLordMakeItEasyAndDoNot => 'Moj Gospod, olajšaj in ne otežuj';

  @override
  String get n => 'S';

  @override
  String get nameOptional => 'Ime (neobvezno)';

  @override
  String get next => 'Naprej';

  @override
  String get nextDhikr => 'Naslednji dhikr';

  @override
  String get nextPrayer => 'NASLEDNJI NAMAZ';

  @override
  String get night => 'NOČ';

  @override
  String get nightEmeraldInterface => 'Nočni smaragdni vmesnik';

  @override
  String get noBookmarksYet => 'Ni še zaznamkov';

  @override
  String get noon => 'OPOLDNE';

  @override
  String get north => 'Sever';

  @override
  String get northeast => 'Severovzhod';

  @override
  String get northwest => 'Severozahod';

  @override
  String get notificationsAlarm => 'Obvestila in alarm';

  @override
  String get notificationsForPrayerTimes => 'Obvestila za čase namaza';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'O Allah, blagoslovi Muhammeda';

  @override
  String get oEverLivingOSustainer => 'O Večno Živi, o Vzdrževalec';

  @override
  String get openAutoStart => 'ODPRI SAMODEJNI ZAGON';

  @override
  String get optimizeAdhanPerformance => 'Optimiziraj delovanje ezana';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Naš Gospod, daj nam dobro na tem svetu';

  @override
  String get page => 'STRAN';

  @override
  String get pearl => 'Biser';

  @override
  String get personalizeYourAdhanNotifications =>
      'Prilagodite obvestila za ezan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Hvala Allahu, Gospodarju svetov';

  @override
  String get prayerAlarms => 'Alarmi za namaz';

  @override
  String get prayerSchedule => 'Razpored namazov';

  @override
  String get prayerTimeNotifications => 'Obvestila o časih namaza';

  @override
  String get prayerTimesAreLoading => 'Časi namaza se nalagajo';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Časi namaza, kibla, branje Korana in tasbih v enem dnevnem spremljevalcu.';

  @override
  String get prayerQuranQibla => 'NAMAZ • KORAN • KIBLA';

  @override
  String get premiumThemes => 'Premium teme';

  @override
  String get preparingYourSpiritualJourney =>
      'Pripravljamo vašo duhovno pot...';

  @override
  String get previousDhikr => 'Prejšnji dhikr';

  @override
  String get privacyPolicy => 'Politika zasebnosti';

  @override
  String get qibla => 'Kibla';

  @override
  String get qiblaFinder => 'Iskalnik kible';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Koran';

  @override
  String get quranPlayback => 'Predvajanje Korana';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro združuje čase namaza, kiblo, branje Korana in tasbih v enega preprostega dnevnega spremljevalca.';

  @override
  String get quranProPreferences => 'Nastavitve Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro shranjuje nastavitve uvajanja in napredka lokalno v tej napravi. Analitika se lahko uporablja za izboljšanje stabilnosti in kakovosti.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro shranjuje vaš napredek pri tasbihu lokalno v tej napravi. Analitika se lahko uporablja za izboljšanje stabilnosti aplikacije in kakovosti izdelka.';

  @override
  String get quranRecitation => 'Recitacija Korana';

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
  String get rabiAlAwwal => 'Rebiul-evvel';

  @override
  String get rabiAlThani => 'Rebiul-ahir';

  @override
  String get rateApp => 'Oceni aplikacijo';

  @override
  String get rateQuranPro => 'Oceni Quran Pro';

  @override
  String get readListen => 'Beri in poslušaj';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Berite Koran ob čudovitih recitacijah.';

  @override
  String get recent => 'Nedavno';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Priporočeno za Xiaomi, Oppo, Vivo in Huawei';

  @override
  String get redCarnelian => 'Rdeči karneol';

  @override
  String get remindMeAt => 'Opomni me ob';

  @override
  String get removeAds => 'Odstrani oglase';

  @override
  String get requestingLocationPermission =>
      'Zahtevanje dovoljenja za lokacijo...';

  @override
  String get reset => 'Ponastavi';

  @override
  String get retry => 'Poskusi znova';

  @override
  String get returnToCompass => 'Nazaj na kompas';

  @override
  String get s => 'J';

  @override
  String get save => 'Shrani';

  @override
  String get saveGoal => 'Shrani cilj';

  @override
  String get searchSurahNumberArabic => 'Iskanje sure, številke, arabščine...';

  @override
  String get searchSurah => 'Iskanje sure...';

  @override
  String get selectLanguage => 'Izberi jezik';

  @override
  String get selectTheThemeYouLike => 'Izberite temo, ki vam je všeč';

  @override
  String get selectYourBead => 'Izberite svojo jagodo';

  @override
  String get shop => 'Trgovina';

  @override
  String get shopCustomization => 'Trgovina in prilagajanje';

  @override
  String get sound => 'Zvok';

  @override
  String get south => 'Jug';

  @override
  String get southeast => 'Jugovzhod';

  @override
  String get southwest => 'Jugozahod';

  @override
  String get specialOccasionsAndMore => 'Posebne priložnosti in še več';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Ocenjevanje v trgovini bo na voljo, ko bo produkcijska objava pripravljena.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'SONČNI ZAHOD';

  @override
  String get supportQuranProOnTheStore => 'Podprite Quran Pro v trgovini';

  @override
  String get surah => 'Sura';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Nastavitve tasbiha';

  @override
  String get tellUsWhatToImprove => 'Povejte nam, kaj naj izboljšamo';

  @override
  String get termsOfUse => 'Pogoji uporabe';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Hvala, ker uporabljate Quran Pro. Ocenjevanje v trgovini bo na voljo, ko bo produkcijska objava pripravljena.';

  @override
  String get thereIsNoDeityExceptAllah => 'Ni boga razen Allaha';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Ni moči ne sile razen pri Allahu';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'To nam pomaga prilagoditi opomnike in slediti vašemu napredku.';

  @override
  String get tigerSEye => 'Tigrovo oko';

  @override
  String get today => 'Danes';

  @override
  String get total => 'Skupaj';

  @override
  String get totalHasanat => 'SKUPAJ HASANATA';

  @override
  String get trackProgress => 'Spremljaj napredek';

  @override
  String get trackYourReadingAndAchievements =>
      'Spremljajte svoje branje in dosežke.';

  @override
  String get tryAgain => 'Poskusite znova';

  @override
  String get undo => 'Razveljavi';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Odklenite vse teme in prilagoditve aplikacije';

  @override
  String get usageGuidelines => 'Smernice za uporabo';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro uporabljajte spoštljivo za osebni ibadet, učenje in vsakodnevne islamske navade.';

  @override
  String get viewAll => 'Prikaži vse';

  @override
  String get w => 'Z';

  @override
  String get welcome => 'Dobrodošli';

  @override
  String get west => 'Zahod';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Vse je pripravljeno!';

  @override
  String get yourProgress => 'Vaš napredek';

  @override
  String get continueLabel => 'Nadaljuj';

  @override
  String get amethyst => 'Ametist';

  @override
  String get indonesian => 'Indonezijščina';

  @override
  String get turkish => 'Turščina';

  @override
  String get vietnamese => 'Vietnamščina';

  @override
  String get turquoise => 'Turkiz';

  @override
  String get wood => 'Les';

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
