import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../language/generated/app_localizations.dart';

enum TasbihMode {
  free(0),
  count33(33),
  count99(99),
  count100(100),
  custom(500);

  const TasbihMode(this.defaultGoal);

  final int defaultGoal;

  String label(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return switch (this) {
      TasbihMode.free => l10n.unlimited,
      TasbihMode.count33 => '33',
      TasbihMode.count99 => '99',
      TasbihMode.count100 => '100',
      TasbihMode.custom => l10n.custom,
    };
  }
}

class DhikrContent {
  const DhikrContent({
    required this.value,
    required this.arabic,
    required this.translation,
  });

  final String value;
  final String arabic;
  final String translation;
}

class TasbihStats {
  const TasbihStats({
    this.today = 0,
    this.week = 0,
    this.month = 0,
    this.lifetime = 0,
    this.currentStreak = 1,
    this.longestStreak = 1,
  });

  final int today;
  final int week;
  final int month;
  final int lifetime;
  final int currentStreak;
  final int longestStreak;

  Map<String, Object?> toJson() => {
    'today': today,
    'week': week,
    'month': month,
    'lifetime': lifetime,
    'currentStreak': currentStreak,
    'longestStreak': longestStreak,
  };

  factory TasbihStats.fromJson(Map<String, dynamic> json) => TasbihStats(
    today: (json['today'] as num?)?.toInt() ?? 0,
    week: (json['week'] as num?)?.toInt() ?? 0,
    month: (json['month'] as num?)?.toInt() ?? 0,
    lifetime: (json['lifetime'] as num?)?.toInt() ?? 0,
    currentStreak: (json['currentStreak'] as num?)?.toInt() ?? 1,
    longestStreak: (json['longestStreak'] as num?)?.toInt() ?? 1,
  );

  TasbihStats increment() => TasbihStats(
    today: today + 1,
    week: week + 1,
    month: month + 1,
    lifetime: lifetime + 1,
    currentStreak: currentStreak,
    longestStreak: longestStreak,
  );

  TasbihStats decrement() => TasbihStats(
    today: today > 0 ? today - 1 : 0,
    week: week > 0 ? week - 1 : 0,
    month: month > 0 ? month - 1 : 0,
    lifetime: lifetime > 0 ? lifetime - 1 : 0,
    currentStreak: currentStreak,
    longestStreak: longestStreak,
  );
}

enum TasbihBeadShape {
  wood(
    'Wood',
    1,
    AppColors.woodBase,
    AppColors.woodDeep,
    AppColors.woodHighlight,
  ),
  greenJade(
    'Green Jade',
    2,
    AppColors.jadeBase,
    AppColors.jadeDeep,
    AppColors.jadeHighlight,
  ),
  blackOnyx(
    'Black Onyx',
    3,
    AppColors.onyxBase,
    AppColors.onyxDeep,
    AppColors.onyxHighlight,
  ),
  lapisLazuli(
    'Lapis Lazuli',
    4,
    AppColors.lapisBase,
    AppColors.lapisDeep,
    AppColors.lapisHighlight,
  ),
  redCarnelian(
    'Red Carnelian',
    5,
    AppColors.carnelianBase,
    AppColors.carnelianDeep,
    AppColors.carnelianHighlight,
  ),
  pearl(
    'Pearl',
    6,
    AppColors.pearlBase,
    AppColors.pearlDeep,
    AppColors.pearlHighlight,
  ),
  amethyst(
    'Amethyst',
    7,
    AppColors.amethystBase,
    AppColors.amethystDeep,
    AppColors.amethystHighlight,
  ),
  turquoise(
    'Turquoise',
    8,
    AppColors.turquoiseBase,
    AppColors.turquoiseDeep,
    AppColors.turquoiseHighlight,
  ),
  tigersEye(
    "Tiger's Eye",
    9,
    AppColors.tigersEyeBase,
    AppColors.tigersEyeDeep,
    AppColors.tigersEyeHighlight,
  ),
  goldenEngraved(
    'Golden Engraved',
    10,
    AppColors.goldBase,
    AppColors.goldDeep,
    AppColors.goldHighlight,
  );

