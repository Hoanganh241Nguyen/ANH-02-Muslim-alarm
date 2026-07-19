import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';

class QuranAudioHandler extends BaseAudioHandler with SeekHandler {
  final AudioPlayer _player = AudioPlayer();
  final AudioPlayer _preloadPlayer = AudioPlayer();
  AudioServiceRepeatMode _repeatMode = AudioServiceRepeatMode.none;
  Uri? _preloadedUri;

  late ConcatenatingAudioSource _playlist;

  QuranAudioHandler() {
    _playlist = ConcatenatingAudioSource(
      children: [],
      useLazyPreparation: true, // Chỉ chuẩn bị khi cần thiết để khởi động cực nhanh
    );
    _player.playbackEventStream.map(_transformEvent).pipe(playbackState);

    // Lắng nghe sự thay đổi index để cập nhật MediaItem hiện tại
    _player.currentIndexStream.listen((index) {
      if (index != null && index < _playlist.length) {
        final item = _playlist.children[index];
        if (item is UriAudioSource && item.tag is MediaItem) {
          mediaItem.add(item.tag as MediaItem);
        }
      }
    });

    _player.playerStateStream.listen((state) {
      if (state.processingState == ProcessingState.completed) {
        customEvent.add('completed');
      }
    });
  }

  Future<void> setPlaylist(List<MediaItem> items) async {
    final sources = items.map((item) => AudioSource.uri(
      Uri.parse(item.id), 
      tag: item,
    )).toList();
    
    _playlist = ConcatenatingAudioSource(children: sources);
    
    // KHÔNG await ở đây để UI không bị block bởi network
    _player.setAudioSource(_playlist, preload: true).catchError((e) {
      print("Preload error: $e");
      return null;
    });
  }

  Future<void> playAtIndex(int index) async {
    if (index < 0 || index >= _playlist.length) return;
    await _player.seek(Duration.zero, index: index);
    _player.play();
  }

  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> stop() => _player.stop();

  @override
  Future<void> skipToNext() => _player.seekToNext();

  @override
  Future<void> skipToPrevious() => _player.seekToPrevious();

  @override
  Future<void> playFromUri(Uri uri, [Map<String, dynamic>? extras]) async {
    // Giữ lại để tương thích ngược nếu cần, nhưng sẽ ưu tiên dùng playlist
    final mediaItem = MediaItem(
      id: uri.toString(),
      album: extras?['surahName'] ?? 'Quran',
      title: extras?['ayahText'] ?? 'Ayah',
      artist: 'Mishary Rashid Alafasy',
    );
    this.mediaItem.add(mediaItem);
    await _player.setAudioSource(AudioSource.uri(uri, tag: mediaItem));
    _player.play();
  }

  Future<void> preloadUri(Uri uri) async {
    if (_preloadedUri == uri) return;
    _preloadedUri = uri;
    
    try {
      // Preload vào chính player chính nếu đang idle hoặc nạp trước vào bộ nhớ đệm của OS
      await _preloadPlayer.setAudioSource(AudioSource.uri(uri));
    } catch (_) {}
  }


  @override
  Future<void> setSpeed(double speed) async {
    await _player.setSpeed(speed);
    playbackState.add(playbackState.value.copyWith(speed: speed));
  }

  @override
  Future<void> setRepeatMode(AudioServiceRepeatMode repeatMode) async {
    _repeatMode = repeatMode;
    switch (repeatMode) {
      case AudioServiceRepeatMode.none:
        await _player.setLoopMode(LoopMode.off);
        break;
      case AudioServiceRepeatMode.one:
        await _player.setLoopMode(LoopMode.one);
        break;
      case AudioServiceRepeatMode.all:
      case AudioServiceRepeatMode.group:
        // Chế độ lặp toàn bộ Surah sẽ được điều khiển bởi Provider thông qua logic playNext
        await _player.setLoopMode(LoopMode.off);
        break;
    }
    playbackState.add(playbackState.value.copyWith(repeatMode: repeatMode));
  }

  PlaybackState _transformEvent(PlaybackEvent event) {
    return PlaybackState(
      controls: [
        MediaControl.skipToPrevious,
        if (_player.playing) MediaControl.pause else MediaControl.play,
        MediaControl.stop,
        MediaControl.skipToNext,
      ],
      systemActions: const {
        MediaAction.seek,
        MediaAction.seekForward,
        MediaAction.seekBackward,
        MediaAction.setRepeatMode,
        MediaAction.setSpeed,
      },
      androidCompactActionIndices: const [0, 1, 3],
      processingState: const {
        ProcessingState.idle: AudioProcessingState.idle,
        ProcessingState.loading: AudioProcessingState.loading,
        ProcessingState.buffering: AudioProcessingState.buffering,
        ProcessingState.ready: AudioProcessingState.ready,
        ProcessingState.completed: AudioProcessingState.completed,
      }[_player.processingState]!,
      playing: _player.playing,
      updatePosition: _player.position,
      bufferedPosition: _player.bufferedPosition,
      speed: _player.speed,
      repeatMode: _repeatMode,
    );
  }

  AudioPlayer get player => _player;
}
