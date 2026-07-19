import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/surah_model.dart';
import '../models/ayah_model.dart';

abstract class QuranLocalDataSource {
  Future<List<SurahModel>> getSurahs();
  Future<List<AyahModel>> getAyahs(int surahId);
}

class QuranLocalDataSourceImpl implements QuranLocalDataSource {
  @override
  Future<List<SurahModel>> getSurahs() async {
    final String surahString = await rootBundle.loadString('lib/assets/json/surah.json');
    final List<dynamic> surahJson = json.decode(surahString);
    
    final String ayahString = await rootBundle.loadString('lib/assets/json/ayah.json');
    final List<dynamic> ayahJson = json.decode(ayahString);

    // Tối ưu hóa: Đếm số lượng Ayah bằng Map để chỉ duyệt 1 lần
    final Map<int, int> countMap = {};
    for (var a in ayahJson) {
      final int surahId = a['idSurah'];
      countMap[surahId] = (countMap[surahId] ?? 0) + 1;
    }

    return surahJson.map((s) {
      final int surahNumber = s['number'];
      return SurahModel.fromJson(s, countMap[surahNumber] ?? 0);
    }).toList();
  }

  @override
  Future<List<AyahModel>> getAyahs(int surahId) async {
    final String arabicString = await rootBundle.loadString('lib/assets/json/ayah.json');
    final List<dynamic> arabicJson = json.decode(arabicString);
    
    final String englishString = await rootBundle.loadString('lib/assets/json/ayah_en.json');
    final List<dynamic> englishJson = json.decode(englishString);

    final List<AyahModel> ayahs = [];
    for (var i = 0; i < arabicJson.length; i++) {
      if (arabicJson[i]['idSurah'] == surahId) {
        ayahs.add(AyahModel.fromJson(arabicJson[i], englishJson[i]));
      }
    }
    return ayahs;
  }
}