  const TasbihBeadShape(
    this.label,
    this.level,
    this.baseColor,
    this.deepColor,
    this.highlightColor,
  );

  final String label;
  final int level;
  final Color baseColor;
  final Color deepColor;
  final Color highlightColor;
  String get imageAsset => 'assets/images/icon/beads/bead_lv$level.webp';

  static TasbihBeadShape fromSavedName(String? name) {
    return TasbihBeadShape.values.firstWhere(
      (shape) => shape.name == name,
      orElse: () => switch (name) {
        'circle' => TasbihBeadShape.wood,
        'diamond' => TasbihBeadShape.greenJade,
        'square' => TasbihBeadShape.blackOnyx,
        'roundedSquare' => TasbihBeadShape.lapisLazuli,
        _ => TasbihBeadShape.wood,
      },
    );
  }
}

class TasbihProvider extends ChangeNotifier {
  TasbihProvider() {
    unawaited(_initSound());
    _load();
  }

  static const _tasbihSoundAsset = 'assets/sounds/tasbih.mp3';
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isSoundReady = false;
  Timer? _saveDebounce;

  TasbihBeadShape _beadShape = TasbihBeadShape.wood;
  TasbihBeadShape get beadShape => _beadShape;
  final Set<int> _unlockedBeadLevels = {1, 2, 3};
  Set<int> get unlockedBeadLevels => Set.unmodifiable(_unlockedBeadLevels);

  bool isBeadUnlocked(TasbihBeadShape shape) {
    return _unlockedBeadLevels.contains(shape.level);
  }

  void setBeadShape(TasbihBeadShape shape) {
    if (!isBeadUnlocked(shape)) return;
    _beadShape = shape;
    _saveAndNotify();
  }

  void unlockBeadShape(TasbihBeadShape shape) {
    _unlockedBeadLevels.add(shape.level);
    _beadShape = shape;
    _saveAndNotify();
  }

  int _count = 0;
  int get count => _count;

  int _lastCount = 0;
  int get lastCount => _lastCount;

  final Map<String, int> _countsByDhikr = {};
  final Map<String, int> _lastCountsByDhikr = {};

  String _currentDhikr = 'SubhanAllah';
  String get currentDhikr => _currentDhikr;

  /// Transliteration values of the built-in dhikrs, kept in sync with the
  /// entries returned by [dhikrContents]. Used to tell built-in vs custom
  /// dhikrs apart when persisting and cycling.
  static const List<String> _builtInDhikrs = [
    'SubhanAllah',
    'Alhamdulillah',
    'Allahu Akbar',
    'La ilaha illallah',
    'Astaghfirullah',
    'SubhanAllahi wa bihamdihi',
    'SubhanAllahil Azim',
    'La hawla wa la quwwata illa billah',
    'Allahumma salli ala Muhammad',
    'Hasbiyallahu la ilaha illa Huwa',
    'Rabbana atina fid-dunya hasanah',
    'Rabbighfir warham wa anta khayrur rahimin',
    'Rabbi zidni ilma',
    'Rabbi inni lima anzalta ilayya min khayrin faqir',
    'Ya Hayyu Ya Qayyum',
    'Bismillah',
    'Alhamdulillahi Rabbil Alamin',
    'Auzu billahi min ash-shaytanir rajim',
    'Inna lillahi wa inna ilayhi rajiun',
    'Rabbi yassir wa la tuassir',
  ];

  /// User-defined dhikr transliterations, appended after the built-in ones.
  final List<String> _customDhikrs = [];
  List<String> get customDhikrs => List.unmodifiable(_customDhikrs);

