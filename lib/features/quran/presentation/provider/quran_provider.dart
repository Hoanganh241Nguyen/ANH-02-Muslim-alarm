import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_service/audio_service.dart';
import '../../../gamification/presentation/providers/gamification_provider.dart';
import '../../data/datasources/quran_local_data_source.dart';
import '../../domain/entities/surah.dart';
import '../../domain/entities/ayah.dart';
import '../services/audio_handler.dart';

class QuranProvider extends ChangeNotifier {
  final QuranLocalDataSource localDataSource;
  final QuranAudioHandler audioHandler;
  final GamificationProvider? gamificationProvider;
  Timer? _playbackNotifyThrottle;
  final List<StreamSubscription<dynamic>> _audioSubscriptions = [];
  bool _isDisposed = false;

  QuranProvider({
    required this.localDataSource,
    required this.audioHandler,
    this.gamificationProvider,
  }) {
    _initAudioPlayer();
  }

  void _initAudioPlayer() {
    _audioSubscriptions.add(
      audioHandler.player.playerStateStream.listen((state) {
        if (!_isDisposed) notifyListeners();
      }),
    );

    _audioSubscriptions.add(
      audioHandler.player.sequenceStateStream.listen((sequenceState) {
        if (_isDisposed || sequenceState == null) return;
        final currentIndex = sequenceState.currentIndex;
        if (currentIndex >= 0 && currentIndex < _ayahs.length) {
          _currentAyah = _ayahs[currentIndex];
          if (!_isDisposed) {
            notifyListeners();
          }
        }
      }),
    );

    _audioSubscriptions.add(
      audioHandler.player.positionStream.listen((pos) => _notifyPlaybackSoon()),
    );
    _audioSubscriptions.add(
      audioHandler.player.durationStream.listen((dur) => _notifyPlaybackSoon()),
    );
  }

  List<Surah> _surahs = [];
  List<Surah> _filteredSurahs = [];
  List<Surah> get surahs => _filteredSurahs.isEmpty && _searchQuery.isEmpty
      ? _surahs
      : _filteredSurahs;

  String _searchQuery = "";
  String get searchQuery => _searchQuery;

  void searchSurah(String query) {
    _searchQuery = query.trim();
    if (_searchQuery.isEmpty) {
      _filteredSurahs = [];
    } else {
      final lowerQuery = _searchQuery.toLowerCase();
      _filteredSurahs = _surahs
          .where(
            (s) =>
                s.englishName.toLowerCase().contains(lowerQuery) ||
                s.englishTranslate.toLowerCase().contains(lowerQuery) ||
                s.name.contains(_searchQuery) ||
                s.number.toString() == _searchQuery ||
                (_ayahsBySurah[s.number] ?? const []).any(
                  (ayah) =>
                      ayah.text.toLowerCase().contains(lowerQuery) ||
                      ayah.transliteration.toLowerCase().contains(lowerQuery) ||
                      ayah.translation.toLowerCase().contains(lowerQuery),
                ),
          )
          .toList();
      _filteredSurahs.sort((a, b) {
        final aNameMatch =
            a.englishName.toLowerCase().contains(lowerQuery) ||
            a.englishTranslate.toLowerCase().contains(lowerQuery) ||
            a.name.contains(_searchQuery);
        final bNameMatch =
            b.englishName.toLowerCase().contains(lowerQuery) ||
            b.englishTranslate.toLowerCase().contains(lowerQuery) ||
            b.name.contains(_searchQuery);

        if (aNameMatch && !bNameMatch) return -1;
        if (!aNameMatch && bNameMatch) return 1;
        return a.number.compareTo(b.number);
      });
    }
    notifyListeners();
  }

  // Continue Reading state
  Surah? _lastReadSurah;
  int? _lastReadAyah;
  Surah? get lastReadSurah => _lastReadSurah;
  int? get lastReadAyah => _lastReadAyah;

  void saveLastRead(Surah surah, int ayahNumber) {
    _lastReadSurah = surah;
    _lastReadAyah = ayahNumber;
    notifyListeners();
  }

  List<Ayah> _ayahs = [];
  List<Ayah> get ayahs => _ayahs;

  List<Ayah> _quranList = [];
  List<Ayah> get quranList => _quranList;

  final Map<int, List<Ayah>> _ayahsBySurah = {};
  final Map<int, List<Ayah>> _ayahsByJuz = {};
  final Map<int, List<Ayah>> _ayahsByPage = {};

