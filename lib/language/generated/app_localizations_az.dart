// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Azerbaijani (`az`).
class AppLocalizationsAz extends AppLocalizations {
  AppLocalizationsAz([String locale = 'az']) : super(locale);

  @override
  String get week => 'Həftə';

  @override
  String get month => 'Ay';

  @override
  String get lifetime => 'Bütün vaxt';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'İşinizə bir az ara verin və Allah üçün vaxt ayırın.';

  @override
  String get prayerAlarmDefaultName => 'Namaz';

  @override
  String productUnavailable(Object id) {
    return '$id məhsulu satın alınmaq üçün əlçatan deyil.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId alışı uğurla tamamlandı!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId alışı bərpa edildi!';
  }

  @override
  String daysCount(Object count) {
    return '$count gün';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'NÖVBƏTİ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Məkkəyə məsafə: $distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes dəqiqə sonra xatırlat';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName namazının vaxtıdır';
  }

  @override
  String roundValue(Object round) {
    return 'Dövrə: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language seçildi';
  }

  @override
  String juzNumber(Object juz) {
    return 'Cüz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Səhifə $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: ayə $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ayə';
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
    return 'SƏVİYYƏ $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Bəqərə surəsi 2:238)';

  @override
  String get text1juz => '1 cüz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 səhifə';

  @override
  String get text100dhikr => '100 zikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 səhifə';

  @override
  String get text28cclearsky => '28°C - Aydın hava';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 səhifə';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Haqqında';

  @override
  String get aboutQuranPro => 'Quran Pro haqqında';

  @override
  String get activity => 'Fəaliyyət';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklam yüklənir. Bir azdan yenidən cəhd edin.';

  @override
  String get addCustomDhikr => 'Fərdi zikr əlavə et';

  @override
  String get addCustomDhikr2 => 'Fərdi Zikr Əlavə Et';

  @override
  String get addDhikr => 'Zikr əlavə et';

  @override
  String get adjustPosition => 'MÖVQEYİ TƏNZİMLƏ';

  @override
  String get afternoon => 'GÜNORTADAN SONRA';

  @override
  String get alMasjidAlHaram => 'Məscidül-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'QİBLƏYƏ YÖNƏLİB';

  @override
  String get allPraiseIsDueToAllah => 'Bütün həmdlər Allaha məxsusdur';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Bütün premium funksiyalar endirimli qiymətə';

  @override
  String get allInOneQuranApp => 'Hamısı bir arada Quran tətbiqi';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah mənə kifayətdir; Ondan başqa ilah yoxdur';

  @override
  String get allahIsTheGreatest => 'Allah ən böyükdür';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Məkan icazəsi verin və ya ehtiyat cədvəldən istifadə etmək üçün «Yenidən cəhd et»ə toxunun.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Namaz vaxtlarını və gündəlik xatırlatmaları almaq üçün bildirişlərə icazə verin.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Tətbiqin arxa fonda işləməsinə icazə verin';

  @override
  String get app => 'Tətbiq';

  @override
  String get arabic => 'Ərəb dili';

  @override
  String get asr => 'Əsr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Orta';

  @override
  String get ayah => 'Ayə';

  @override
  String get batteryOptimization => 'Batareya optimallaşdırması';

  @override
  String get beautifulWidgets => 'Gözəl vidjetlər';

  @override
  String get bestValue => 'ƏN SƏRFƏLİ';

  @override
  String get blackOnyx => 'Qara oniks';

  @override
  String get bookmarks => 'Əlfəcinlər';

  @override
  String get brightIvoryInterface => 'Parlaq fil sümüyü interfeysi';

  @override
  String get calculatingDistance => 'Məsafə hesablanır...';

  @override
  String get calibrateYourDirection => 'İstiqaməti kalibrləyin';

  @override
  String get cancel => 'Ləğv et';

  @override
  String get change => 'Dəyiş';

  @override
  String get changeTasbihMode => 'Təsbeh rejimi dəyişdirilsin?';

  @override
  String get chooseDhikr => 'Zikr seçin';

  @override
  String get chooseDisplayLanguage => 'Görünüş dilini seçin';

  @override
  String get chooseTheme => 'Mövzu seçin';

  @override
  String get chooseYourPreferredLanguage => 'Üstünlük verdiyiniz dili seçin';

  @override
  String get clickOrSwipeToCount => 'Saymaq üçün toxunun və ya sürüşdürün';

  @override
  String get close => 'Bağla';

  @override
  String get closeCustomGoal => 'Fərdi hədəfi bağla';

  @override
  String get completeAtLeast33Dhikr => 'Ən azı 33 zikr tamamlayın';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Qəlbinizi Müqəddəs Quranla birləşdirin.';

  @override
  String get continueReading => 'Oxumağa davam et';

  @override
  String get countsPerRound => 'Dövrədəki say';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Kolleksiyanızı usta işi mənəvi daşlarla zənginləşdirin.';

  @override
  String get current => 'CARİ';

  @override
  String get current2 => 'Cari';

  @override
  String get currentLocationToMecca => 'Cari məkandan Məkkəyə';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Yeni rejim üçün cari irəliləyiş sıfırlanacaq.';

  @override
  String get currentStreak => 'Cari seriya';

  @override
  String get custom => 'Fərdi';

  @override
  String get customDhikr => 'Fərdi zikr';

  @override
  String get customGoal => 'Fərdi hədəf';

  @override
  String get customPrayerSounds => 'Fərdi namaz səsləri';

  @override
  String get dailyGoal => 'Gündəlik hədəf';

  @override
  String get dailyQuests => 'Gündəlik tapşırıqlar';

  @override
  String get dailyQuranReminder => 'Gündəlik Quran xatırlatması';

  @override
  String get dailyReminders => 'Gündəlik xatırlatmalar';

  @override
  String get dailyTasbih => 'Gündəlik təsbeh';

  @override
  String get dark => 'Tünd';

  @override
  String get dawn => 'DAN YERİ';

  @override
  String get debug => 'Sazlama';

  @override
  String get dhikr => 'Zikr';

  @override
  String get dhikrActivity => 'Zikr fəaliyyəti';

  @override
  String get dhuAlHijjah => 'Zülhiccə';

  @override
  String get dhuAlQadah => 'Zülqədə';

  @override
  String get dhuhr => 'Zöhr';

  @override
  String get direction => 'İSTİQAMƏT';

  @override
  String get disableBatteryOptimization =>
      'Batareya optimallaşdırmasını söndür';

  @override
  String get disableOptimization => 'OPTİMALLAŞDIRMANI SÖNDÜR';

  @override
  String get distance => 'MƏSAFƏ';

  @override
  String get e => 'Şq';

  @override
  String get eGHasbunallah => 'məs. HasbunAllah';

  @override
  String get east => 'Şərq';

  @override
  String get enableAutoStart => 'Avtomatik başlatmanı aktivləşdir';

  @override
  String get enableNotifications => 'Bildirişləri aktivləşdir';

  @override
  String get enableReminders => 'Xatırlatmaları aktivləşdir';

  @override
  String get english => 'İngilis dili';

  @override
  String get enterYourName => 'Adınızı daxil edin';

  @override
  String get equipped => 'SEÇİLİB';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Daha yaxşı Quran təcrübəsi üçün lazım olan hər şey.';

  @override
  String get fajr => 'Sübh';

  @override
  String get feedback => 'Rəy';

  @override
  String get first => 'İlk';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Ən dəqiq nəticə üçün telefonu düz tutun və maqnit əşyalardan uzaq saxlayın.';

  @override
  String get free => 'Pulsuz';

  @override
  String get fullBundle => 'Tam paket';

  @override
  String get getAnAdFreeExperienceForever =>
      'Həmişəlik reklamsız təcrübə əldə edin';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Xatırlatma alın və ardıcıl oxuyun.';

  @override
  String get getStarted => 'Başlayaq';

  @override
  String get gloryAndPraiseBeToAllah => 'Allah pakdır, həmd Ona məxsusdur';

  @override
  String get gloryBeToAllah => 'Allah pak və müqəddəsdir';

  @override
  String get gloryBeToAllahTheMagnificent => 'Uca Allah pak və müqəddəsdir';

  @override
  String get goToHome => 'Ana səhifəyə keç';

  @override
  String get goldenEngraved => 'Qızıl naxışlı';

  @override
  String get greenJade => 'Yaşıl nefrit';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoy, Vyetnam';

  @override
  String get haptic => 'Titrəyiş';

  @override
  String get hasanatHub => 'Həsənat mərkəzi';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Ana səhifə';

  @override
  String get howYourDataIsHandled => 'Məlumatlarınız necə işlənir';

  @override
  String get iSeekForgivenessFromAllah => 'Allahdan bağışlanma diləyirəm';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Qovulmuş şeytandan Allaha sığınıram';

  @override
  String get immediateAlerts => 'Dərhal bildirişlər';

  @override
  String get inTheNameOfAllah => 'Allahın adı ilə';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Həqiqətən, biz Allaha məxsusuq və Ona qayıdacağıq';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'İşa';

  @override
  String get jumadaAlAwwal => 'Cəmadiüləvvəl';

  @override
  String get jumadaAlThani => 'Cəmadiülaxır';

  @override
  String get juz => 'CÜZ';

  @override
  String get juz2 => 'Cüz';

  @override
  String get keepAdhanAlarmsReliable => 'Azan siqnalları etibarlı qalsın';

  @override
  String get keepItUpYouReDoingGreat => 'Davam edin! Əla gedirsiniz.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Tətbiq bağlı olsa belə, azan bildirişləri etibarlı qalsın.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Dil';

  @override
  String get lapisLazuli => 'Lazurit';

  @override
  String get last7Days => 'Son 7 gün';

  @override
  String get later => 'SONRA';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Quranla gözəl səyahətinizə başlayaq.';

  @override
  String get letSPersonalizeYourExperience => 'Təcrübənizi\nfərdiləşdirək';

  @override
  String get light => 'İşıqlı';

  @override
  String get lightMode => 'İşıqlı rejim';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Bu gün istənilən ayəni dinləyin və ya oxuyun';

  @override
  String get locating => 'Məkan təyin edilir...';

  @override
  String get location => 'Məkan';

  @override
  String get locationPermissionsAreDenied => 'Məkan icazələri rədd edilib';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Məkan icazələri həmişəlik rədd edilib.';

  @override
  String get locationServicesAreDisabled => 'Məkan xidmətləri söndürülüb.';

  @override
  String get longestStreak => 'Ən uzun seriya';

  @override
  String get maghrib => 'Məğrib';

  @override
  String get maybeLater => 'Bəlkə sonra';

  @override
  String get meccaSaudiArabia => 'Məkkə, Səudiyyə Ərəbistanı';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Rəbbim, bağışla və rəhm et';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Rəbbim, mənə nazil edəcəyin hər xeyrə möhtacam';

  @override
  String get myLordIncreaseMeInKnowledge => 'Rəbbim, elmimi artır';

  @override
  String get myLordMakeItEasyAndDoNot => 'Rəbbim, asanlaşdır və çətinləşdirmə';

  @override
  String get n => 'Ş';

  @override
  String get nameOptional => 'Ad (istəyə bağlı)';

  @override
  String get next => 'Növbəti';

  @override
  String get nextDhikr => 'Növbəti zikr';

  @override
  String get nextPrayer => 'NÖVBƏTİ NAMAZ';

  @override
  String get night => 'GECƏ';

  @override
  String get nightEmeraldInterface => 'Gecə zümrüd interfeysi';

  @override
  String get noBookmarksYet => 'Hələ əlfəcin yoxdur';

  @override
  String get noon => 'GÜNORTA';

  @override
  String get north => 'Şimal';

  @override
  String get northeast => 'Şimal-şərq';

  @override
  String get northwest => 'Şimal-qərb';

  @override
  String get notificationsAlarm => 'Bildirişlər və siqnal';

  @override
  String get notificationsForPrayerTimes => 'Namaz vaxtları üçün bildirişlər';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Allahım, Muhəmmədə salavat göndər';

  @override
  String get oEverLivingOSustainer => 'Ey Həyy olan, ey Qəyyum olan';

  @override
  String get openAutoStart => 'AVTOMATİK BAŞLATMANI AÇ';

  @override
  String get optimizeAdhanPerformance => 'Azan işini optimallaşdır';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Rəbbimiz, bizə bu dünyada yaxşılıq ver';

  @override
  String get page => 'SƏHİFƏ';

  @override
  String get pearl => 'Mirvari';

  @override
  String get personalizeYourAdhanNotifications =>
      'Azan bildirişlərini fərdiləşdirin';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Həmd aləmlərin Rəbbi Allaha məxsusdur';

  @override
  String get prayerAlarms => 'Namaz siqnalları';

  @override
  String get prayerSchedule => 'Namaz cədvəli';

  @override
  String get prayerTimeNotifications => 'Namaz vaxtı bildirişləri';

  @override
  String get prayerTimesAreLoading => 'Namaz vaxtları yüklənir';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Namaz vaxtları, qiblə, Quran oxuma və təsbeh bir gündəlik yoldaşda.';

  @override
  String get prayerQuranQibla => 'NAMAZ • QURAN • QİBLƏ';

  @override
  String get premiumThemes => 'Premium mövzular';

  @override
  String get preparingYourSpiritualJourney =>
      'Mənəvi səyahətiniz hazırlanır...';

  @override
  String get previousDhikr => 'Əvvəlki zikr';

  @override
  String get privacyPolicy => 'Məxfilik siyasəti';

  @override
  String get qibla => 'Qiblə';

  @override
  String get qiblaFinder => 'Qiblə tapıcı';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Quran';

  @override
  String get quranPlayback => 'Quran səsləndirilməsi';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro namaz vaxtları, qiblə, Quran oxuma və təsbehi bir sadə gündəlik yoldaşda birləşdirir.';

  @override
  String get quranProPreferences => 'Quran Pro tənzimləmələri';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro tanışlıq və irəliləyiş tənzimləmələrini bu cihazda yerli olaraq saxlayır. Sabitliyi və keyfiyyəti yaxşılaşdırmaq üçün analitikadan istifadə edilə bilər.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro təsbeh irəliləyişinizi bu cihazda yerli olaraq saxlayır. Tətbiqin sabitliyini və məhsul keyfiyyətini yaxşılaşdırmaq üçün analitikadan istifadə edilə bilər.';

  @override
  String get quranRecitation => 'Quran tilavəti';

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
  String get rabiAlAwwal => 'Rəbiüləvvəl';

  @override
  String get rabiAlThani => 'Rəbiülaxır';

  @override
  String get rateApp => 'Tətbiqi qiymətləndir';

  @override
  String get rateQuranPro => 'Quran Pro-nu qiymətləndir';

  @override
  String get readListen => 'Oxu və dinlə';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Quranı gözəl tilavətlərlə oxuyun.';

  @override
  String get recent => 'Sonuncular';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo və Huawei üçün tövsiyə olunur';

  @override
  String get redCarnelian => 'Qırmızı əqiq';

  @override
  String get remindMeAt => 'Xatırlatma vaxtı';

  @override
  String get removeAds => 'Reklamları sil';

  @override
  String get requestingLocationPermission => 'Məkan icazəsi istənilir...';

  @override
  String get reset => 'Sıfırla';

  @override
  String get retry => 'Yenidən cəhd et';

  @override
  String get returnToCompass => 'Kompasa qayıt';

  @override
  String get s => 'C';

  @override
  String get save => 'Yadda saxla';

  @override
  String get saveGoal => 'Hədəfi saxla';

  @override
  String get searchSurahNumberArabic => 'Surə, nömrə, ərəbcə axtar...';

  @override
  String get searchSurah => 'Surə axtar...';

  @override
  String get selectLanguage => 'Dil seçin';

  @override
  String get selectTheThemeYouLike => 'Bəyəndiyiniz mövzunu seçin';

  @override
  String get selectYourBead => 'Muncuğunuzu seçin';

  @override
  String get shop => 'Mağaza';

  @override
  String get shopCustomization => 'Mağaza və fərdiləşdirmə';

  @override
  String get sound => 'Səs';

  @override
  String get south => 'Cənub';

  @override
  String get southeast => 'Cənub-şərq';

  @override
  String get southwest => 'Cənub-qərb';

  @override
  String get specialOccasionsAndMore => 'Xüsusi günlər və daha çoxu';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Mağaza qiymətləndirməsi məhsul səhifəsi hazır olduqda qoşulacaq.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'GÜN BATIMI';

  @override
  String get supportQuranProOnTheStore => 'Quran Pro-nu mağazada dəstəkləyin';

  @override
  String get surah => 'Surə';

  @override
  String get tasbih => 'Təsbeh';

  @override
  String get tasbihSettings => 'Təsbeh ayarları';

  @override
  String get tellUsWhatToImprove => 'Nəyi yaxşılaşdıraq, bizə bildirin';

  @override
  String get termsOfUse => 'İstifadə şərtləri';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro-dan istifadə etdiyiniz üçün təşəkkür edirik. Mağaza qiymətləndirməsi məhsul səhifəsi hazır olduqda qoşulacaq.';

  @override
  String get thereIsNoDeityExceptAllah => 'Allahdan başqa ilah yoxdur';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Güc və qüvvət yalnız Allahdandır';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Bu, xatırlatmaları fərdiləşdirməyə və irəliləyişinizi izləməyə kömək edir.';

  @override
  String get tigerSEye => 'Pələng gözü';

  @override
  String get today => 'Bu gün';

  @override
  String get total => 'Ümumi';

  @override
  String get totalHasanat => 'ÜMUMİ HƏSƏNAT';

  @override
  String get trackProgress => 'İrəliləyişi izlə';

  @override
  String get trackYourReadingAndAchievements =>
      'Oxumanızı və nailiyyətlərinizi izləyin.';

  @override
  String get tryAgain => 'Yenidən cəhd edin';

  @override
  String get undo => 'Geri qaytar';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Bütün tətbiq mövzularının və fərdiləşdirmələrin kilidini açın';

  @override
  String get usageGuidelines => 'İstifadə qaydaları';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro-dan şəxsi ibadət, öyrənmə və gündəlik İslami vərdişlər üçün hörmətlə istifadə edin.';

  @override
  String get viewAll => 'Hamısına bax';

  @override
  String get w => 'Qb';

  @override
  String get welcome => 'Xoş gəldiniz';

  @override
  String get west => 'Qərb';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Hər şey hazırdır!';

  @override
  String get yourProgress => 'İrəliləyişiniz';

  @override
  String get continueLabel => 'Davam et';

  @override
  String get amethyst => 'Ametist';

  @override
  String get indonesian => 'İndoneziya dili';

  @override
  String get turkish => 'Türk dili';

  @override
  String get vietnamese => 'Vyetnam dili';

  @override
  String get turquoise => 'Firuzə';

  @override
  String get wood => 'Ağac';

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
  String get estimatedLocation => 'Təxmini məkan';
}