  /// All selectable dhikr values (built-in followed by custom).
  List<String> get dhikrs => [..._builtInDhikrs, ..._customDhikrs];

  TasbihMode _mode = TasbihMode.count99;
  TasbihMode get mode => _mode;

  int _customGoal = 500;
  int get customGoal => _customGoal;

  int _customRounds = 1;
  int get customRounds => _customRounds;

  int _customCountPerRound = 500;
  int get customCountPerRound => _customCountPerRound;

  int get goal => _mode == TasbihMode.free
      ? 0
      : _mode == TasbihMode.custom
      ? _customRounds * _customCountPerRound
      : _mode.defaultGoal;

  bool get hasGoal => goal > 0;

  String get goalLabel => _mode == TasbihMode.custom
      ? '$_customRounds x $_customCountPerRound'
      : hasGoal
      ? '$goal'
      : 'Free';

  bool _isVibrationEnabled = true;
  bool get isVibrationEnabled => _isVibrationEnabled;

  bool _isSoundEnabled = true;
  bool get isSoundEnabled => _isSoundEnabled;

  bool _autoSave = true;
  bool get autoSave => _autoSave;

  TasbihStats _stats = const TasbihStats();
  TasbihStats get stats => _stats;

  List<DhikrContent> dhikrContents(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final List<DhikrContent> localizedDhikrContents = [
      DhikrContent(
        value: 'SubhanAllah',
        arabic: 'سُبْحَانَ اللَّهِ',
        translation: l10n.gloryBeToAllah,
      ),
      DhikrContent(
        value: 'Alhamdulillah',
        arabic: 'الْحَمْدُ لِلَّهِ',
        translation: l10n.allPraiseIsDueToAllah,
      ),
      DhikrContent(
        value: 'Allahu Akbar',
        arabic: 'اللَّهُ أَكْبَرُ',
        translation: l10n.allahIsTheGreatest,
      ),
      DhikrContent(
        value: 'La ilaha illallah',
        arabic: 'لَا إِلَٰهَ إِلَّا اللَّهُ',
        translation: l10n.thereIsNoDeityExceptAllah,
      ),
      DhikrContent(
        value: 'Astaghfirullah',
        arabic: 'أَسْتَغْفِرُ اللَّهَ',
        translation: l10n.iSeekForgivenessFromAllah,
      ),
      DhikrContent(
        value: 'SubhanAllahi wa bihamdihi',
        arabic: 'سُبْحَانَ اللَّهِ وَبِحَمْدِهِ',
        translation: l10n.gloryAndPraiseBeToAllah,
      ),
      DhikrContent(
        value: 'SubhanAllahil Azim',
        arabic: 'سُبْحَانَ اللَّهِ الْعَظِيمِ',
        translation: l10n.gloryBeToAllahTheMagnificent,
      ),
      DhikrContent(
        value: 'La hawla wa la quwwata illa billah',
        arabic: 'لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ',
        translation: l10n.thereIsNoPowerNorStrengthExceptThrough,
      ),
      DhikrContent(
        value: 'Allahumma salli ala Muhammad',
        arabic: 'اللَّهُمَّ صَلِّ عَلَىٰ مُحَمَّدٍ',
        translation: l10n.oAllahSendBlessingsUponMuhammad,
      ),
      DhikrContent(
        value: 'Hasbiyallahu la ilaha illa Huwa',
        arabic: 'حَسْبِيَ اللَّهُ لَا إِلَٰهَ إِلَّا هُوَ',
        translation: l10n.allahIsSufficientForMeThereIsNo,
      ),
      DhikrContent(
        value: 'Rabbana atina fid-dunya hasanah',
        arabic: 'رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً',
        translation: l10n.ourLordGrantUsGoodInThisWorld,
      ),
      DhikrContent(
        value: 'Rabbighfir warham wa anta khayrur rahimin',
        arabic: 'رَبِّ اغْفِرْ وَارْحَمْ وَأَنْتَ خَيْرُ الرَّاحِمِينَ',
        translation: l10n.myLordForgiveAndHaveMercy,
      ),
      DhikrContent(
        value: 'Rabbi zidni ilma',
        arabic: 'رَبِّ زِدْنِي عِلْمًا',
        translation: l10n.myLordIncreaseMeInKnowledge,
      ),
      DhikrContent(
        value: 'Rabbi inni lima anzalta ilayya min khayrin faqir',
        arabic: 'رَبِّ إِنِّي لِمَا أَنْزَلْتَ إِلَيَّ مِنْ خَيْرٍ فَقِيرٌ',
        translation: l10n.myLordIAmInNeedOfWhatever,
      ),
      DhikrContent(
        value: 'Ya Hayyu Ya Qayyum',
        arabic: 'يَا حَيُّ يَا قَيُّومُ',
        translation: l10n.yaHayyuYaQayyum,
      ),
      DhikrContent(
        value: 'Bismillah',
        arabic: 'بِسْمِ اللَّهِ',
        translation: l10n.inTheNameOfAllah,
      ),
      DhikrContent(
        value: 'Alhamdulillahi Rabbil Alamin',
        arabic: 'الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ',
        translation: l10n.praiseBeToAllahLordOfTheWorlds,
      ),
      DhikrContent(
        value: 'Auzu billahi min ash-shaytanir rajim',
        arabic: 'أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ',
        translation: l10n.iSeekRefugeInAllahFromTheAccursed,
      ),
      DhikrContent(
        value: 'Inna lillahi wa inna ilayhi rajiun',
        arabic: 'إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ',
        translation: l10n.indeedWeBelongToAllahAndToHim,
      ),
      DhikrContent(
        value: 'Rabbi yassir wa la tuassir',
        arabic: 'رَبِّ يَسِّرْ وَلَا تُعَسِّرْ',
        translation: l10n.myLordMakeItEasyAndDoNot,
      ),
    ];

    return [
      ...localizedDhikrContents,
      ..._customDhikrs.map(
        (dhikr) => DhikrContent(
          value: dhikr,
          arabic: dhikr,
          translation: l10n.customDhikr,
        ),
      ),
    ];
  }