  List<Ayah> getAyahsByJuz(int juz) => _ayahsByJuz[juz] ?? const [];
  List<Ayah> getAyahsByPage(int page) => _ayahsByPage[page] ?? const [];
  List<int> get pageList {
    final pages = _ayahsByPage.keys.toList()..sort();
    return pages;
  }

  List<Surah> getSurahsForJuz(int juz) {
    final surahNumbers = <int>{};
    for (final ayah in getAyahsByJuz(juz)) {
      surahNumbers.add(ayah.surahNumber);
    }

    return _surahs
        .where((surah) => surahNumbers.contains(surah.number))
        .toList()
      ..sort((a, b) => a.number.compareTo(b.number));
  }

  Surah? firstSurahForJuz(int juz) {
    final ayahs = getAyahsByJuz(juz);
    if (ayahs.isEmpty) return null;
    return _firstSurahByNumber(ayahs.first.surahNumber);
  }

  Surah? firstSurahForPage(int page) {
    final ayahs = getAyahsByPage(page);
    if (ayahs.isEmpty) return null;
    return _firstSurahByNumber(ayahs.first.surahNumber);
  }

  Surah? _firstSurahByNumber(int surahNumber) {
    for (final surah in _surahs) {
      if (surah.number == surahNumber) return surah;
    }
    return _surahs.isEmpty ? null : _surahs.first;
  }

  Surah? _currentSurah;
  Surah? get currentSurah => _currentSurah;

  Ayah? _currentAyah;
  Ayah? get currentAyah => _currentAyah;

  bool _hasActiveAudioSession = false;
  bool get hasActiveAudioSession => _hasActiveAudioSession;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  double _playbackSpeed = 1.0;
  double get playbackSpeed => _playbackSpeed;

  AudioServiceRepeatMode _repeatMode = AudioServiceRepeatMode.none;
  AudioServiceRepeatMode get repeatMode => _repeatMode;

  final List<Ayah> _bookmarks = [];
  List<Ayah> get bookmarks => _bookmarks;

  List<int> get juzList => List.generate(30, (index) => index + 1);

  void toggleBookmark(Ayah ayah) {
    final index = _bookmarks.indexWhere(
      (b) => b.number == ayah.number && b.surahNumber == ayah.surahNumber,
    );
    if (index >= 0) {
      _bookmarks.removeAt(index);
    } else {
      _bookmarks.add(ayah);
    }
    notifyListeners();
  }

  bool isBookmarked(Ayah ayah) {
    return _bookmarks.any(
      (b) => b.number == ayah.number && b.surahNumber == ayah.surahNumber,
    );
  }

  // Audio Getters
  AudioPlayer get audioPlayer => audioHandler.player;
  bool get isPlaying => audioHandler.player.playing;
  Duration get position => audioHandler.player.position;
  Duration get duration => audioHandler.player.duration ?? Duration.zero;

