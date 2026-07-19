import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

class AudioDownloadService {
  static final AudioDownloadService _instance = AudioDownloadService._internal();
  factory AudioDownloadService() => _instance;
  AudioDownloadService._internal();

  final Dio _dio = Dio();

  Future<String> getLocalPath(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/$fileName';
  }

  Future<bool> isFileDownloaded(String fileName) async {
    final path = await getLocalPath(fileName);
    return File(path).exists();
  }

  Future<void> downloadAdhanFiles() async {
    final files = {
      'adhan.mp3': 'https://www.islamcan.com/common/adhan/adhan1.mp3',
      'adhan_fajr.mp3': 'https://www.islamcan.com/common/adhan/adhan2.mp3',
    };

    for (var entry in files.entries) {
      if (!await isFileDownloaded(entry.key)) {
        try {
          final path = await getLocalPath(entry.key);
          debugPrint('Downloading ${entry.key} to $path...');
          await _dio.download(entry.value, path);
          debugPrint('Downloaded ${entry.key}');
        } catch (e) {
          debugPrint('Error downloading ${entry.key}: $e');
        }
      }
    }
  }

  Future<File?> getLocalAudioFile(String fileName) async {
    final path = await getLocalPath(fileName);
    final file = File(path);
    if (await file.exists()) {
      return file;
    }
    return null;
  }
}