  DhikrContent dhikrContentFor(BuildContext context, String dhikr) {
    final l10n = AppLocalizations.of(context);
    return dhikrContents(context).firstWhere(
      (content) => content.value == dhikr,
      orElse: () => DhikrContent(
        value: dhikr,
        arabic: dhikr,
        translation: l10n.customDhikr,
      ),
    );
  }

  void selectNextDhikr() {
    final list = dhikrs;
    if (list.isEmpty) return;
    final currentIndex = list.indexOf(_currentDhikr);
    final nextIndex = currentIndex < 0 ? 0 : (currentIndex + 1) % list.length;
    setDhikr(list[nextIndex]);
  }

  void selectPreviousDhikr() {
    final list = dhikrs;
    if (list.isEmpty) return;
    final currentIndex = list.indexOf(_currentDhikr);
    final previousIndex = currentIndex <= 0
        ? list.length - 1
        : currentIndex - 1;
    setDhikr(list[previousIndex]);
  }

  double get progress {
    if (!hasGoal) return 0;
    return (_count / goal).clamp(0.0, 1.0);
  }

  String get progressText => hasGoal ? '$_count / $goal' : '$_count';

  int get currentRound {
    final cycle = _mode == TasbihMode.custom
        ? _customCountPerRound
        : _mode.defaultGoal;
    if (cycle <= 0) return 1;
    return (_count ~/ cycle) + 1;
  }

  int get countInCycle {
    final cycle = _mode == TasbihMode.custom
        ? _customCountPerRound
        : _mode.defaultGoal;
    if (cycle <= 0) return _count;
    if (_count == 0) return 0;
    return ((_count - 1) % cycle) + 1;
  }

