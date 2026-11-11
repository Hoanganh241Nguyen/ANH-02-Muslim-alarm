import '../../domain/entities/ayah.dart';

class AyahModel extends Ayah {
  const AyahModel({
    required super.number,
    required super.globalNumber,
    required super.surahNumber,
    required super.text,
    required super.transliteration,
    required super.translation,
    required super.audioUrl,
    required super.juz,
    super.page,
    super.manzil,
    super.ruku,
    required super.hizbQuarter,
  });

  factory AyahModel.fromJson(Map<String, dynamic> json) {
    return AyahModel(
      number: json['numberInSurah'],
      globalNumber: json['number'],
      surahNumber: json['idSurah'],
      text: json['arabic'],
      transliteration: json['transliteration'] ?? '',
      translation: json['translation'] ?? '',
      audioUrl: json['audio'] ?? '',
      juz: json['juz'],
      page: (json['page'] as num?)?.toInt(),
      manzil: (json['manzil'] as num?)?.toInt(),
      ruku: (json['ruku'] as num?)?.toInt(),
      hizbQuarter: (json['hizbQuarter'] as num?)?.toInt() ?? 0,
    );
  }
}
