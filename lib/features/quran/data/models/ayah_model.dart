import '../../domain/entities/ayah.dart';

class AyahModel extends Ayah {
  const AyahModel({
    required super.number,
    required super.surahNumber,
    required super.text,
    required super.translation,
    required super.audioUrl,
  });

  factory AyahModel.fromJson(Map<String, dynamic> arabicJson, Map<String, dynamic> englishJson) {
    return AyahModel(
      number: arabicJson['numberInSurah'],
      surahNumber: arabicJson['idSurah'],
      text: arabicJson['text'],
      translation: englishJson['text'],
      audioUrl: arabicJson['audio'],
    );
  }
}
