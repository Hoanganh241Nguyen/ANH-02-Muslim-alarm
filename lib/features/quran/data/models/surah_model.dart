import '../../domain/entities/surah.dart';

class SurahModel extends Surah {
  const SurahModel({
    required super.number,
    required super.name,
    required super.englishName,
    required super.englishTranslate,
    required super.revelationType,
    required super.numberOfAyahs,
  });

  factory SurahModel.fromJson(Map<String, dynamic> json, int ayahsCount) {
    return SurahModel(
      number: json['number'],
      name: json['name'],
      englishName: json['englishName'],
      englishTranslate: json['englishTranslate'],
      revelationType: json['revelationType'],
      numberOfAyahs: ayahsCount,
    );
  }
}
