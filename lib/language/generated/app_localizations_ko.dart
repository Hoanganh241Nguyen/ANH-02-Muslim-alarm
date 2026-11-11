// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get week => '주';

  @override
  String get month => '월';

  @override
  String get lifetime => '전체';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote => '잠시 일을 멈추고 알라를 위한 시간을 가지세요.';

  @override
  String get prayerAlarmDefaultName => '예배';

  @override
  String productUnavailable(Object id) {
    return '$id 상품은 구매할 수 없습니다.';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId 구매가 완료되었습니다!';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId 구매가 복원되었습니다!';
  }

  @override
  String daysCount(Object count) {
    return '$count일';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return '다음: $prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return '메카까지 거리: ${distance}km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes분 후에 다시 알림';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName 예배 시간입니다';
  }

  @override
  String roundValue(Object round) {
    return '라운드: $round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language 선택됨';
  }

  @override
  String juzNumber(Object juz) {
    return '주즈 $juz';
  }

  @override
  String pageNumber(Object page) {
    return '$page페이지';
  }

  @override
  String hizbNumber(Object hizb) {
    return '히즈브 $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName: 아야 $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '아야 $count개';
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
    return '레벨 $level';
  }

  @override
  String get surahAlBaqarah2238 => '(수라 알바카라 2:238)';

  @override
  String get text1juz => '주즈 1개';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10페이지';

  @override
  String get text100dhikr => '디크르 100회';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20페이지';

  @override
  String get text28cclearsky => '28°C - 맑음';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5페이지';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => '정보';

  @override
  String get aboutQuranPro => 'Quran Pro 정보';

  @override
  String get activity => '활동';

  @override
  String get adIsLoadingPleaseTryAgainSoon => '광고를 불러오는 중입니다. 잠시 후 다시 시도해 주세요.';

  @override
  String get addCustomDhikr => '커스텀 디크르 추가';

  @override
  String get addCustomDhikr2 => '커스텀 디크르 추가';

  @override
  String get addDhikr => '디크르 추가';

  @override
  String get adjustPosition => '위치 조정';

  @override
  String get afternoon => '오후';

  @override
  String get alMasjidAlHaram => '알마스지드 알하람';

  @override
  String get alhamdulillahiRabbilAlamin => '알함두릴라히 랍빌 알라민';

  @override
  String get alignedToQibla => '키블라 정렬됨';

  @override
  String get allPraiseIsDueToAllah => '모든 찬미는 알라께';

  @override
  String get allPremiumFeaturesAtADiscountedPrice => '모든 프리미엄 기능을 할인된 가격에';

  @override
  String get allInOneQuranApp => '올인원 꾸란 앱';

  @override
  String get allahIsSufficientForMeThereIsNo => '알라께서 나에게 충분하시니, 그분 외에 신은 없습니다';

  @override
  String get allahIsTheGreatest => '알라는 가장 위대하십니다';

  @override
  String get allahuAkbar => '알라후 아크바르';

  @override
  String get allahummaSalliAlaMuhammad => '알라훔마 살리 알라 무함마드';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      '위치 권한을 허용하거나 다시 시도를 눌러 대체 일정을 사용하세요.';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      '예배 시간과 일일 알림을 받으려면 알림을 허용하세요.';

  @override
  String get allowTheAppToRunInTheBackground => '앱의 백그라운드 실행 허용';

  @override
  String get app => '앱';

  @override
  String get arabic => '아랍어';

  @override
  String get asr => '아스르';

  @override
  String get auzuBillahiMinAshShaytanirRajim => '아우주 빌라히 미나쉬 샤이타닛 라짐';

  @override
  String get avg => '평균';

  @override
  String get ayah => '아야';

  @override
  String get batteryOptimization => '배터리 최적화';

  @override
  String get beautifulWidgets => '아름다운 위젯';

  @override
  String get bestValue => '최고 혜택';

  @override
  String get blackOnyx => '블랙 오닉스';

  @override
  String get bookmarks => '북마크';

  @override
  String get brightIvoryInterface => '밝은 아이보리 화면';

  @override
  String get calculatingDistance => '거리 계산 중...';

  @override
  String get calibrateYourDirection => '방향을 보정하세요';

  @override
  String get cancel => '취소';

  @override
  String get change => '변경';

  @override
  String get changeTasbihMode => '타스비흐 모드를 변경할까요?';

  @override
  String get chooseDhikr => '디크르 선택';

  @override
  String get chooseDisplayLanguage => '표시 언어 선택';

  @override
  String get chooseTheme => '테마 선택';

  @override
  String get chooseYourPreferredLanguage => '원하는 언어를 선택하세요';

  @override
  String get clickOrSwipeToCount => '탭하거나 밀어서 세기';

  @override
  String get close => '닫기';

  @override
  String get closeCustomGoal => '커스텀 목표 닫기';

  @override
  String get completeAtLeast33Dhikr => '디크르 33회 이상 완료';

  @override
  String get connectYourHeartWithTheHolyQuran => '성 꾸란과 마음을 이어보세요.';

  @override
  String get continueReading => '이어서 읽기';

  @override
  String get countsPerRound => '라운드당 횟수';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      '장인이 빚은 영적인 보석으로 컬렉션을 채워보세요.';

  @override
  String get current => '현재';

  @override
  String get current2 => '현재';

  @override
  String get currentLocationToMecca => '현재 위치에서 메카까지';

  @override
  String get currentProgressWillResetForTheNewMode =>
      '현재 진행 상황은 새 모드에서 초기화됩니다.';

  @override
  String get currentStreak => '현재 연속 기록';

  @override
  String get custom => '커스텀';

  @override
  String get customDhikr => '커스텀 디크르';

  @override
  String get customGoal => '커스텀 목표';

  @override
  String get customPrayerSounds => '커스텀 예배 알림음';

  @override
  String get dailyGoal => '일일 목표';

  @override
  String get dailyQuests => '일일 퀘스트';

  @override
  String get dailyQuranReminder => '일일 꾸란 알림';

  @override
  String get dailyReminders => '일일 알림';

  @override
  String get dailyTasbih => '일일 타스비흐';

  @override
  String get dark => '다크';

  @override
  String get dawn => '새벽';

  @override
  String get debug => '디버그';

  @override
  String get dhikr => '디크르';

  @override
  String get dhikrActivity => '디크르 활동';

  @override
  String get dhuAlHijjah => '둘 히자';

  @override
  String get dhuAlQadah => '둘 카다';

  @override
  String get dhuhr => '주흐르';

  @override
  String get direction => '방향';

  @override
  String get disableBatteryOptimization => '배터리 최적화 해제';

  @override
  String get disableOptimization => '최적화 해제';

  @override
  String get distance => '거리';

  @override
  String get e => '동';

  @override
  String get eGHasbunallah => '예: 하스분알라';

  @override
  String get east => '동쪽';

  @override
  String get enableAutoStart => '자동 실행 켜기';

  @override
  String get enableNotifications => '알림 켜기';

  @override
  String get enableReminders => '리마인더 켜기';

  @override
  String get english => '영어';

  @override
  String get enterYourName => '이름을 입력하세요';

  @override
  String get equipped => '장착됨';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      '더 나은 꾸란 경험에 필요한 모든 것.';

  @override
  String get fajr => '파즈르';

  @override
  String get feedback => '피드백';

  @override
  String get first => '처음';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      '가장 정확한 결과를 위해 휴대폰을 수평으로 두고 자석이 있는 물건에서 멀리 하세요.';

  @override
  String get free => '무료';

  @override
  String get fullBundle => '전체 번들';

  @override
  String get getAnAdFreeExperienceForever => '광고 없는 환경을 평생 이용하세요';

  @override
  String get getRemindedToReadAndStayConsistent => '알림을 받고 꾸준히 읽어보세요.';

  @override
  String get getStarted => '시작하기';

  @override
  String get gloryAndPraiseBeToAllah => '알라께 영광과 찬미를';

  @override
  String get gloryBeToAllah => '알라께 영광을';

  @override
  String get gloryBeToAllahTheMagnificent => '위대하신 알라께 영광을';

  @override
  String get goToHome => '홈으로';

  @override
  String get goldenEngraved => '골드 각인';

  @override
  String get greenJade => '그린 제이드';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => '하노이, 베트남';

  @override
  String get haptic => '진동';

  @override
  String get hasanatHub => '하사나트 센터';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => '하스비얄라후 라 일라하 일라 후와';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => '홈';

  @override
  String get howYourDataIsHandled => '데이터 처리 방식';

  @override
  String get iSeekForgivenessFromAllah => '알라께 용서를 구합니다';

  @override
  String get iSeekRefugeInAllahFromTheAccursed => '저주받은 샤이탄으로부터 알라께 보호를 구합니다';

  @override
  String get immediateAlerts => '즉시 알림';

  @override
  String get inTheNameOfAllah => '알라의 이름으로';

  @override
  String get indeedWeBelongToAllahAndToHim => '실로 우리는 알라께 속하며 그분께로 돌아갑니다';

  @override
  String get innaLillahiWaInnaIlayhiRajiun => '인나 릴라히 와 인나 일라이히 라지운';

  @override
  String get isha => '이샤';

  @override
  String get jumadaAlAwwal => '주마다 알아우왈';

  @override
  String get jumadaAlThani => '주마다 알사니';

  @override
  String get juz => '주즈';

  @override
  String get juz2 => '주즈';

  @override
  String get keepAdhanAlarmsReliable => '아잔 알람을 안정적으로 유지';

  @override
  String get keepItUpYouReDoingGreat => '계속하세요! 아주 잘하고 있어요.';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      '앱이 종료되어도 아잔을 안정적으로 알려드립니다.';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => '라 하울라 왈라 쿠와타 일라 빌라';

  @override
  String get laIlahaIllallah => '라 일라하 일랄라';

  @override
  String get language => '언어';

  @override
  String get lapisLazuli => '라피스 라줄리';

  @override
  String get last7Days => '최근 7일';

  @override
  String get later => '나중에';

  @override
  String get letSBeginYourBeautifulJourneyWithThe => '꾸란과 함께 아름다운 여정을 시작해요.';

  @override
  String get letSPersonalizeYourExperience => '나에게 맞게\n설정해 볼까요';

  @override
  String get light => '라이트';

  @override
  String get lightMode => '라이트 모드';

  @override
  String get listenToOrReadAnyAyahToday => '오늘 아야를 듣거나 읽기';

  @override
  String get locating => '위치 확인 중...';

  @override
  String get location => '위치';

  @override
  String get locationPermissionsAreDenied => '위치 권한이 거부되었습니다';

  @override
  String get locationPermissionsArePermanentlyDenied => '위치 권한이 영구적으로 거부되었습니다.';

  @override
  String get locationServicesAreDisabled => '위치 서비스가 꺼져 있습니다.';

  @override
  String get longestStreak => '최장 연속 기록';

  @override
  String get maghrib => '마그리브';

  @override
  String get maybeLater => '다음에 하기';

  @override
  String get meccaSaudiArabia => '메카, 사우디아라비아';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => '주여, 용서하시고 자비를 베푸소서';

  @override
  String get myLordIAmInNeedOfWhatever => '주여, 당신이 내리시는 은혜가 저에게 필요합니다';

  @override
  String get myLordIncreaseMeInKnowledge => '주여, 저에게 지식을 더하여 주소서';

  @override
  String get myLordMakeItEasyAndDoNot => '주여, 쉽게 하시고 어렵게 하지 마소서';

  @override
  String get n => '북';

  @override
  String get nameOptional => '이름 (선택)';

  @override
  String get next => '다음';

  @override
  String get nextDhikr => '다음 디크르';

  @override
  String get nextPrayer => '다음 예배';

  @override
  String get night => '밤';

  @override
  String get nightEmeraldInterface => '밤의 에메랄드 화면';

  @override
  String get noBookmarksYet => '아직 북마크가 없습니다';

  @override
  String get noon => '정오';

  @override
  String get north => '북쪽';

  @override
  String get northeast => '북동쪽';

  @override
  String get northwest => '북서쪽';

  @override
  String get notificationsAlarm => '알림 및 알람';

  @override
  String get notificationsForPrayerTimes => '예배 시간 알림';

  @override
  String get oAllahSendBlessingsUponMuhammad => '알라여, 무함마드에게 축복을 내리소서';

  @override
  String get oEverLivingOSustainer => '영원히 살아 계신 분이여, 만물을 지탱하시는 분이여';

  @override
  String get openAutoStart => '자동 실행 열기';

  @override
  String get optimizeAdhanPerformance => '아잔 성능 최적화';

  @override
  String get ourLordGrantUsGoodInThisWorld => '주여, 현세에서 저희에게 선을 주소서';

  @override
  String get page => '페이지';

  @override
  String get pearl => '진주';

  @override
  String get personalizeYourAdhanNotifications => '아잔 알림을 맞춤 설정';

  @override
  String get praiseBeToAllahLordOfTheWorlds => '만유의 주 알라께 찬미를';

  @override
  String get prayerAlarms => '예배 알람';

  @override
  String get prayerSchedule => '예배 일정';

  @override
  String get prayerTimeNotifications => '예배 시간 알림';

  @override
  String get prayerTimesAreLoading => '예배 시간을 불러오는 중입니다';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      '예배 시간, 키블라, 꾸란 읽기, 타스비흐를 하나의 일상 동반자로.';

  @override
  String get prayerQuranQibla => '예배 • 꾸란 • 키블라';

  @override
  String get premiumThemes => '프리미엄 테마';

  @override
  String get preparingYourSpiritualJourney => '영적인 여정을 준비하는 중...';

  @override
  String get previousDhikr => '이전 디크르';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get qibla => '끼블라';

  @override
  String get qiblaFinder => '키블라 찾기';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => '꾸란';

  @override
  String get quranPlayback => '꾸란 재생';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro는 예배 시간, 키블라, 꾸란 읽기, 타스비흐를 하나의 간단한 일상 동반자로 담았습니다.';

  @override
  String get quranProPreferences => 'Quran Pro 설정';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro는 초기 설정과 진행 상황을 이 기기에 저장합니다. 안정성과 품질 개선을 위해 분석 데이터가 사용될 수 있습니다.';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro는 타스비흐 진행 상황을 이 기기에 저장합니다. 앱 안정성과 제품 품질 개선을 위해 분석 데이터가 사용될 수 있습니다.';

  @override
  String get quranRecitation => '꾸란 낭송';

  @override
  String get rabbanaAtinaFidDunyaHasanah => '랍바나 아티나 핏둔야 하사나';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      '랍비 인니 리마 안잘타 일라이야 민 카이린 파키르';

  @override
  String get rabbiYassirWaLaTuassir => '랍비 야씨르 왈라 투앗시르';

  @override
  String get rabbiZidniIlma => '랍비 지드니 일마';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin => '랍비그피르 와르함 와 안타 카이룻 라히민';

  @override
  String get rabiAlAwwal => '라비 알아우왈';

  @override
  String get rabiAlThani => '라비 알사니';

  @override
  String get rateApp => '앱 평가하기';

  @override
  String get rateQuranPro => 'Quran Pro 평가하기';

  @override
  String get readListen => '읽기 & 듣기';

  @override
  String get readTheQuranWithBeautifulRecitations => '아름다운 낭송과 함께 꾸란을 읽어보세요.';

  @override
  String get recent => '최근';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi, Oppo, Vivo, Huawei 사용자에게 권장';

  @override
  String get redCarnelian => '레드 카닐리언';

  @override
  String get remindMeAt => '알림 시간';

  @override
  String get removeAds => '광고 제거';

  @override
  String get requestingLocationPermission => '위치 권한 요청 중...';

  @override
  String get reset => '초기화';

  @override
  String get retry => '다시 시도';

  @override
  String get returnToCompass => '나침반으로 돌아가기';

  @override
  String get s => '남';

  @override
  String get save => '저장';

  @override
  String get saveGoal => '목표 저장';

  @override
  String get searchSurahNumberArabic => '수라, 번호, 아랍어 검색...';

  @override
  String get searchSurah => '수라 검색...';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get selectTheThemeYouLike => '원하는 테마를 선택하세요';

  @override
  String get selectYourBead => '구슬 선택';

  @override
  String get shop => '상점';

  @override
  String get shopCustomization => '상점 및 꾸미기';

  @override
  String get sound => '소리';

  @override
  String get south => '남쪽';

  @override
  String get southeast => '남동쪽';

  @override
  String get southwest => '남서쪽';

  @override
  String get specialOccasionsAndMore => '특별한 날 등';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      '스토어 평가는 정식 출시 준비가 완료되면 연결됩니다.';

  @override
  String get subhanallahiWaBihamdihi => '수브하날라히 와 비함디히';

  @override
  String get subhanallahilAzim => '수브하날라힐 아짐';

  @override
  String get sunset => '일몰';

  @override
  String get supportQuranProOnTheStore => '스토어에서 Quran Pro 응원하기';

  @override
  String get surah => '수라';

  @override
  String get tasbih => '타스비흐';

  @override
  String get tasbihSettings => '타스비흐 설정';

  @override
  String get tellUsWhatToImprove => '개선할 점을 알려주세요';

  @override
  String get termsOfUse => '이용약관';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro를 이용해 주셔서 감사합니다. 스토어 평가는 정식 스토어 출시 준비가 완료되면 연결됩니다.';

  @override
  String get thereIsNoDeityExceptAllah => '알라 외에 신은 없습니다';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough =>
      '알라를 통하지 않고는 어떤 힘도 능력도 없습니다';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      '알림을 맞춤 설정하고 진행 상황을 기록하는 데 도움이 됩니다.';

  @override
  String get tigerSEye => '타이거 아이';

  @override
  String get today => '오늘';

  @override
  String get total => '합계';

  @override
  String get totalHasanat => '총 하사나트';

  @override
  String get trackProgress => '진행 상황 기록';

  @override
  String get trackYourReadingAndAchievements => '읽기와 성취를 기록하세요.';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get undo => '실행 취소';

  @override
  String get unlockAllAppThemesAndCustomizations => '모든 앱 테마와 꾸미기 잠금 해제';

  @override
  String get usageGuidelines => '이용 안내';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro는 개인의 예배, 학습, 일상의 이슬람 실천을 위해 경건하게 이용해 주세요.';

  @override
  String get viewAll => '전체 보기';

  @override
  String get w => '서';

  @override
  String get welcome => '환영합니다';

  @override
  String get west => '서쪽';

  @override
  String get yaHayyuYaQayyum => '야 하이유 야 카이윰';

  @override
  String get youReAllSet => '모두 준비되었습니다!';

  @override
  String get yourProgress => '나의 진행 상황';

  @override
  String get continueLabel => '계속';

  @override
  String get amethyst => '자수정';

  @override
  String get indonesian => '인도네시아어';

  @override
  String get turkish => '튀르키예어';

  @override
  String get vietnamese => '베트남어';

  @override
  String get turquoise => '터키석';

  @override
  String get wood => '나무';

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
  String get estimatedLocation => '추정 위치';
}
