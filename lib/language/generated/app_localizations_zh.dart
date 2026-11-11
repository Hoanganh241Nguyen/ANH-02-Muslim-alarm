// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get week => '周';

  @override
  String get month => '月';

  @override
  String get lifetime => '总计';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote => '暂停手中的工作，为安拉留出时间。';

  @override
  String get prayerAlarmDefaultName => '礼拜';

  @override
  String productUnavailable(Object id) {
    return '商品 $id 暂不可购买。';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId 购买成功！';
  }

  @override
  String purchaseRestored(Object productId) {
    return '已恢复 $productId 的购买！';
  }

  @override
  String daysCount(Object count) {
    return '$count 天';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return '即将到来：$prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return '距麦加：$distance 公里';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes 分钟后提醒我';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName 的时间到了';
  }

  @override
  String roundValue(Object round) {
    return '轮次：$round';
  }

  @override
  String selectedLanguage(Object language) {
    return '已选择$language';
  }

  @override
  String juzNumber(Object juz) {
    return '第 $juz 卷';
  }

  @override
  String pageNumber(Object page) {
    return '第 $page 页';
  }

  @override
  String hizbNumber(Object hizb) {
    return '第 $hizb 希兹布';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName：第 $verse 节';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count 节';
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
    return '等级 $level';
  }

  @override
  String get surahAlBaqarah2238 => '（黄牛章 2:238）';

  @override
  String get text1juz => '1 卷';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10 页';

  @override
  String get text100dhikr => '100 次齐克尔';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20 页';

  @override
  String get text28cclearsky => '28°C - 晴朗';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5 页';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => '关于';

  @override
  String get aboutQuranPro => '关于 Quran Pro';

  @override
  String get activity => '活动';

  @override
  String get adIsLoadingPleaseTryAgainSoon => '广告加载中，请稍后再试。';

  @override
  String get addCustomDhikr => '添加自定义齐克尔';

  @override
  String get addCustomDhikr2 => '添加自定义齐克尔';

  @override
  String get addDhikr => '添加齐克尔';

  @override
  String get adjustPosition => '调整位置';

  @override
  String get afternoon => '下午';

  @override
  String get alMasjidAlHaram => '禁寺';

  @override
  String get alhamdulillahiRabbilAlamin => '艾利哈姆杜·利拉希·拉比勒·阿莱敏';

  @override
  String get alignedToQibla => '已对准朝向';

  @override
  String get allPraiseIsDueToAllah => '一切赞颂全归安拉';

  @override
  String get allPremiumFeaturesAtADiscountedPrice => '以优惠价获得全部高级功能';

  @override
  String get allInOneQuranApp => '一站式《古兰经》应用';

  @override
  String get allahIsSufficientForMeThereIsNo => '安拉于我已足够，除他外别无主宰';

  @override
  String get allahIsTheGreatest => '安拉至大';

  @override
  String get allahuAkbar => '安拉乎·艾克拜尔';

  @override
  String get allahummaSalliAlaMuhammad => '安拉乎曼·索里·阿俩·穆罕默德';

  @override
  String get allowLocationPermissionOrTapRetryToUse => '请允许定位权限，或点击重试以使用备用时间表。';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      '允许通知，以接收礼拜时间和每日提醒。';

  @override
  String get allowTheAppToRunInTheBackground => '允许应用在后台运行';

  @override
  String get app => '应用';

  @override
  String get arabic => '阿拉伯语';

  @override
  String get asr => '晡礼';

  @override
  String get auzuBillahiMinAshShaytanirRajim => '阿乌祖·比拉希·敏·舍团尼·拉吉姆';

  @override
  String get avg => '平均';

  @override
  String get ayah => '阿耶';

  @override
  String get batteryOptimization => '电池优化';

  @override
  String get beautifulWidgets => '精美小组件';

  @override
  String get bestValue => '最超值';

  @override
  String get blackOnyx => '黑玛瑙';

  @override
  String get bookmarks => '书签';

  @override
  String get brightIvoryInterface => '明亮的象牙白界面';

  @override
  String get calculatingDistance => '正在计算距离…';

  @override
  String get calibrateYourDirection => '校准你的方向';

  @override
  String get cancel => '取消';

  @override
  String get change => '更改';

  @override
  String get changeTasbihMode => '更改泰斯比哈模式？';

  @override
  String get chooseDhikr => '选择齐克尔';

  @override
  String get chooseDisplayLanguage => '选择显示语言';

  @override
  String get chooseTheme => '选择主题';

  @override
  String get chooseYourPreferredLanguage => '选择你偏好的语言';

  @override
  String get clickOrSwipeToCount => '点击或滑动计数';

  @override
  String get close => '关闭';

  @override
  String get closeCustomGoal => '关闭自定义目标';

  @override
  String get completeAtLeast33Dhikr => '至少完成 33 次齐克尔';

  @override
  String get connectYourHeartWithTheHolyQuran => '让你的心与《古兰经》相连。';

  @override
  String get continueReading => '继续阅读';

  @override
  String get countsPerRound => '每轮计数';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      '用精工雕琢的灵性宝石打造你的收藏。';

  @override
  String get current => '当前';

  @override
  String get current2 => '当前';

  @override
  String get currentLocationToMecca => '当前位置到麦加';

  @override
  String get currentProgressWillResetForTheNewMode => '当前进度将为新模式重置。';

  @override
  String get currentStreak => '当前连续天数';

  @override
  String get custom => '自定义';

  @override
  String get customDhikr => '自定义齐克尔';

  @override
  String get customGoal => '自定义目标';

  @override
  String get customPrayerSounds => '自定义礼拜提示音';

  @override
  String get dailyGoal => '每日目标';

  @override
  String get dailyQuests => '每日任务';

  @override
  String get dailyQuranReminder => '每日《古兰经》提醒';

  @override
  String get dailyReminders => '每日提醒';

  @override
  String get dailyTasbih => '每日泰斯比哈';

  @override
  String get dark => '深色';

  @override
  String get dawn => '黎明';

  @override
  String get debug => '调试';

  @override
  String get dhikr => '齐克尔';

  @override
  String get dhikrActivity => '齐克尔活动';

  @override
  String get dhuAlHijjah => '都尔黑哲';

  @override
  String get dhuAlQadah => '都尔喀尔德';

  @override
  String get dhuhr => '晌礼';

  @override
  String get direction => '方向';

  @override
  String get disableBatteryOptimization => '关闭电池优化';

  @override
  String get disableOptimization => '关闭优化';

  @override
  String get distance => '距离';

  @override
  String get e => '东';

  @override
  String get eGHasbunallah => '例如：哈斯本安拉';

  @override
  String get east => '东';

  @override
  String get enableAutoStart => '开启自启动';

  @override
  String get enableNotifications => '开启通知';

  @override
  String get enableReminders => '开启提醒';

  @override
  String get english => '英语';

  @override
  String get enterYourName => '输入你的名字';

  @override
  String get equipped => '已装备';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      '为更好的《古兰经》体验，提供你所需的一切。';

  @override
  String get fajr => '晨礼';

  @override
  String get feedback => '反馈';

  @override
  String get first => '首次';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      '为获得最准确的结果，请将手机放平并远离磁性物体。';

  @override
  String get free => '免费';

  @override
  String get fullBundle => '完整套装';

  @override
  String get getAnAdFreeExperienceForever => '永久享受无广告体验';

  @override
  String get getRemindedToReadAndStayConsistent => '获得诵读提醒，坚持不间断。';

  @override
  String get getStarted => '开始使用';

  @override
  String get gloryAndPraiseBeToAllah => '赞主清净，赞颂归主';

  @override
  String get gloryBeToAllah => '赞主清净';

  @override
  String get gloryBeToAllahTheMagnificent => '赞伟大的安拉清净';

  @override
  String get goToHome => '返回首页';

  @override
  String get goldenEngraved => '金雕';

  @override
  String get greenJade => '绿翡翠';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => '越南河内';

  @override
  String get haptic => '触感振动';

  @override
  String get hasanatHub => '善功中心';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => '哈斯比安拉乎·俩伊俩罕·印拉·胡瓦';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => '首页';

  @override
  String get howYourDataIsHandled => '你的数据如何被处理';

  @override
  String get iSeekForgivenessFromAllah => '我向安拉求恕饶';

  @override
  String get iSeekRefugeInAllahFromTheAccursed => '我求安拉护佑，远离被弃绝的恶魔';

  @override
  String get immediateAlerts => '即时提醒';

  @override
  String get inTheNameOfAllah => '奉安拉之名';

  @override
  String get indeedWeBelongToAllahAndToHim => '我们确是安拉的，我们必将归于他';

  @override
  String get innaLillahiWaInnaIlayhiRajiun => '印那·利拉希·瓦印那·伊莱希·拉吉温';

  @override
  String get isha => '宵礼';

  @override
  String get jumadaAlAwwal => '主马达·敖外鲁';

  @override
  String get jumadaAlThani => '主马达·阿黑尔';

  @override
  String get juz => '卷';

  @override
  String get juz2 => '卷';

  @override
  String get keepAdhanAlarmsReliable => '让邦克提醒保持可靠';

  @override
  String get keepItUpYouReDoingGreat => '继续保持！你做得很棒。';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp => '即使应用已关闭，邦克提醒依然准时可靠。';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => '俩豪来·瓦俩·顾瓦泰·印俩·比拉希';

  @override
  String get laIlahaIllallah => '俩伊俩罕·印兰拉乎';

  @override
  String get language => '语言';

  @override
  String get lapisLazuli => '青金石';

  @override
  String get last7Days => '最近 7 天';

  @override
  String get later => '稍后';

  @override
  String get letSBeginYourBeautifulJourneyWithThe => '让我们开启与《古兰经》的美好旅程。';

  @override
  String get letSPersonalizeYourExperience => '让我们个性化\n你的体验';

  @override
  String get light => '浅色';

  @override
  String get lightMode => '浅色模式';

  @override
  String get listenToOrReadAnyAyahToday => '今天聆听或诵读任意一节阿耶';

  @override
  String get locating => '正在定位…';

  @override
  String get location => '位置';

  @override
  String get locationPermissionsAreDenied => '定位权限被拒绝';

  @override
  String get locationPermissionsArePermanentlyDenied => '定位权限已被永久拒绝。';

  @override
  String get locationServicesAreDisabled => '定位服务已关闭。';

  @override
  String get longestStreak => '最长连续天数';

  @override
  String get maghrib => '昏礼';

  @override
  String get maybeLater => '以后再说';

  @override
  String get meccaSaudiArabia => '沙特阿拉伯麦加';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => '我的主啊，求你恕饶与慈悯';

  @override
  String get myLordIAmInNeedOfWhatever => '我的主啊，你降下的任何福泽，我都需要';

  @override
  String get myLordIncreaseMeInKnowledge => '我的主啊，求你增加我的知识';

  @override
  String get myLordMakeItEasyAndDoNot => '我的主啊，求你使它容易，不要使它艰难';

  @override
  String get n => '北';

  @override
  String get nameOptional => '名字（可选）';

  @override
  String get next => '下一步';

  @override
  String get nextDhikr => '下一个齐克尔';

  @override
  String get nextPrayer => '下一次礼拜';

  @override
  String get night => '夜间';

  @override
  String get nightEmeraldInterface => '夜间翡翠绿界面';

  @override
  String get noBookmarksYet => '还没有书签';

  @override
  String get noon => '正午';

  @override
  String get north => '北';

  @override
  String get northeast => '东北';

  @override
  String get northwest => '西北';

  @override
  String get notificationsAlarm => '通知与闹钟';

  @override
  String get notificationsForPrayerTimes => '礼拜时间的通知';

  @override
  String get oAllahSendBlessingsUponMuhammad => '主啊，求你赐福于穆罕默德';

  @override
  String get oEverLivingOSustainer => '永活的主啊，维护万物的主啊';

  @override
  String get openAutoStart => '打开自启动';

  @override
  String get optimizeAdhanPerformance => '优化邦克播报性能';

  @override
  String get ourLordGrantUsGoodInThisWorld => '我们的主啊，求你在今世赏赐我们美好';

  @override
  String get page => '页';

  @override
  String get pearl => '珍珠';

  @override
  String get personalizeYourAdhanNotifications => '个性化你的邦克通知';

  @override
  String get praiseBeToAllahLordOfTheWorlds => '一切赞颂全归安拉，众世界的主';

  @override
  String get prayerAlarms => '礼拜闹钟';

  @override
  String get prayerSchedule => '礼拜时间表';

  @override
  String get prayerTimeNotifications => '礼拜时间通知';

  @override
  String get prayerTimesAreLoading => '正在加载礼拜时间';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      '礼拜时间、朝向、诵读《古兰经》与泰斯比哈，尽在一个每日伴侣。';

  @override
  String get prayerQuranQibla => '礼拜 • 古兰经 • 朝向';

  @override
  String get premiumThemes => '高级主题';

  @override
  String get preparingYourSpiritualJourney => '正在准备你的心灵之旅…';

  @override
  String get previousDhikr => '上一个齐克尔';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get qibla => '朝向';

  @override
  String get qiblaFinder => '朝向查找';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => '古兰经';

  @override
  String get quranPlayback => '《古兰经》播放';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro 将礼拜时间、朝向、诵读《古兰经》与泰斯比哈汇聚于一个简洁的每日伴侣。';

  @override
  String get quranProPreferences => 'Quran Pro 偏好设置';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro 将引导设置与进度偏好保存在本设备上。我们可能使用分析数据来提升稳定性与质量。';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro 将你的泰斯比哈进度保存在本设备上。我们可能使用分析数据来提升应用稳定性与产品质量。';

  @override
  String get quranRecitation => '《古兰经》诵读';

  @override
  String get rabbanaAtinaFidDunyaHasanah => '拉巴纳·阿提那·菲敦亚·哈桑奈';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      '拉比·因尼·利马·安宰勒塔·伊莱亚·敏·海林·法基尔';

  @override
  String get rabbiYassirWaLaTuassir => '拉比·雅西尔·瓦俩·图阿西尔';

  @override
  String get rabbiZidniIlma => '拉比·齐德尼·伊勒曼';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin => '拉比格菲尔·瓦尔罕·瓦安塔·海鲁尔·拉希敏';

  @override
  String get rabiAlAwwal => '赖比尔·敖外鲁';

  @override
  String get rabiAlThani => '赖比尔·阿黑尔';

  @override
  String get rateApp => '评价应用';

  @override
  String get rateQuranPro => '评价 Quran Pro';

  @override
  String get readListen => '阅读与聆听';

  @override
  String get readTheQuranWithBeautifulRecitations => '在优美的诵读声中研读《古兰经》。';

  @override
  String get recent => '最近';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei => '推荐小米、OPPO、vivo 和华为用户开启';

  @override
  String get redCarnelian => '红玉髓';

  @override
  String get remindMeAt => '提醒时间';

  @override
  String get removeAds => '去除广告';

  @override
  String get requestingLocationPermission => '正在请求定位权限…';

  @override
  String get reset => '重置';

  @override
  String get retry => '重试';

  @override
  String get returnToCompass => '返回指南针';

  @override
  String get s => '南';

  @override
  String get save => '保存';

  @override
  String get saveGoal => '保存目标';

  @override
  String get searchSurahNumberArabic => '搜索苏拉、编号、阿拉伯文…';

  @override
  String get searchSurah => '搜索苏拉…';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get selectTheThemeYouLike => '选择你喜欢的主题';

  @override
  String get selectYourBead => '选择你的念珠';

  @override
  String get shop => '商店';

  @override
  String get shopCustomization => '商店与个性化';

  @override
  String get sound => '声音';

  @override
  String get south => '南';

  @override
  String get southeast => '东南';

  @override
  String get southwest => '西南';

  @override
  String get specialOccasionsAndMore => '特殊节日及更多';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction => '正式版上架后将开放商店评分。';

  @override
  String get subhanallahiWaBihamdihi => '苏布哈南拉希·瓦比哈姆迪希';

  @override
  String get subhanallahilAzim => '苏布哈南拉希·阿最姆';

  @override
  String get sunset => '日落';

  @override
  String get supportQuranProOnTheStore => '在商店中支持 Quran Pro';

  @override
  String get surah => '苏拉';

  @override
  String get tasbih => '念珠';

  @override
  String get tasbihSettings => '泰斯比哈设置';

  @override
  String get tellUsWhatToImprove => '告诉我们需要改进什么';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      '感谢你使用 Quran Pro。正式版上架后将开放商店评分。';

  @override
  String get thereIsNoDeityExceptAllah => '万物非主，唯有安拉';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough => '无能无力，全凭安拉';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour => '这有助于我们定制提醒并记录你的进度。';

  @override
  String get tigerSEye => '虎眼石';

  @override
  String get today => '今天';

  @override
  String get total => '总计';

  @override
  String get totalHasanat => '善功总计';

  @override
  String get trackProgress => '记录进度';

  @override
  String get trackYourReadingAndAchievements => '记录你的诵读与成就。';

  @override
  String get tryAgain => '重试';

  @override
  String get undo => '撤销';

  @override
  String get unlockAllAppThemesAndCustomizations => '解锁全部应用主题与个性化选项';

  @override
  String get usageGuidelines => '使用准则';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      '请怀着敬意使用 Quran Pro，用于个人功修、学习和每日的伊斯兰生活。';

  @override
  String get viewAll => '查看全部';

  @override
  String get w => '西';

  @override
  String get welcome => '欢迎';

  @override
  String get west => '西';

  @override
  String get yaHayyuYaQayyum => '雅·哈伊尤·雅·盖尤姆';

  @override
  String get youReAllSet => '一切就绪！';

  @override
  String get yourProgress => '你的进度';

  @override
  String get continueLabel => '继续';

  @override
  String get amethyst => '紫水晶';

  @override
  String get indonesian => '印尼语';

  @override
  String get turkish => '土耳其语';

  @override
  String get vietnamese => '越南语';

  @override
  String get turquoise => '绿松石';

  @override
  String get wood => '木质';

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
  String get estimatedLocation => '估计位置';
}
