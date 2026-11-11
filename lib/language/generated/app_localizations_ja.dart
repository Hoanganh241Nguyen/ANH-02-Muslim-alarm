// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get week => '週';

  @override
  String get month => '月';

  @override
  String get lifetime => '累計';

  @override
  String get appTitle => 'Quran Pro: Al Quran Majeed';

  @override
  String get prayerAlarmDefaultQuote => '手を休めて、アッラーのための時間を持ちましょう。';

  @override
  String get prayerAlarmDefaultName => '礼拝';

  @override
  String productUnavailable(Object id) {
    return '商品 $id は購入できません。';
  }

  @override
  String purchaseSuccessful(Object productId) {
    return '$productId の購入が完了しました！';
  }

  @override
  String purchaseRestored(Object productId) {
    return '$productId の購入を復元しました！';
  }

  @override
  String daysCount(Object count) {
    return '$count 日';
  }

  @override
  String upcomingPrayer(Object prayerName) {
    return 'まもなく：$prayerName';
  }

  @override
  String distanceToMecca(Object distance) {
    return 'マッカまでの距離：$distance km';
  }

  @override
  String snoozeMinutes(Object minutes) {
    return '$minutes 分後に通知';
  }

  @override
  String prayerTimeArrived(Object prayerName) {
    return '$prayerName の礼拝の時間です';
  }

  @override
  String roundValue(Object round) {
    return 'ラウンド：$round';
  }

  @override
  String selectedLanguage(Object language) {
    return '$language を選択しました';
  }

  @override
  String juzNumber(Object juz) {
    return 'ジュズ $juz';
  }

  @override
  String pageNumber(Object page) {
    return '$page ページ';
  }

  @override
  String hizbNumber(Object hizb) {
    return 'ヒズブ $hizb';
  }

  @override
  String surahVerse(Object surahName, Object verse) {
    return '$surahName：アーヤ $verse';
  }

  @override
  String surahAyahCount(Object count) {
    return '$count アーヤ';
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
    return 'レベル $level';
  }

  @override
  String get surahAlBaqarah2238 => '（スーラ・アルバカラ 2:238）';

  @override
  String get text1juz => '1ジュズ';

  @override
  String get text199usd => '1.99 USD';

  @override
  String get text10pages => '10ページ';

  @override
  String get text100dhikr => 'ズィクル100回';

  @override
  String get text299usd => '2.99 USD';

  @override
  String get text20pages => '20ページ';

  @override
  String get text28cclearsky => '28°C - 快晴';

  @override
  String get text499usd => '4.99 USD';

  @override
  String get text5pages => '5ページ';

  @override
  String get text799usd => '7.99 USD';

  @override
  String get about => 'アプリについて';

  @override
  String get aboutQuranPro => 'Quran Pro について';

  @override
  String get activity => 'アクティビティ';

  @override
  String get adIsLoadingPleaseTryAgainSoon => '広告を読み込んでいます。しばらくしてからお試しください。';

  @override
  String get addCustomDhikr => 'カスタムズィクルを追加';

  @override
  String get addCustomDhikr2 => 'カスタムズィクルを追加';

  @override
  String get addDhikr => 'ズィクルを追加';

  @override
  String get adjustPosition => '位置を調整';

  @override
  String get afternoon => '午後';

  @override
  String get alMasjidAlHaram => 'マスジド・ハラーム';

  @override
  String get alhamdulillahiRabbilAlamin => 'アルハムドゥリッラーヒ・ラッビル・アーラミーン';

  @override
  String get alignedToQibla => 'キブラに一致';

  @override
  String get allPraiseIsDueToAllah => 'すべての称賛はアッラーに';

  @override
  String get allPremiumFeaturesAtADiscountedPrice => 'すべてのプレミアム機能をお得な価格で';

  @override
  String get allInOneQuranApp => 'オールインワンのクルアーンアプリ';

  @override
  String get allahIsSufficientForMeThereIsNo => 'アッラーは私にとって十分な御方。かれのほかに神はない';

  @override
  String get allahIsTheGreatest => 'アッラーは偉大なり';

  @override
  String get allahuAkbar => 'アッラーフ・アクバル';

  @override
  String get allahummaSalliAlaMuhammad => 'アッラーフンマ・サッリ・アラー・ムハンマド';

  @override
  String get allowLocationPermissionOrTapRetryToUse =>
      '位置情報を許可するか、再試行をタップして代替スケジュールをご利用ください。';

  @override
  String get allowNotificationsToReceivePrayerTimesAndDaily =>
      '礼拝時刻と毎日のリマインダーを受け取るには通知を許可してください。';

  @override
  String get allowTheAppToRunInTheBackground => 'アプリのバックグラウンド動作を許可';

  @override
  String get app => 'アプリ';

  @override
  String get arabic => 'アラビア語';

  @override
  String get asr => 'アスル';

  @override
  String get auzuBillahiMinAshShaytanirRajim => 'アウーズ・ビッラーヒ・ミナッシャイターニッ・ラジーム';

  @override
  String get avg => '平均';

  @override
  String get ayah => 'アーヤ';

  @override
  String get batteryOptimization => 'バッテリー最適化';

  @override
  String get beautifulWidgets => '美しいウィジェット';

  @override
  String get bestValue => '一番お得';

  @override
  String get blackOnyx => 'ブラックオニキス';

  @override
  String get bookmarks => 'ブックマーク';

  @override
  String get brightIvoryInterface => '明るいアイボリーの画面';

  @override
  String get calculatingDistance => '距離を計算中...';

  @override
  String get calibrateYourDirection => '方角を調整してください';

  @override
  String get cancel => 'キャンセル';

  @override
  String get change => '変更';

  @override
  String get changeTasbihMode => 'タスビーフのモードを変更しますか？';

  @override
  String get chooseDhikr => 'ズィクルを選択';

  @override
  String get chooseDisplayLanguage => '表示言語を選択';

  @override
  String get chooseTheme => 'テーマを選択';

  @override
  String get chooseYourPreferredLanguage => 'お好みの言語を選択してください';

  @override
  String get clickOrSwipeToCount => 'タップまたはスワイプでカウント';

  @override
  String get close => '閉じる';

  @override
  String get closeCustomGoal => 'カスタム目標を閉じる';

  @override
  String get completeAtLeast33Dhikr => 'ズィクルを33回以上行う';

  @override
  String get connectYourHeartWithTheHolyQuran => '聖クルアーンと心をつなげましょう。';

  @override
  String get continueReading => '続きを読む';

  @override
  String get countsPerRound => '1ラウンドの回数';

  @override
  String get curateYourCollectionWithMasterCraftedSpiritualGems =>
      '職人が仕上げた聖なる宝石でコレクションを彩りましょう。';

  @override
  String get current => '現在';

  @override
  String get current2 => '現在';

  @override
  String get currentLocationToMecca => '現在地からマッカまで';

  @override
  String get currentProgressWillResetForTheNewMode => '現在の進捗は新しいモードでリセットされます。';

  @override
  String get currentStreak => '現在の連続日数';

  @override
  String get custom => 'カスタム';

  @override
  String get customDhikr => 'カスタムズィクル';

  @override
  String get customGoal => 'カスタム目標';

  @override
  String get customPrayerSounds => 'カスタム礼拝サウンド';

  @override
  String get dailyGoal => '1日の目標';

  @override
  String get dailyQuests => 'デイリークエスト';

  @override
  String get dailyQuranReminder => '毎日のクルアーンリマインダー';

  @override
  String get dailyReminders => '毎日のリマインダー';

  @override
  String get dailyTasbih => '毎日のタスビーフ';

  @override
  String get dark => 'ダーク';

  @override
  String get dawn => '夜明け';

  @override
  String get debug => 'デバッグ';

  @override
  String get dhikr => 'ズィクル';

  @override
  String get dhikrActivity => 'ズィクルの記録';

  @override
  String get dhuAlHijjah => 'ズル・ヒッジャ';

  @override
  String get dhuAlQadah => 'ズル・カアダ';

  @override
  String get dhuhr => 'ズフル';

  @override
  String get direction => '方角';

  @override
  String get disableBatteryOptimization => 'バッテリー最適化を無効にする';

  @override
  String get disableOptimization => '最適化を無効にする';

  @override
  String get distance => '距離';

  @override
  String get e => '東';

  @override
  String get eGHasbunallah => '例：ハスブナッラー';

  @override
  String get east => '東';

  @override
  String get enableAutoStart => '自動起動を有効にする';

  @override
  String get enableNotifications => '通知を有効にする';

  @override
  String get enableReminders => 'リマインダーを有効にする';

  @override
  String get english => '英語';

  @override
  String get enterYourName => 'お名前を入力';

  @override
  String get equipped => '使用中';

  @override
  String get everythingYouNeedForABetterQuranExperience =>
      'より良いクルアーン体験に必要なすべてを。';

  @override
  String get fajr => 'ファジュル';

  @override
  String get feedback => 'フィードバック';

  @override
  String get first => '最初';

  @override
  String get forTheMostAccurateResultsKeepYourPhone =>
      '正確に測定するには、スマートフォンを水平に保ち、磁気を帯びた物から離してください。';

  @override
  String get free => '無料';

  @override
  String get fullBundle => 'フルバンドル';

  @override
  String get getAnAdFreeExperienceForever => '広告なしの体験をずっと';

  @override
  String get getRemindedToReadAndStayConsistent => 'リマインダーで読誦を習慣にしましょう。';

  @override
  String get getStarted => 'はじめる';

  @override
  String get gloryAndPraiseBeToAllah => 'アッラーに栄光と称賛あれ';

  @override
  String get gloryBeToAllah => 'アッラーに栄光あれ';

  @override
  String get gloryBeToAllahTheMagnificent => '偉大なるアッラーに栄光あれ';

  @override
  String get goToHome => 'ホームに戻る';

  @override
  String get goldenEngraved => 'ゴールド彫刻';

  @override
  String get greenJade => 'グリーンジェード';

  @override
  String get hMm => 'H:mm';

  @override
  String get hanoiVietnam => 'ハノイ、ベトナム';

  @override
  String get haptic => '振動';

  @override
  String get hasanatHub => 'ハサナートセンター';

  @override
  String get hasbiyallahuLaIlahaIllaHuwa => 'ハスビヤッラーフ・ラー・イラーハ・イッラー・フワ';

  @override
  String get hhMm => 'HH:mm';

  @override
  String get hhMmA => 'hh:mm a';

  @override
  String get home => 'ホーム';

  @override
  String get howYourDataIsHandled => 'データの取り扱いについて';

  @override
  String get iSeekForgivenessFromAllah => 'アッラーに赦しを乞います';

  @override
  String get iSeekRefugeInAllahFromTheAccursed => '呪われたシャイターンからアッラーに御加護を求めます';

  @override
  String get immediateAlerts => '即時アラート';

  @override
  String get inTheNameOfAllah => 'アッラーの御名において';

  @override
  String get indeedWeBelongToAllahAndToHim => '私たちはアッラーに属し、かれの御許に帰ります';

  @override
  String get innaLillahiWaInnaIlayhiRajiun => 'インナー・リッラーヒ・ワ・インナー・イライヒ・ラージウーン';

  @override
  String get isha => 'イシャー';

  @override
  String get jumadaAlAwwal => 'ジュマーダル・アウワル';

  @override
  String get jumadaAlThani => 'ジュマーダッ・サーニー';

  @override
  String get juz => 'ジュズ';

  @override
  String get juz2 => 'ジュズ';

  @override
  String get keepAdhanAlarmsReliable => 'アザーンのアラームを確実に';

  @override
  String get keepItUpYouReDoingGreat => 'その調子です！素晴らしい取り組みです。';

  @override
  String get keepPrayerCallsReliableEvenWhenTheApp =>
      'アプリを閉じていてもアザーンを確実にお届けします。';

  @override
  String get laHawlaWaLaQuwwataIllaBillah => 'ラー・ハウラ・ワ・ラー・クッワタ・イッラー・ビッラー';

  @override
  String get laIlahaIllallah => 'ラー・イラーハ・イッラッラー';

  @override
  String get language => '言語';

  @override
  String get lapisLazuli => 'ラピスラズリ';

  @override
  String get last7Days => '過去7日間';

  @override
  String get later => '後で';

  @override
  String get letSBeginYourBeautifulJourneyWithThe => 'クルアーンとの美しい歩みを始めましょう。';

  @override
  String get letSPersonalizeYourExperience => 'あなたに合わせて\n設定しましょう';

  @override
  String get light => 'ライト';

  @override
  String get lightMode => 'ライトモード';

  @override
  String get listenToOrReadAnyAyahToday => '今日、アーヤを聴くか読む';

  @override
  String get locating => '位置情報を取得中...';

  @override
  String get location => '位置情報';

  @override
  String get locationPermissionsAreDenied => '位置情報の権限が拒否されています';

  @override
  String get locationPermissionsArePermanentlyDenied => '位置情報の権限が完全に拒否されています。';

  @override
  String get locationServicesAreDisabled => '位置情報サービスが無効です。';

  @override
  String get longestStreak => '最長の連続日数';

  @override
  String get maghrib => 'マグリブ';

  @override
  String get maybeLater => 'また今度';

  @override
  String get meccaSaudiArabia => 'マッカ、サウジアラビア';

  @override
  String get misharyRashidAlafasy => 'Mishary Rashid Alafasy';

  @override
  String get mmmDdYyyy => 'MMM dd, yyyy';

  @override
  String get myLordForgiveAndHaveMercy => '主よ、お赦しと慈悲をお与えください';

  @override
  String get myLordIAmInNeedOfWhatever => '主よ、あなたが下される善を私は必要としています';

  @override
  String get myLordIncreaseMeInKnowledge => '主よ、私の知識を増してください';

  @override
  String get myLordMakeItEasyAndDoNot => '主よ、易しくし、難しくなさらないでください';

  @override
  String get n => '北';

  @override
  String get nameOptional => '名前（任意）';

  @override
  String get next => '次へ';

  @override
  String get nextDhikr => '次のズィクル';

  @override
  String get nextPrayer => '次の礼拝';

  @override
  String get night => '夜';

  @override
  String get nightEmeraldInterface => '夜のエメラルドの画面';

  @override
  String get noBookmarksYet => 'ブックマークはまだありません';

  @override
  String get noon => '正午';

  @override
  String get north => '北';

  @override
  String get northeast => '北東';

  @override
  String get northwest => '北西';

  @override
  String get notificationsAlarm => '通知とアラーム';

  @override
  String get notificationsForPrayerTimes => '礼拝時刻の通知';

  @override
  String get oAllahSendBlessingsUponMuhammad => 'アッラーよ、ムハンマドに祝福をお与えください';

  @override
  String get oEverLivingOSustainer => '永生者よ、万有を支えたもう御方よ';

  @override
  String get openAutoStart => '自動起動を開く';

  @override
  String get optimizeAdhanPerformance => 'アザーンの動作を最適化';

  @override
  String get ourLordGrantUsGoodInThisWorld => '主よ、現世で私たちに善をお与えください';

  @override
  String get page => 'ページ';

  @override
  String get pearl => 'パール';

  @override
  String get personalizeYourAdhanNotifications => 'アザーン通知をカスタマイズ';

  @override
  String get praiseBeToAllahLordOfTheWorlds => '万有の主アッラーに称賛あれ';

  @override
  String get prayerAlarms => '礼拝アラーム';

  @override
  String get prayerSchedule => '礼拝スケジュール';

  @override
  String get prayerTimeNotifications => '礼拝時刻の通知';

  @override
  String get prayerTimesAreLoading => '礼拝時刻を読み込んでいます';

  @override
  String get prayerTimesQiblaQuranReadingAndTasbihIn =>
      '礼拝時刻、キブラ、クルアーン読誦、タスビーフを1つの毎日の相棒に。';

  @override
  String get prayerQuranQibla => '礼拝 • クルアーン • キブラ';

  @override
  String get premiumThemes => 'プレミアムテーマ';

  @override
  String get preparingYourSpiritualJourney => '信仰の歩みを準備しています...';

  @override
  String get previousDhikr => '前のズィクル';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get qibla => 'キブラ';

  @override
  String get qiblaFinder => 'キブラコンパス';

  @override
  String get qiblaMap => 'Qibla Map';

  @override
  String get quran => 'クルアーン';

  @override
  String get quranPlayback => 'クルアーン再生';

  @override
  String get quranPro => 'Quran Pro';

  @override
  String get quranPro2 => 'QURAN PRO';

  @override
  String get quranProBringsPrayerTimesQiblaQuranReading =>
      'Quran Pro は礼拝時刻、キブラ、クルアーン読誦、タスビーフを1つのシンプルな毎日の相棒にまとめます。';

  @override
  String get quranProPreferences => 'Quran Pro の設定';

  @override
  String get quranProStoresOnboardingAndProgressPreferencesLocally =>
      'Quran Pro は初期設定と進捗の情報をこの端末内に保存します。安定性と品質の向上のために分析情報を利用する場合があります。';

  @override
  String get quranProStoresYourTasbihProgressLocallyOn =>
      'Quran Pro はタスビーフの進捗をこの端末内に保存します。アプリの安定性と品質の向上のために分析情報を利用する場合があります。';

  @override
  String get quranRecitation => 'クルアーン読誦';

  @override
  String get rabbanaAtinaFidDunyaHasanah => 'ラッバナー・アーティナー・フィッドゥンヤー・ハサナ';

  @override
  String get rabbiInniLimaAnzaltaIlayyaMinKhayrinFaqir =>
      'ラッビ・インニー・リマー・アンザルタ・イライヤ・ミン・ハイリン・ファキール';

  @override
  String get rabbiYassirWaLaTuassir => 'ラッビ・ヤッシル・ワ・ラー・トゥアッシル';

  @override
  String get rabbiZidniIlma => 'ラッビ・ズィドニー・イルマー';

  @override
  String get rabbighfirWarhamWaAntaKhayrurRahimin =>
      'ラッビグフィル・ワルハム・ワ・アンタ・ハイルッ・ラーヒミーン';

  @override
  String get rabiAlAwwal => 'ラビーウル・アウワル';

  @override
  String get rabiAlThani => 'ラビーウッ・サーニー';

  @override
  String get rateApp => 'アプリを評価';

  @override
  String get rateQuranPro => 'Quran Pro を評価';

  @override
  String get readListen => '読む・聴く';

  @override
  String get readTheQuranWithBeautifulRecitations => '美しい読誦とともにクルアーンを読みましょう。';

  @override
  String get recent => '最近';

  @override
  String get recommendedForXiaomiOppoVivoAndHuawei =>
      'Xiaomi、Oppo、Vivo、Huawei で推奨';

  @override
  String get redCarnelian => 'レッドカーネリアン';

  @override
  String get remindMeAt => '通知する時刻';

  @override
  String get removeAds => '広告を非表示';

  @override
  String get requestingLocationPermission => '位置情報の権限を要求中...';

  @override
  String get reset => 'リセット';

  @override
  String get retry => '再試行';

  @override
  String get returnToCompass => 'コンパスに戻る';

  @override
  String get s => '南';

  @override
  String get save => '保存';

  @override
  String get saveGoal => '目標を保存';

  @override
  String get searchSurahNumberArabic => 'スーラ、番号、アラビア語で検索...';

  @override
  String get searchSurah => 'スーラを検索...';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get selectTheThemeYouLike => 'お好みのテーマを選択';

  @override
  String get selectYourBead => 'ビーズを選択';

  @override
  String get shop => 'ショップ';

  @override
  String get shopCustomization => 'ショップとカスタマイズ';

  @override
  String get sound => 'サウンド';

  @override
  String get south => '南';

  @override
  String get southeast => '南東';

  @override
  String get southwest => '南西';

  @override
  String get specialOccasionsAndMore => '特別な行事など';

  @override
  String get storeRatingWillBeConnectedWhenTheProduction =>
      'ストア評価は正式公開の準備が整い次第ご利用いただけます。';

  @override
  String get subhanallahiWaBihamdihi => 'スブハーナッラーヒ・ワ・ビハムディヒ';

  @override
  String get subhanallahilAzim => 'スブハーナッラーヒル・アズィーム';

  @override
  String get sunset => '日没';

  @override
  String get supportQuranProOnTheStore => 'ストアで Quran Pro を応援';

  @override
  String get surah => 'スーラ';

  @override
  String get tasbih => 'タスビーフ';

  @override
  String get tasbihSettings => 'タスビーフ設定';

  @override
  String get tellUsWhatToImprove => '改善点をお聞かせください';

  @override
  String get termsOfUse => '利用規約';

  @override
  String get thanksForUsingQuranProStoreRatingWill =>
      'Quran Pro をご利用いただきありがとうございます。ストア評価は正式公開の準備が整い次第ご利用いただけます。';

  @override
  String get thereIsNoDeityExceptAllah => 'アッラーのほかに神はない';

  @override
  String get thereIsNoPowerNorStrengthExceptThrough => 'アッラーによるほか、力も権威もない';

  @override
  String get thisHelpsUsCustomizeRemindersAndTrackYour =>
      'リマインダーの最適化と進捗の記録に役立ちます。';

  @override
  String get tigerSEye => 'タイガーアイ';

  @override
  String get today => '今日';

  @override
  String get total => '合計';

  @override
  String get totalHasanat => 'ハサナート合計';

  @override
  String get trackProgress => '進捗を記録';

  @override
  String get trackYourReadingAndAchievements => '読誦と達成を記録しましょう。';

  @override
  String get tryAgain => '再試行';

  @override
  String get undo => '元に戻す';

  @override
  String get unlockAllAppThemesAndCustomizations => 'すべてのテーマとカスタマイズを解放';

  @override
  String get usageGuidelines => 'ご利用のガイドライン';

  @override
  String get useQuranProRespectfullyForPersonalWorshipLearning =>
      'Quran Pro は個人の礼拝、学び、日々のイスラームの実践のために敬意をもってご利用ください。';

  @override
  String get viewAll => 'すべて表示';

  @override
  String get w => '西';

  @override
  String get welcome => 'ようこそ';

  @override
  String get west => '西';

  @override
  String get yaHayyuYaQayyum => 'ヤー・ハイユ・ヤー・カイユーム';

  @override
  String get youReAllSet => '準備完了！';

  @override
  String get yourProgress => 'あなたの進捗';

  @override
  String get continueLabel => '続ける';

  @override
  String get amethyst => 'アメジスト';

  @override
  String get indonesian => 'インドネシア語';

  @override
  String get turkish => 'トルコ語';

  @override
  String get vietnamese => 'ベトナム語';

  @override
  String get turquoise => 'ターコイズ';

  @override
  String get wood => 'ウッド';

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
  String get estimatedLocation => '推定位置';
}