  int get currentCycleGoal {
    return _mode == TasbihMode.custom
        ? _customCountPerRound
        : _mode.defaultGoal;
  }

  void toggleVibration() {
    _isVibrationEnabled = !_isVibrationEnabled;
    _saveAndNotify();
  }

  void toggleSound() {
    _isSoundEnabled = !_isSoundEnabled;
    _saveAndNotify();
  }

  void toggleAutoSave() {
    _autoSave = !_autoSave;
    _saveAndNotify();
  }

  void increment() {
    _lastCount = _count;
    _count++;
    _persistCurrentDhikrCount();
    _stats = _stats.increment();
    unawaited(_playSound());
    _saveAndNotify();
  }

  void undo() {
    if (_count <= 0) return;
    _lastCount = _count;
    _count--;
    _persistCurrentDhikrCount();
    _stats = _stats.decrement();
    _saveAndNotify();
  }

  void reset() {
    _lastCount = _count;
    _count = 0;
    _persistCurrentDhikrCount();
    _saveAndNotify();
  }

  void setDhikr(String dhikr) {
    _persistCurrentDhikrCount();
    _currentDhikr = dhikr;
    _restoreCurrentDhikrCount();
    _saveAndNotify();
  }

  void addCustomDhikr(String dhikr) {
    final value = dhikr.trim();
    if (value.isEmpty || dhikrs.contains(value)) return;
    _persistCurrentDhikrCount();
    _customDhikrs.add(value);
    _currentDhikr = value;
    _restoreCurrentDhikrCount();
    _saveAndNotify();
  }

  void setMode(
    TasbihMode mode, {
    int? customGoal,
    int? customRounds,
    int? customCountPerRound,
  }) {
    _mode = mode;
    if (customGoal != null && customGoal > 0) {
      _customGoal = customGoal;
      _customRounds = 1;
      _customCountPerRound = customGoal;
    }
    if (customRounds != null && customRounds > 0) {
      _customRounds = customRounds;
    }
    if (customCountPerRound != null && customCountPerRound > 0) {
      _customCountPerRound = customCountPerRound;
    }
    _customGoal = _customRounds * _customCountPerRound;
    if (_customGoal <= 0) {
      _customRounds = 1;
      _customCountPerRound = 500;
      _customGoal = 500;
    }
    _count = 0;
    _persistCurrentDhikrCount();
    _saveAndNotify();
  }

  Future<void> _load() async {
    try {
      final file = await _stateFile();
      if (!await file.exists()) return;
      final json =
          jsonDecode(await file.readAsString()) as Map<String, dynamic>;
      _count = (json['count'] as num?)?.toInt() ?? 0;
      _lastCount = (json['lastCount'] as num?)?.toInt() ?? 0;
      _currentDhikr = json['currentDhikr'] as String? ?? _currentDhikr;
      _countsByDhikr
        ..clear()
        ..addAll(_intMapFromJson(json['countsByDhikr']));
      _lastCountsByDhikr
        ..clear()
        ..addAll(_intMapFromJson(json['lastCountsByDhikr']));
      _mode = TasbihMode.values.firstWhere(
        (mode) => mode.name == json['mode'],
        orElse: () => TasbihMode.count99,
      );
      _beadShape = TasbihBeadShape.fromSavedName(json['beadShape'] as String?);
      final unlockedBeads = (json['unlockedBeadLevels'] as List<dynamic>?)
          ?.whereType<num>()
          .map((level) => level.toInt());
      if (unlockedBeads != null) {
        _unlockedBeadLevels
          ..clear()
          ..addAll({1, 2, 3})
          ..addAll(unlockedBeads);
      }
      _unlockedBeadLevels.add(_beadShape.level);
      final savedCustomGoal = (json['customGoal'] as num?)?.toInt() ?? 500;
      _customRounds = (json['customRounds'] as num?)?.toInt() ?? 1;
      _customCountPerRound =
          (json['customCountPerRound'] as num?)?.toInt() ?? savedCustomGoal;
      if (_customRounds <= 0) _customRounds = 1;
      if (_customCountPerRound <= 0) _customCountPerRound = savedCustomGoal;
      _customGoal = _customRounds * _customCountPerRound;
      _isVibrationEnabled = json['isVibrationEnabled'] as bool? ?? true;
      _isSoundEnabled = json['isSoundEnabled'] as bool? ?? true;
      _autoSave = json['autoSave'] as bool? ?? true;
      final customDhikrs = (json['dhikrs'] as List<dynamic>?)
          ?.whereType<String>()
          .toList();
      if (customDhikrs != null) {
        for (final dhikr in customDhikrs) {
          if (!dhikrs.contains(dhikr)) _customDhikrs.add(dhikr);
        }
      }
      _stats = TasbihStats.fromJson(
        (json['stats'] as Map?)?.cast<String, dynamic>() ?? const {},
      );
      if (!_countsByDhikr.containsKey(_currentDhikr) && _count > 0) {
        _persistCurrentDhikrCount();
      } else {
        _restoreCurrentDhikrCount();
      }
      notifyListeners();
    } catch (_) {
      // Keep defaults when local state is unavailable.
    }
  }

