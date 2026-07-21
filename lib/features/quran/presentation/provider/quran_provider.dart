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

  QuranProvider({
    required this.localDataSource,
    required this.audioHandler,
    this.gamificationProvider,
  }) {
    _initAudioPlayer();
  }

  void _initAudioPlayer() {
    audioHandler.player.playerStateStream.listen((state) {
      notifyListeners();
    });

    audioHandler.player.sequenceStateStream.listen((sequenceState) {
      if (sequenceState != null) {
        final currentIndex = sequenceState.currentIndex;
        if (currentIndex >= 0 && currentIndex < _ayahs.length) {
          _currentAyah = _ayahs[currentIndex];
          notifyListeners();
        }
      }
    });

    audioHandler.player.positionStream.listen((pos) => notifyListeners());
    audioHandler.player.durationStream.listen((dur) => notifyListeners());
  }

  List<Surah> _surahs = [];
  List<Surah> _filteredSurahs = [];
  List<Surah> get surahs => _filteredSurahs.isEmpty && _searchQuery.isEmpty ? _surahs : _filteredSurahs;

  String _searchQuery = "";
  String get searchQuery => _searchQuery;
  
  void searchSurah(String query) {
    _searchQuery = query;
    if (query.isEmpty) {
      _filteredSurahs = [];
    } else {
      _filteredSurahs = _surahs.where((s) => 
        s.englishName.toLowerCase().contains(query.toLowerCase()) ||
        s.name.contains(query) ||
        s.number.toString() == query
      ).toList();
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

  Surah? _currentSurah;
  Surah? get currentSurah => _currentSurah;

  Ayah? _currentAyah;
  Ayah? get currentAyah => _currentAyah;

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
      _surahs = await localDataSource.getSurahs();
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
      _ayahs = await localDataSource.getAyahs(surah.number);
      if (_ayahs.isNotEmpty) {
        _currentAyah = _ayahs.first;

        // Nạp toàn bộ playlist vào native ngay khi load xong dữ liệu
        final mediaItems = _ayahs.map((ayah) => MediaItem(
          id: _audioUriForAyah(ayah).toString(),
          album: _currentSurah?.englishName ?? 'Quran',
          title: ayah.text,
          artist: 'Mishary Rashid Alafasy',
        )).toList();
        
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
      'https://cdn.islamic.network/quran/audio/128/ar.alafasy/${ayah.audioUrl}',
    );
  }

  void togglePlay() {
    if (audioHandler.player.playing) {
      audioHandler.pause();
    } else {
      if (_currentAyah != null) {
        audioHandler.play();
      } else if (_ayahs.isNotEmpty) {
        playAyah(_ayahs.first);
      }
    }
    notifyListeners();
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

}
