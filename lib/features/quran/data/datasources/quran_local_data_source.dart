import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/services.dart';
import '../models/surah_model.dart';
import '../models/ayah_model.dart';

abstract class QuranLocalDataSource {
  Future<List<SurahModel>> getSurahs();
  Future<List<AyahModel>> getAyahs(int surahId);
  Future<List<AyahModel>> getAllAyahs();
}

class QuranLocalDataSourceImpl implements QuranLocalDataSource {
  static const _surahAssetPath = 'assets/json/surah.json';
  static const _ayahFullAssetPath = 'assets/json/ayah_full.json';

  // ayah_full.json is several MB; parse it once, off the UI thread, and share
  // the result between all calls instead of decoding it again each time.
  Future<_QuranData>? _data;

  Future<_QuranData> _load() {
    return _data ??= () async {
      final surahString = await rootBundle.loadString(
        _surahAssetPath,
        cache: false,
      );
      final ayahString = await rootBundle.loadString(
        _ayahFullAssetPath,
        cache: false,
      );
      return Isolate.run(() => _QuranData.parse(surahString, ayahString));
    }();
  }

  @override
  Future<List<SurahModel>> getSurahs() async => (await _load()).surahs;

  @override
  Future<List<AyahModel>> getAyahs(int surahId) async {
    final ayahs = await getAllAyahs();
    return ayahs.where((ayah) => ayah.surahNumber == surahId).toList();
  }

  @override
  Future<List<AyahModel>> getAllAyahs() async => (await _load()).ayahs;
}

class _QuranData {
  const _QuranData(this.surahs, this.ayahs);

  final List<SurahModel> surahs;
  final List<AyahModel> ayahs;

  static _QuranData parse(String surahString, String ayahString) {
    final List<dynamic> surahJson = json.decode(surahString);
    final List<dynamic> ayahJson = json.decode(ayahString);

    final Map<int, int> countMap = {};
    final Map<int, Set<int>> pageMap = {};
    final Map<int, int> firstJuzMap = {};
    for (var a in ayahJson) {
      final int surahId = a['idSurah'];
      countMap[surahId] = (countMap[surahId] ?? 0) + 1;
      final int? page = (a['page'] as num?)?.toInt();
      if (page != null) {
        pageMap.putIfAbsent(surahId, () => <int>{}).add(page);
      }
      firstJuzMap.putIfAbsent(surahId, () => a['juz']);
    }

    final surahs = surahJson.map((s) {
      final int surahNumber = s['number'];
      final pages = pageMap[surahNumber]?.toList();
      pages?.sort();
      return SurahModel.fromJson(
        s,
        ayahsCount: countMap[surahNumber] ?? 0,
        firstPage: pages?.isNotEmpty == true ? pages!.first : null,
        lastPage: pages?.isNotEmpty == true ? pages!.last : null,
        pageCount: pages?.length ?? 0,
        onJuz: firstJuzMap[surahNumber],
      );
    }).toList();
    surahs.sort((a, b) => a.number.compareTo(b.number));

    final ayahs = ayahJson.map((ayah) => AyahModel.fromJson(ayah)).toList();
    ayahs.sort((a, b) => a.globalNumber.compareTo(b.globalNumber));

    return _QuranData(surahs, ayahs);
  }
}