  Future<void> loadSurahs() async {
    _isLoading = true;
    notifyListeners();
    try {
      _quranList = await localDataSource.getAllAyahs();
      _quranList.sort((a, b) => a.globalNumber.compareTo(b.globalNumber));
      _buildQuranIndexes();
      _surahs = await localDataSource.getSurahs();
      _surahs.sort((a, b) => a.number.compareTo(b.number));
      if (_surahs.isNotEmpty && _currentSurah == null) {
        await loadSurahDetail(_surahs.first);
      }
    } catch (e) {
      debugPrint('Error loading surahs: $e');
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> loadSurahDetail(Surah surah) async {
    _currentSurah = surah;
    _isLoading = true;
    notifyListeners();
    try {
      _ayahs =
          _ayahsBySurah[surah.number] ??
          await localDataSource.getAyahs(surah.number);
      if (_ayahs.isNotEmpty) {
        _currentAyah = _ayahs.first;

        // Nạp toàn bộ playlist vào native ngay khi load xong dữ liệu
        final mediaItems = _ayahs
            .map(
              (ayah) => MediaItem(
                id: _audioUriForAyah(ayah).toString(),
                album: _currentSurah?.englishName ?? 'Quran',
                title: ayah.text,
                artist: 'Mishary Rashid Alafasy',
              ),
            )
            .toList();

        await audioHandler.setPlaylist(mediaItems);
      }
    } catch (e) {
      debugPrint('Error loading ayahs: $e');
    }
    _isLoading = false;
    notifyListeners();
  }

  Future<void> playAyah(Ayah ayah) async {
    final index = _ayahs.indexWhere(
      (a) => a.number == ayah.number && a.surahNumber == ayah.surahNumber,
    );

    if (index >= 0) {
      _currentAyah = ayah;
      _hasActiveAudioSession = true;
      notifyListeners();
      try {
        // Phát từ vị trí index trong playlist đã nạp sẵn
        await audioHandler.playAtIndex(index);
        await audioHandler.setSpeed(_playbackSpeed);
        gamificationProvider?.recordAction();
      } catch (e) {
        debugPrint('Error playing audio: $e');
      }
    }
  }

  Uri _audioUriForAyah(Ayah ayah) {
    return Uri.parse(
      'https://f004.backblazeb2.com/file/m27-al-quran/audio/${ayah.globalNumber}.mp3',
    );
  }

  void _buildQuranIndexes() {
    _ayahsBySurah
      ..clear()
      ..addEntries(_groupAyahs((ayah) => ayah.surahNumber).entries);
    _ayahsByJuz
      ..clear()
      ..addEntries(_groupAyahs((ayah) => ayah.juz).entries);
    _ayahsByPage
      ..clear()
      ..addEntries(
        _groupAyahs((ayah) => ayah.page).entries
            .where((entry) => entry.key != null)
            .map((entry) => MapEntry(entry.key!, entry.value)),
      );
  }

  Map<T, List<Ayah>> _groupAyahs<T>(T Function(Ayah ayah) keyOf) {
    final groups = <T, List<Ayah>>{};
    for (final ayah in _quranList) {
      groups.putIfAbsent(keyOf(ayah), () => <Ayah>[]).add(ayah);
    }
    return groups;
  }

  void togglePlay() {
    if (audioHandler.player.playing) {
      audioHandler.pause();
    } else {
      _hasActiveAudioSession = true;
      if (_currentAyah != null) {
        audioHandler.play();
      } else if (_ayahs.isNotEmpty) {
        playAyah(_ayahs.first);
      }
    }
    notifyListeners();
  }

  Future<void> stopAudio() async {
    try {
      await audioHandler.stop();
    } catch (e) {
      debugPrint('Error stopping Quran audio: $e');
    }
    _hasActiveAudioSession = false;
    if (!_isDisposed) notifyListeners();
  }

  Future<void> playNext() async {
    if (audioHandler.player.hasNext) {
      await audioHandler.skipToNext();
    } else {
      // Chuyển sang Surah tiếp theo
      final currentSurahIndex = _surahs.indexWhere(
        (s) => s.number == _currentSurah!.number,
      );
      if (currentSurahIndex < _surahs.length - 1) {
        await loadSurahDetail(_surahs[currentSurahIndex + 1]);
        if (_ayahs.isNotEmpty) {
          await playAyah(_ayahs.first);
        }
      }
    }
  }

  Future<void> playPrevious() async {
    if (audioHandler.player.hasPrevious) {
      await audioHandler.skipToPrevious();
    }
  }

  void seek(Duration position) {
    audioHandler.seek(position);
  }

  void setSpeed(double speed) {
    _playbackSpeed = speed;
    audioHandler.setSpeed(speed);
    notifyListeners();
  }

  void toggleRepeatMode() {
    if (_repeatMode == AudioServiceRepeatMode.none) {
      _repeatMode = AudioServiceRepeatMode.one;
    } else if (_repeatMode == AudioServiceRepeatMode.one) {
      _repeatMode = AudioServiceRepeatMode.all;
    } else {
      _repeatMode = AudioServiceRepeatMode.none;
    }
    audioHandler.setRepeatMode(_repeatMode);
    notifyListeners();
  }

  void _notifyPlaybackSoon() {
    if (_isDisposed) return;
    if (_playbackNotifyThrottle?.isActive ?? false) return;
    _playbackNotifyThrottle = Timer(const Duration(milliseconds: 300), () {
      if (!_isDisposed) notifyListeners();
    });
  }

  @override
  void dispose() {
    _isDisposed = true;
    _playbackNotifyThrottle?.cancel();
    for (final subscription in _audioSubscriptions) {
      subscription.cancel();
    }
    _audioSubscriptions.clear();
    super.dispose();
  }
}