  Future<void> _save() async {
    if (!_autoSave) return;
    final file = await _stateFile();
    await file.writeAsString(
      jsonEncode({
        'count': _count,
        'lastCount': _lastCount,
        'currentDhikr': _currentDhikr,
        'mode': _mode.name,
        'beadShape': _beadShape.name,
        'unlockedBeadLevels': _unlockedBeadLevels.toList()..sort(),
        'customGoal': _customGoal,
        'customRounds': _customRounds,
        'customCountPerRound': _customCountPerRound,
        'isVibrationEnabled': _isVibrationEnabled,
        'isSoundEnabled': _isSoundEnabled,
        'autoSave': _autoSave,
        'dhikrs': _customDhikrs,
        'countsByDhikr': _countsByDhikr,
        'lastCountsByDhikr': _lastCountsByDhikr,
        'stats': _stats.toJson(),
      }),
    );
  }

  void _persistCurrentDhikrCount() {
    _countsByDhikr[_currentDhikr] = _count;
    _lastCountsByDhikr[_currentDhikr] = _lastCount;
  }

  void _restoreCurrentDhikrCount() {
    _count = _countsByDhikr[_currentDhikr] ?? 0;
    _lastCount = _lastCountsByDhikr[_currentDhikr] ?? _count;
  }

  Map<String, int> _intMapFromJson(Object? value) {
    final map = (value as Map?)?.cast<String, dynamic>();
    if (map == null) return {};
    return map.map(
      (key, value) => MapEntry(key, (value as num?)?.toInt() ?? 0),
    );
  }

  void _saveAndNotify() {
    notifyListeners();
    _scheduleSave();
  }

  void _scheduleSave() {
    if (!_autoSave) return;
    _saveDebounce?.cancel();
    _saveDebounce = Timer(const Duration(milliseconds: 450), () {
      unawaited(_save());
    });
  }

  Future<void> _initSound() async {
    try {
      await _audioPlayer.setAsset(_tasbihSoundAsset);
      _isSoundReady = true;
    } catch (_) {
      _isSoundReady = false;
    }
  }

  Future<void> _playSound() async {
    if (!_isSoundEnabled) return;
    try {
      if (!_isSoundReady) {
        await _audioPlayer.setAsset(_tasbihSoundAsset);
        _isSoundReady = true;
      }
      await _audioPlayer.seek(Duration.zero);
      await _audioPlayer.play();
    } catch (_) {}
  }

  Future<File> _stateFile() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/tasbih_state.json');
  }

  @override
  void dispose() {
    _saveDebounce?.cancel();
    unawaited(_save());
    _audioPlayer.dispose();
    super.dispose();
  }
}
