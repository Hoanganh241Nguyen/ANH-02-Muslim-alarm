// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get week => 'Hafta';

  @override
  String get month => 'Ay';

  @override
  String get lifetime => 'Ömür boyu';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'İşine kısa bir ara ver ve Allah için zaman ayır.';

  @override
  String get prayerAlarmDefaultName => 'Namaz';

  @override
  String productUnavailable(Object id) {
    return '$id ürünü satın alma için mevcut değil.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId satın alımı başarılı!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId satın alımı geri yüklendi!';
  }

  @override
  String daysCount(Object count) {
    return '$count Gün';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'SIRADAKİ: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Mekke’ye uzaklık: $distance Km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes dakika sonra hatırlat';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName namazı vakti geldi';
  }

  @override
  String roundValue(Object round) {
    return 'Tur: $round';
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
    return 'Sayfa $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizip $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: Ayet $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count ayet';
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
    return 'SEVİYE $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Bakara Suresi 2:238)';

  @override
  String get text1juz => '1 Cüz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 sayfa';

  @override
  String get text100dhikr => '100 Zikir';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 sayfa';

  @override
  String get text28cclearsky => '28°C - Açık Hava';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 sayfa';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Hakkında';

  @override
  String get aboutQuranPro => 'Quran Pro Hakkında';

  @override
  String get activity => 'Etkinlik';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Reklam yükleniyor. Lütfen biraz sonra tekrar dene.';

  @override
  String get addCustomDhikr => 'Özel zikir ekle';

  @override
  String get addCustomDhikr2 => 'Özel Zikir Ekle';

  @override
  String get addDhikr => 'Zikir Ekle';

  @override
  String get adjustPosition => 'KONUMU AYARLA';

  @override
  String get afternoon => 'ÖĞLEDEN SONRA';

  @override
  String get alMasjidAlHaram => 'Mescid-i Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'KIBLEYE HİZALI';

  @override
  String get allPraiseIsDueToAllah => 'Hamd Allah’a mahsustur';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Tüm premium özellikler indirimli fiyatla';

  @override
  String get allInOneQuranApp => 'Hepsi bir arada Quran uygulaması';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah bana yeter; O’ndan başka ilah yoktur';

  @override
  String get allahIsTheGreatest => 'Allah en büyüktür';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Konum izni ver veya yedek takvimi kullanmak için tekrar dene.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Namaz vakitleri ve günlük hatırlatmalar için bildirimlere izin ver.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Uygulamanın arka planda çalışmasına izin ver';

  @override
  String get app => 'Uygulama';

  @override
  String get arabic => 'Arapça';

  @override
  String get asr => 'İkindi';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'Ort.';

  @override
  String get ayah => 'Ayet';

  @override
  String get batteryOptimization => 'Pil Optimizasyonu';

  @override
  String get beautifulWidgets => 'Güzel Widgetlar';

  @override
  String get bestValue => 'EN İYİ DEĞER';

  @override
  String get blackOnyx => 'Siyah Oniks';

  @override
  String get bookmarks => 'Yer İşaretleri';

  @override
  String get brightIvoryInterface => 'Aydınlık fildişi arayüz';

  @override
  String get calculatingDistance => 'Mesafe hesaplanıyor...';

  @override
  String get calibrateYourDirection => 'Yönünü kalibre et';

  @override
  String get cancel => 'İptal';

  @override
  String get change => 'Değiştir';

  @override
  String get changeTasbihMode => 'Tasbih modu değişsin mi?';

  @override
  String get chooseDhikr => 'Zikir Seç';

  @override
  String get chooseDisplayLanguage => 'Görüntüleme dilini seç';

  @override
  String get chooseTheme => 'Tema Seç';

  @override
  String get chooseYourPreferredLanguage => 'Tercih ettiğin dili seç';

  @override
  String get clickOrSwipeToCount => 'Saymak için dokun veya kaydır';

  @override
  String get close => 'Kapat';

  @override
  String get closeCustomGoal => 'Özel hedefi kapat';

  @override
  String get completeAtLeast33Dhikr => 'En az 33 zikir tamamla';

  @override
  String get connectYourHeartWithTheHolyQuran => 'Kalbini Kur’an ile bağla.';

  @override
  String get continueReading => 'Okumaya Devam Et';

  @override
  String get countsPerRound => 'Tur başına sayım';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Koleksiyonunu usta işi manevi taşlarla oluştur.';

  @override
  String get current => 'GEÇERLİ';

  @override
  String get current2 => 'Geçerli';

  @override
  String get currentLocationToMecca => 'Mevcut konumdan Mekke’ye';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Mevcut ilerleme yeni mod için sıfırlanacak.';

  @override
  String get currentStreak => 'Mevcut Seri';

  @override
  String get custom => 'Özel';

  @override
  String get customDhikr => 'Özel zikir';

  @override
  String get customGoal => 'Özel Hedef';

  @override
  String get customPrayerSounds => 'Özel Namaz Sesleri';

  @override
  String get dailyGoal => 'Günlük Hedef';

  @override
  String get dailyQuests => 'Günlük Görevler';

  @override
  String get dailyQuranReminder => 'Günlük Quran hatırlatıcısı';

  @override
  String get dailyReminders => 'Günlük Hatırlatmalar';

  @override
  String get dailyTasbih => 'Günlük Tasbih';

  @override
  String get dark => 'Koyu';

  @override
  String get dawn => 'ŞAFAK';

  @override
  String get debug => 'Hata Ayıklama';

  @override
  String get dhikr => 'Zikir';

  @override
  String get dhikrActivity => 'Zikir etkinliği';

  @override
  String get dhuAlHijjah => 'Zilhicce';

  @override
  String get dhuAlQadah => 'Zilkade';

  @override
  String get dhuhr => 'Öğle';

  @override
  String get direction => 'YÖN';

  @override
  String get disableBatteryOptimization => 'Pil Optimizasyonunu Kapat';

  @override
  String get disableOptimization => 'OPTİMİZASYONU KAPAT';

  @override
  String get distance => 'MESAFE';

  @override
  String get e => 'D';

  @override
  String get eGHasbunallah => 'örn. HasbunAllah';

  @override
  String get east => 'Doğu';

  @override
  String get enableAutoStart => 'Otomatik başlatmayı aç';

  @override
  String get enableNotifications => 'Bildirimleri Aç';

  @override
  String get enableReminders => 'Hatırlatmaları Aç';

  @override
  String get english => 'İngilizce';

  @override
  String get enterYourName => 'Adını gir';

  @override
  String get equipped => 'KULLANILIYOR';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Daha iyi bir Quran deneyimi için ihtiyacın olan her şey.';

  @override
  String get fajr => 'Sabah';

  @override
  String get feedback => 'Geri Bildirim';

  @override
  String get first => 'İlk';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'En doğru sonuç için telefonunu düz tut ve manyetik nesnelerden uzak tut.';

  @override
  String get free => 'Ücretsiz';

  @override
  String get fullBundle => 'Tam Paket';

  @override
  String get getAnAdFreeExperienceForever => 'Sonsuza kadar reklamsız deneyim';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Okumayı hatırla ve düzenli kal.';

  @override
  String get getStarted => 'Başla';

  @override
  String get gloryAndPraiseBeToAllah => 'Allah’ı hamd ile tesbih ederim';

  @override
  String get gloryBeToAllah => 'Allah’ı tesbih ederim';

  @override
  String get gloryBeToAllahTheMagnificent => 'Yüce Allah’ı tesbih ederim';

  @override
  String get goToHome => 'Ana Sayfaya Git';

  @override
  String get goldenEngraved => 'Altın İşlemeli';

  @override
  String get greenJade => 'Yeşil Yeşim';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hanoi, Vietnam';

  @override
  String get haptic => 'Titreşim';

  @override
  String get hasanatHub => 'Hasenat Merkezi';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get howYourDataIsHandled => 'Verilerin nasıl işlenir';

  @override
  String get iSeekForgivenessFromAllah => 'Allah’tan bağışlanma dilerim';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Kovulmuş şeytandan Allah’a sığınırım';

  @override
  String get immediateAlerts => 'Anında uyarılar';

  @override
  String get inTheNameOfAllah => 'Allah’ın adıyla';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Biz şüphesiz Allah’a aitiz ve O’na döneceğiz';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Yatsı';

  @override
  String get jumadaAlAwwal => 'Cemaziyelevvel';

  @override
  String get jumadaAlThani => 'Cemaziyelahir';

  @override
  String get juz => 'CÜZ';

  @override
  String get juz2 => 'Cüz';

  @override
  String get keepAdhanAlarmsReliable => 'Ezan alarmlarını güvenilir tut';

  @override
  String get keepItUpYouReDoingGreat => 'Böyle devam et! Harika gidiyorsun.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Uygulama kapalıyken bile ezan bildirimleri güvenilir kalsın.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Dil';

  @override
  String get lapisLazuli => 'Lapis Lazuli';

  @override
  String get last7Days => 'Son 7 Gün';

  @override
  String get later => 'SONRA';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Quran ile güzel yolculuğuna başlayalım.';

  @override
  String get letSPersonalizeYourExperience => 'Deneyimini\nkişiselleştirelim';

  @override
  String get light => 'Açık';

  @override
  String get lightMode => 'Açık Mod';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Bugün istediğin Ayeti dinle veya oku';

  @override
  String get locating => 'Konum alınıyor...';

  @override
  String get location => 'Konum';

  @override
  String get locationPermissionsAreDenied => 'Konum izinleri reddedildi';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Konum izinleri kalıcı olarak reddedildi.';

  @override
  String get locationServicesAreDisabled => 'Konum servisleri kapalı.';

  @override
  String get longestStreak => 'En uzun seri';

  @override
  String get maghrib => 'Akşam';

  @override
  String get maybeLater => 'Belki sonra';

  @override
  String get meccaSaudiArabia => 'Mekke, Suudi Arabistan';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => 'Rabbim, bağışla ve merhamet et';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Rabbim, bana indireceğin her hayra muhtacım';

  @override
  String get myLordIncreaseMeInKnowledge => 'Rabbim, ilmimi artır';

  @override
  String get myLordMakeItEasyAndDoNot => 'Rabbim, kolaylaştır ve zorlaştırma';

  @override
  String get n => 'K';

  @override
  String get nameOptional => 'Ad (İsteğe bağlı)';

  @override
  String get next => 'İleri';

  @override
  String get nextDhikr => 'Sonraki zikir';

  @override
  String get nextPrayer => 'SONRAKİ NAMAZ';

  @override
  String get night => 'GECE';

  @override
  String get nightEmeraldInterface => 'Gece zümrüt arayüz';

  @override
  String get noBookmarksYet => 'Henüz yer işareti yok';

  @override
  String get noon => 'ÖĞLE';

  @override
  String get north => 'Kuzey';

  @override
  String get northeast => 'Kuzeydoğu';

  @override
  String get northwest => 'Kuzeybatı';

  @override
  String get notificationsAlarm => 'Bildirimler & Alarm';

  @override
  String get notificationsForPrayerTimes => 'Namaz vakitleri için bildirimler';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Allah’ım, Muhammed’e salât eyle';

  @override
  String get oEverLivingOSustainer => 'Ey Hayy olan, ey Kayyûm olan';

  @override
  String get openAutoStart => 'OTOMATİK BAŞLATMAYI AÇ';

  @override
  String get optimizeAdhanPerformance => 'Ezan Performansını Optimize Et';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Rabbimiz, bize bu dünyada iyilik ver';

  @override
  String get page => 'SAYFA';

  @override
  String get pearl => 'İnci';

  @override
  String get personalizeYourAdhanNotifications =>
      'Ezan bildirimlerini kişiselleştir';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Hamd, âlemlerin Rabbi olan Allah’a mahsustur';

  @override
  String get prayerAlarms => 'Namaz Alarmları';

  @override
  String get prayerSchedule => 'Namaz Takvimi';

  @override
  String get prayerTimeNotifications => 'Namaz vakti bildirimleri';

  @override
  String get prayerTimesAreLoading => 'Namaz vakitleri yükleniyor';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Namaz Vakitleri, Kıble, Kur’an okuma ve Tesbih tek bir günlük yardımcıda.';

  @override
  String get prayerQuranQibla => 'NAMAZ • KUR’AN • KIBLE';

  @override
  String get premiumThemes => 'Premium Temalar';

  @override
  String get preparingYourSpiritualJourney =>
      'Manevi yolculuğun hazırlanıyor...';

  @override
  String get previousDhikr => 'Önceki zikir';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get qibla => 'Kıble';

  @override
  String get qiblaFinder => 'Kıble Bulucu';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'Kur’an';

  @override
  String get quranPlayback => 'Kur’an Çalma';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro; Namaz Vakitleri, Kıble, Kur’an okuma ve Tesbih’i tek bir basit günlük yardımcıda birleştirir.';

  @override
  String get quranProPreferences => 'Quran Pro tercihleri';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro, tanıtım ve ilerleme tercihlerini bu cihazda yerel olarak saklar. Kararlılığı ve kaliteyi geliştirmek için analitik kullanılabilir.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro, Tesbih ilerlemeni bu cihazda yerel olarak saklar. Uygulama kararlılığını ve ürün kalitesini geliştirmek için analitik kullanılabilir.';

  @override
  String get quranRecitation => 'Quran Tilaveti';

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
  String get rabiAlAwwal => 'Rebiülevvel';

  @override
  String get rabiAlThani => 'Rebiülahir';

  @override
  String get rateApp => 'Uygulamayı değerlendir';

  @override
  String get rateQuranPro => 'Quran Pro’yu değerlendir';

  @override
  String get readListen => 'Oku & Dinle';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Kur’an’ı güzel tilavetlerle oku.';

  @override
  String get recent => 'Son';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo ve Huawei için önerilir';

  @override
  String get redCarnelian => 'Kırmızı Akik';

  @override
  String get remindMeAt => 'Bana Şu Saatte Hatırlat';

  @override
  String get removeAds => 'Reklamları Kaldır';

  @override
  String get requestingLocationPermission => 'Konum izni isteniyor...';

  @override
  String get reset => 'Sıfırla';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get returnToCompass => 'Pusulaya Dön';

  @override
  String get s => 'G';

  @override
  String get save => 'Kaydet';

  @override
  String get saveGoal => 'Hedefi Kaydet';

  @override
  String get searchSurahNumberArabic => 'Sure, numara, Arapça ara...';

  @override
  String get searchSurah => 'Sure ara...';

  @override
  String get selectLanguage => 'Dil Seç';

  @override
  String get selectTheThemeYouLike => 'Beğendiğin temayı seç';

  @override
  String get selectYourBead => 'Maniğini Seç';

  @override
  String get shop => 'Mağaza';

  @override
  String get shopCustomization => 'Mağaza & Kişiselleştirme';

  @override
  String get sound => 'Ses';

  @override
  String get south => 'Güney';

  @override
  String get southeast => 'Güneydoğu';

  @override
  String get southwest => 'Güneybatı';

  @override
  String get specialOccasionsAndMore => 'Özel günler ve daha fazlası';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Mağaza değerlendirmesi, yayın listelemesi hazır olduğunda bağlanacak.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'GÜN BATIMI';

  @override
  String get supportQuranProOnTheStore => 'Quran Pro’yu mağazada destekle';

  @override
  String get surah => 'Sure';

  @override
  String get tasbih => 'Tesbih';

  @override
  String get tasbihSettings => 'Tesbih Ayarları';

  @override
  String get tellUsWhatToImprove => 'Neyi geliştirelim bize söyle';

  @override
  String get termsOfUse => 'Kullanım Şartları';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro’yu kullandığın için teşekkürler. Mağaza değerlendirmesi, yayın mağaza listelemesi hazır olduğunda bağlanacak.';

  @override
  String get thereIsNoDeityExceptAllah => 'Allah’tan başka ilah yoktur';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Güç ve kuvvet ancak Allah iledir';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Bu, hatırlatmaları kişiselleştirmemize ve ilerlemeni takip etmemize yardımcı olur.';

  @override
  String get tigerSEye => 'Kaplan Gözü';

  @override
  String get today => 'Bugün';

  @override
  String get total => 'Toplam';

  @override
  String get totalHasanat => 'TOPLAM HASENAT';

  @override
  String get trackProgress => 'İlerlemeyi Takip Et';

  @override
  String get trackYourReadingAndAchievements =>
      'Okumalarını ve başarılarını takip et.';

  @override
  String get tryAgain => 'Tekrar Dene';

  @override
  String get undo => 'Geri Al';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Tüm uygulama temalarının ve kişiselleştirmelerin kilidini aç';

  @override
  String get usageGuidelines => 'Kullanım kuralları';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro’yu kişisel ibadet, öğrenme ve günlük İslami rutinlerin için saygıyla kullan.';

  @override
  String get viewAll => 'Tümünü Gör';

  @override
  String get w => 'B';

  @override
  String get welcome => 'Hoş Geldin';

  @override
  String get west => 'Batı';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Hazırsın!';

  @override
  String get yourProgress => 'İlerlemen';

  @override
  String get continueLabel => 'Devam Et';

  @override
  String get amethyst => 'Ametist';

  @override
  String get indonesian => 'Endonezce';

  @override
  String get turkish => 'Türkçe';

  @override
  String get vietnamese => 'Vietnamca';

  @override
  String get turquoise => 'Turkuaz';

  @override
  String get wood => 'Ahşap';

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
  String get estimatedLocation => 'Tahmini konum';
}
