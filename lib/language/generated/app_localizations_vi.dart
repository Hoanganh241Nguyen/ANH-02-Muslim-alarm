// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get week => 'Tuần';

  @override
  String get month => 'Tháng';

  @override
  String get lifetime => 'Trọn đời';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote =>
      'Hãy tạm dừng công việc và dành thời gian cho Allah.';

  @override
  String get prayerAlarmDefaultName => 'Cầu nguyện';

  @override
  String productUnavailable(Object id) {
    return 'Sản phẩm $id hiện không thể mua.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return 'Mua $productId thành công!';
  }

  @override
  String purchaseRestored(Object productId) {
    return 'Đã khôi phục giao dịch mua $productId!';
  }

  @override
  String daysCount(Object count) {
    return '$count ngày';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'SẮP TỚI: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'Khoảng cách tới Mecca: $distance Km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return 'Nhắc tôi sau $minutes phút';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return 'Đã đến giờ cầu nguyện $prayerName';
  }

  @override
  String roundValue(Object round) {
    return 'Vòng: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return 'Đã chọn $language';
  }

  @override
  String juzNumber(Object juz) {
    return 'Juz $juz';
  }

  @override
  String pageNumber(Object page) {
    return 'Trang $page';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'Hizb $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: Câu $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count câu';
  }

  @override
  String ayahNo(Object ayah) {
    return 'Ayah số $ayah';
  }

  @override
  String readingProgressAyahCount(Object current, Object total) {
    return '$current/$total ayah';
  }

  @override
  String get selectSurah => 'Chọn Surah';

  @override
  String get meccan => 'MAKKAH';

  @override
  String get medinan => 'MADINAH';

  @override
  String levelNumber(Object level) {
    return 'CẤP $level';
  }

  @override
  String get surahAlBaqarah2238 => '(Surah Al-Baqarah 2:238)';

  @override
  String get text1juz => '1 Juz';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 trang';

  @override
  String get text100dhikr => '100 Dhikr';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 trang';

  @override
  String get text28cclearsky => '28°C - Trời quang';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 trang';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'Giới thiệu';

  @override
  String get aboutQuranPro => 'Giới thiệu Quran Pro';

  @override
  String get activity => 'Hoạt động';

  @override
  String get adIsLoadingPleaseTryAgainSoon =>
      'Quảng cáo đang tải. Vui lòng thử lại sau.';

  @override
  String get addCustomDhikr => 'Thêm dhikr tùy chỉnh';

  @override
  String get addCustomDhikr2 => 'Thêm Dhikr tùy chỉnh';

  @override
  String get addDhikr => 'Thêm Dhikr';

  @override
  String get adjustPosition => 'ĐIỀU CHỈNH VỊ TRÍ';

  @override
  String get afternoon => 'BUỔI CHIỀU';

  @override
  String get alMasjidAlHaram => 'Al-Masjid al-Haram';

  @override
  String get alhamdulillahiRabbilAlamin => 'Alhamdulillahi Rabbil Alamin';

  @override
  String get alignedToQibla => 'ĐÃ CĂN HƯỚNG QIBLA';

  @override
  String get allPraiseIsDueToAllah => 'Mọi lời ca ngợi đều thuộc về Allah';

  @override
  String get allPremiumFeaturesAtADiscountedPrice =>
      'Tất cả tính năng premium với giá ưu đãi';

  @override
  String get allInOneQuranApp => 'Ứng dụng Quran\ntất cả trong một';

  @override
  String get allahIsSufficientForMeThereIsNo =>
      'Allah là đủ cho tôi; không có thượng đế nào ngoài Ngài';

  @override
  String get allahIsTheGreatest => 'Allah là Đấng Vĩ đại nhất';

  @override
  String get allahuAkbar => 'Allahu Akbar';

  @override
  String get allahummaSalliAlaMuhammad => 'Allahumma salli ala Muhammad';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      'Cho phép vị trí hoặc nhấn thử lại để dùng lịch dự phòng.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      'Cho phép thông báo để nhận giờ cầu nguyện và nhắc nhở hằng ngày.';

  @override
  String get allowTheAppToRunInTheBackground =>
      'Cho phép ứng dụng chạy trong nền';

  @override
  String get app => 'Ứng dụng';

  @override
  String get arabic => 'Tiếng Ả Rập';

  @override
  String get asr => 'Asr';

  @override
  String get auzuBillahiMinAshShaytanirRajim =>
      'Auzu billahi min ash-shaytanir rajim';

  @override
  String get avg => 'TB';

  @override
  String get ayah => 'Ayah';

  @override
  String get batteryOptimization => 'Tối ưu pin';

  @override
  String get beautifulWidgets => 'Widget đẹp';

  @override
  String get bestValue => 'GIÁ TỐT NHẤT';

  @override
  String get blackOnyx => 'Onyx đen';

  @override
  String get bookmarks => 'Đánh dấu';

  @override
  String get brightIvoryInterface => 'Giao diện sáng màu ngà';

  @override
  String get calculatingDistance => 'Đang tính khoảng cách...';

  @override
  String get calibrateYourDirection => 'Hiệu chỉnh hướng của bạn';

  @override
  String get cancel => 'Hủy';

  @override
  String get change => 'Đổi';

  @override
  String get changeTasbihMode => 'Đổi chế độ Tasbih?';

  @override
  String get chooseDhikr => 'Chọn Dhikr';

  @override
  String get chooseDisplayLanguage => 'Chọn ngôn ngữ hiển thị';

  @override
  String get chooseTheme => 'Chọn giao diện';

  @override
  String get chooseYourPreferredLanguage => 'Chọn ngôn ngữ bạn muốn';

  @override
  String get clickOrSwipeToCount => 'Nhấn hoặc vuốt để đếm';

  @override
  String get close => 'Đóng';

  @override
  String get closeCustomGoal => 'Đóng mục tiêu tùy chỉnh';

  @override
  String get completeAtLeast33Dhikr => 'Hoàn thành ít nhất 33 dhikr';

  @override
  String get connectYourHeartWithTheHolyQuran =>
      'Kết nối trái tim bạn với Kinh Quran.';

  @override
  String get continueReading => 'Đọc tiếp';

  @override
  String get countsPerRound => 'Số lần mỗi vòng';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      'Tạo bộ sưu tập hạt tâm linh được chế tác tinh tế.';

  @override
  String get current => 'HIỆN TẠI';

  @override
  String get current2 => 'Hiện tại';

  @override
  String get currentLocationToMecca => 'Vị trí hiện tại tới Mecca';

  @override
  String get currentProgressWillResetForTheNewMode =>
      'Tiến độ hiện tại sẽ được đặt lại cho chế độ mới.';

  @override
  String get currentStreak => 'Chuỗi hiện tại';

  @override
  String get custom => 'Tùy chỉnh';

  @override
  String get customDhikr => 'Dhikr tùy chỉnh';

  @override
  String get customGoal => 'Mục tiêu tùy chỉnh';

  @override
  String get customPrayerSounds => 'Âm thanh cầu nguyện tùy chỉnh';

  @override
  String get dailyGoal => 'Mục tiêu hằng ngày';

  @override
  String get dailyQuests => 'Nhiệm vụ hằng ngày';

  @override
  String get dailyQuranReminder => 'Nhắc đọc Quran hằng ngày';

  @override
  String get dailyReminders => 'Nhắc nhở hằng ngày';

  @override
  String get dailyTasbih => 'Tasbih hằng ngày';

  @override
  String get dark => 'Tối';

  @override
  String get dawn => 'BÌNH MINH';

  @override
  String get debug => 'Gỡ lỗi';

  @override
  String get dhikr => 'Dhikr';

  @override
  String get dhikrActivity => 'Hoạt động dhikr';

  @override
  String get dhuAlHijjah => 'Dhu Al-Hijjah';

  @override
  String get dhuAlQadah => 'Dhu Al-Qadah';

  @override
  String get dhuhr => 'Dhuhr';

  @override
  String get direction => 'HƯỚNG';

  @override
  String get disableBatteryOptimization => 'Tắt tối ưu pin';

  @override
  String get disableOptimization => 'TẮT TỐI ƯU';

  @override
  String get distance => 'KHOẢNG CÁCH';

  @override
  String get e => 'Đ';

  @override
  String get eGHasbunallah => 'ví dụ: HasbunAllah';

  @override
  String get east => 'Đông';

  @override
  String get enableAutoStart => 'Bật tự khởi động';

  @override
  String get enableNotifications => 'Bật thông báo';

  @override
  String get enableReminders => 'Bật nhắc nhở';

  @override
  String get english => 'Tiếng Anh';

  @override
  String get enterYourName => 'Nhập tên của bạn';

  @override
  String get equipped => 'ĐANG DÙNG';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'Mọi thứ bạn cần cho trải nghiệm Quran tốt hơn.';

  @override
  String get fajr => 'Fajr';

  @override
  String get feedback => 'Phản hồi';

  @override
  String get first => 'Đầu tiên';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      'Để kết quả chính xác nhất, hãy giữ điện thoại nằm phẳng và tránh xa vật có từ tính.';

  @override
  String get free => 'Miễn phí';

  @override
  String get fullBundle => 'Gói đầy đủ';

  @override
  String get getAnAdFreeExperienceForever =>
      'Trải nghiệm không quảng cáo mãi mãi';

  @override
  String get getRemindedToReadAndStayConsistent =>
      'Nhận nhắc nhở để đọc và duy trì đều đặn.';

  @override
  String get getStarted => 'Bắt đầu';

  @override
  String get gloryAndPraiseBeToAllah => 'Vinh quang và ca ngợi thuộc về Allah';

  @override
  String get gloryBeToAllah => 'Vinh quang thuộc về Allah';

  @override
  String get gloryBeToAllahTheMagnificent =>
      'Vinh quang thuộc về Allah, Đấng Vĩ Đại';

  @override
  String get goToHome => 'Về trang chủ';

  @override
  String get goldenEngraved => 'Khắc vàng';

  @override
  String get greenJade => 'Ngọc bích xanh';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'Hà Nội, Việt Nam';

  @override
  String get haptic => 'Rung';

  @override
  String get hasanatHub => 'Trung tâm Hasanat';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'Hasbiyallahu la ilaha illa Huwa';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'Trang chủ';

  @override
  String get howYourDataIsHandled => 'Cách dữ liệu của bạn được xử lý';

  @override
  String get iSeekForgivenessFromAllah => 'Tôi cầu xin Allah tha thứ';

  @override
  String get iSeekRefugeInAllahFromTheAccursed =>
      'Tôi cầu Allah che chở khỏi Shaytan bị nguyền rủa';

  @override
  String get immediateAlerts => 'Cảnh báo tức thì';

  @override
  String get inTheNameOfAllah => 'Nhân danh Allah';

  @override
  String get indeedWeBelongToAllahAndToHim =>
      'Quả thật chúng ta thuộc về Allah và sẽ trở về với Ngài';

  @override
  String get innaLillahiWaInnaIlayhiRajiun =>
      'Inna lillahi wa inna ilayhi rajiun';

  @override
  String get isha => 'Isha';

  @override
  String get jumadaAlAwwal => 'Jumada Al-Awwal';

  @override
  String get jumadaAlThani => 'Jumada Al-Thani';

  @override
  String get juz => 'JUZ';

  @override
  String get juz2 => 'Juz';

  @override
  String get keepAdhanAlarmsReliable => 'Giữ báo thức adhan ổn định';

  @override
  String get keepItUpYouReDoingGreat => 'Tiếp tục nhé! Bạn đang làm rất tốt.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'Giữ lời gọi cầu nguyện ổn định ngay cả khi app đã đóng.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah =>
      'La hawla wa la quwwata illa billah';

  @override
  String get laIlahaIllallah => 'La ilaha illallah';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get lapisLazuli => 'Ngọc lưu ly';

  @override
  String get last7Days => '7 ngày gần nhất';

  @override
  String get later => 'ĐỂ SAU';

  @override
  String get letSBeginYourBeautifulJourneyWithThe =>
      'Hãy bắt đầu hành trình đẹp cùng Quran.';

  @override
  String get letSPersonalizeYourExperience =>
      'Hãy cá nhân hóa\ntrải nghiệm của bạn';

  @override
  String get light => 'Sáng';

  @override
  String get lightMode => 'Chế độ sáng';

  @override
  String get listenToOrReadAnyAyahToday =>
      'Nghe hoặc đọc bất kỳ Ayah nào hôm nay';

  @override
  String get locating => 'Đang định vị...';

  @override
  String get location => 'Vị trí';

  @override
  String get locationPermissionsAreDenied => 'Quyền vị trí bị từ chối';

  @override
  String get locationPermissionsArePermanentlyDenied =>
      'Quyền vị trí bị từ chối vĩnh viễn.';

  @override
  String get locationServicesAreDisabled => 'Dịch vụ vị trí đang tắt.';

  @override
  String get longestStreak => 'Chuỗi dài nhất';

  @override
  String get maghrib => 'Maghrib';

  @override
  String get maybeLater => 'Có thể để sau';

  @override
  String get meccaSaudiArabia => 'Mecca, Ả Rập Xê Út';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy =>
      'Lạy Thượng Đế của con, xin tha thứ và xót thương';

  @override
  String get myLordIAmInNeedOfWhatever =>
      'Lạy Thượng Đế của con, con cần mọi điều tốt lành Ngài ban xuống';

  @override
  String get myLordIncreaseMeInKnowledge =>
      'Lạy Thượng Đế của con, xin ban thêm cho con kiến thức';

  @override
  String get myLordMakeItEasyAndDoNot =>
      'Lạy Thượng Đế của con, xin làm cho dễ dàng, đừng làm khó khăn';

  @override
  String get n => 'B';

  @override
  String get nameOptional => 'Tên (không bắt buộc)';

  @override
  String get next => 'Tiếp';

  @override
  String get nextDhikr => 'Dhikr tiếp theo';

  @override
  String get nextPrayer => 'LỜI CẦU NGUYỆN TIẾP THEO';

  @override
  String get night => 'ĐÊM';

  @override
  String get nightEmeraldInterface => 'Giao diện xanh ngọc ban đêm';

  @override
  String get noBookmarksYet => 'Chưa có đánh dấu';

  @override
  String get noon => 'GIỮA TRƯA';

  @override
  String get north => 'Bắc';

  @override
  String get northeast => 'Đông Bắc';

  @override
  String get northwest => 'Tây Bắc';

  @override
  String get notificationsAlarm => 'Thông báo & Báo thức';

  @override
  String get notificationsForPrayerTimes => 'Thông báo giờ cầu nguyện';

  @override
  String get oAllahSendBlessingsUponMuhammad =>
      'Lạy Allah, xin ban phúc lành cho Muhammad';

  @override
  String get oEverLivingOSustainer => 'Hỡi Đấng Hằng Sống, Hỡi Đấng Duy Trì';

  @override
  String get openAutoStart => 'MỞ TỰ KHỞI ĐỘNG';

  @override
  String get optimizeAdhanPerformance => 'Tối ưu hiệu suất Adhan';

  @override
  String get ourLordGrantUsGoodInThisWorld =>
      'Lạy Thượng Đế của chúng con, xin ban điều tốt lành ở đời này';

  @override
  String get page => 'TRANG';

  @override
  String get pearl => 'Ngọc trai';

  @override
  String get personalizeYourAdhanNotifications => 'Cá nhân hóa thông báo Adhan';

  @override
  String get praiseBeToAllahLordOfTheWorlds =>
      'Ca ngợi Allah, Thượng Đế của vũ trụ';

  @override
  String get prayerAlarms => 'Báo thức cầu nguyện';

  @override
  String get prayerSchedule => 'Lịch cầu nguyện';

  @override
  String get prayerTimeNotifications => 'Thông báo giờ cầu nguyện';

  @override
  String get prayerTimesAreLoading => 'Đang tải giờ cầu nguyện';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      'Giờ cầu nguyện, Qibla, đọc Quran và Tasbih trong một app hằng ngày.';

  @override
  String get prayerQuranQibla => 'CẦU NGUYỆN • QURAN • QIBLA';

  @override
  String get premiumThemes => 'Giao diện Premium';

  @override
  String get preparingYourSpiritualJourney =>
      'Đang chuẩn bị hành trình tâm linh...';

  @override
  String get previousDhikr => 'Dhikr trước';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get qibla => 'Qibla';

  @override
  String get qiblaFinder => 'Tìm hướng Qibla';

  @override
  String get qiblaMap => 'Bản đồ Qibla';

  @override
  String get quran => 'Quran';

  @override
  String get quranPlayback => 'Phát Quran';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro mang giờ cầu nguyện, Qibla, đọc Quran và Tasbih vào một app đồng hành hằng ngày.';

  @override
  String get quranProPreferences => 'Tùy chọn Quran Pro';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro lưu tùy chọn khởi tạo và tiến độ ngay trên thiết bị này. Dữ liệu phân tích có thể được dùng để cải thiện độ ổn định và chất lượng.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro lưu tiến độ Tasbih của bạn ngay trên thiết bị này. Dữ liệu phân tích có thể được dùng để cải thiện độ ổn định và chất lượng sản phẩm.';

  @override
  String get quranRecitation => 'Tụng Quran';

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
  String get rabiAlAwwal => 'Rabi Al-Awwal';

  @override
  String get rabiAlThani => 'Rabi Al-Thani';

  @override
  String get rateApp => 'Đánh giá app';

  @override
  String get rateQuranPro => 'Đánh giá Quran Pro';

  @override
  String get readListen => 'Đọc & Nghe';

  @override
  String get readTheQuranWithBeautifulRecitations =>
      'Đọc Quran với các giọng tụng tuyệt đẹp.';

  @override
  String get recent => 'Gần đây';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Khuyến nghị cho Xiaomi, Oppo, Vivo và Huawei';

  @override
  String get redCarnelian => 'Mã não đỏ';

  @override
  String get remindMeAt => 'Nhắc tôi lúc';

  @override
  String get removeAds => 'Gỡ quảng cáo';

  @override
  String get requestingLocationPermission => 'Đang yêu cầu quyền vị trí';

  @override
  String get reset => 'Đặt lại';

  @override
  String get retry => 'Thử lại';

  @override
  String get returnToCompass => 'Quay lại la bàn';

  @override
  String get s => 'N';

  @override
  String get save => 'Lưu';

  @override
  String get saveGoal => 'Lưu mục tiêu';

  @override
  String get searchSurahNumberArabic => 'Tìm surah, số, tiếng Ả Rập...';

  @override
  String get searchSurah => 'Tìm Surah...';

  @override
  String get selectLanguage => 'Chọn ngôn ngữ';

  @override
  String get selectTheThemeYouLike => 'Chọn giao diện bạn thích';

  @override
  String get selectYourBead => 'Chọn hạt của bạn';

  @override
  String get shop => 'Cửa hàng';

  @override
  String get shopCustomization => 'Cửa hàng & Tùy chỉnh';

  @override
  String get sound => 'Âm thanh';

  @override
  String get south => 'Nam';

  @override
  String get southeast => 'Đông Nam';

  @override
  String get southwest => 'Tây Nam';

  @override
  String get specialOccasionsAndMore => 'Dịp đặc biệt và hơn thế nữa';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'Đánh giá cửa hàng sẽ được kết nối khi bản phát hành chính thức sẵn sàng.';

  @override
  String get subhanallahiWaBihamdihi => 'SubhanAllahi wa bihamdihi';

  @override
  String get subhanallahilAzim => 'SubhanAllahil Azim';

  @override
  String get sunset => 'HOÀNG HÔN';

  @override
  String get supportQuranProOnTheStore => 'Ủng hộ Quran Pro trên cửa hàng';

  @override
  String get surah => 'Surah';

  @override
  String get tasbih => 'Tasbih';

  @override
  String get tasbihSettings => 'Cài đặt Tasbih';

  @override
  String get tellUsWhatToImprove => 'Cho chúng tôi biết cần cải thiện gì';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Cảm ơn bạn đã dùng Quran Pro. Đánh giá cửa hàng sẽ được kết nối khi trang phát hành chính thức sẵn sàng.';

  @override
  String get thereIsNoDeityExceptAllah => 'Không có thượng đế nào ngoài Allah';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      'Không có quyền năng hay sức mạnh nào ngoài Allah';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'Điều này giúp chúng tôi tùy chỉnh nhắc nhở và theo dõi tiến độ của bạn.';

  @override
  String get tigerSEye => 'Mắt hổ';

  @override
  String get today => 'Hôm nay';

  @override
  String get total => 'Tổng';

  @override
  String get totalHasanat => 'TỔNG HASANAT';

  @override
  String get trackProgress => 'Theo dõi tiến độ';

  @override
  String get trackYourReadingAndAchievements =>
      'Theo dõi việc đọc và thành tựu của bạn.';

  @override
  String get tryAgain => 'Thử lại';

  @override
  String get undo => 'Hoàn tác';

  @override
  String get unlockAllAppThemesAndCustomizations =>
      'Mở khóa toàn bộ giao diện và tùy chỉnh app';

  @override
  String get usageGuidelines => 'Hướng dẫn sử dụng';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Hãy dùng Quran Pro một cách tôn kính cho việc thờ phượng, học tập và nếp sinh hoạt Hồi giáo hằng ngày.';

  @override
  String get viewAll => 'Xem tất cả';

  @override
  String get w => 'T';

  @override
  String get welcome => 'Chào mừng';

  @override
  String get west => 'Tây';

  @override
  String get yaHayyuYaQayyum => 'Ya Hayyu Ya Qayyum';

  @override
  String get youReAllSet => 'Bạn đã sẵn sàng!';

  @override
  String get yourProgress => 'Tiến độ của bạn';

  @override
  String get continueLabel => 'Tiếp tục';

  @override
  String get amethyst => 'Thạch anh tím';

  @override
  String get indonesian => 'Tiếng Indonesia';

  @override
  String get turkish => 'Tiếng Thổ Nhĩ Kỳ';

  @override
  String get vietnamese => 'Tiếng Việt';

  @override
  String get turquoise => 'Ngọc lam';

  @override
  String get wood => 'Gỗ';

  @override
  String get left => 'còn lại';

  @override
  String get stayInspiredOnYourHomeScreen =>
      'Luôn có cảm hứng ngay trên màn hình chính.';

  @override
  String get settings => 'Cài đặt';

  @override
  String get rounds => 'Vòng';

  @override
  String get prayerRemindersFullScreenAlarm =>
      'Nhắc nhở lịch cầu nguyện và báo thức toàn màn hình';

  @override
  String get holyMessage => 'Lời nhắc hôm nay';

  @override
  String get allSettingsInOnePlace => 'Mọi cài đặt của ứng dụng ở một nơi';

  @override
  String get aboutQuranProDescription =>
      'Giờ cầu nguyện, Qibla, đọc Quran và Tasbih trong một ứng dụng.';

  @override
  String get feedbackDescription =>
      'Gửi góp ý tới support@quranpro.app. Ý kiến của bạn giúp cải thiện Giờ cầu nguyện, Quran, Qibla và Tasbih.';

  @override
  String get stopAudio => 'Dừng phát';

  @override
  String get previousAyah => 'Ayah trước';

  @override
  String get nextAyah => 'Ayah sau';

  @override
  String get reminderRing => 'Bật âm thanh';

  @override
  String get reminderVibrate => 'Chỉ rung';

  @override
  String get reminderSilent => 'Tắt';

  @override
  String get darkMode => 'Chế độ tối';

  @override
  String get unlimited => 'Không giới hạn';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get productUnavailableFriendly =>
      'Gói này hiện chưa mua được. Bạn vui lòng thử lại sau.';

  @override
  String get restorePurchases => 'Khôi phục giao dịch';

  @override
  String get calibratingCompass =>
      'Đang hiệu chỉnh… xoay điện thoại theo hình số 8';

  @override
  String get estimatedLocation => 'Vị trí ước tính';
}
