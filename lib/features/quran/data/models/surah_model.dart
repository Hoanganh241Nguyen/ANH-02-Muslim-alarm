import '../../domain/entities/surah.dart';

class SurahModel extends Surah {
  const SurahModel({
    required super.number,
    required super.name,
    required super.englishName,
    required super.englishTranslate,
    required super.revelationType,
    required super.numberOfAyahs,
    super.firstPage,
    super.lastPage,
    super.pageCount,
    super.onJuz,
  });

  factory SurahModel.fromJson(
    Map<String, dynamic> json, {
    required int ayahsCount,
    int? firstPage,
    int? lastPage,
    int pageCount = 0,
    int? onJuz,
  }) {
    return SurahModel(
      number: json['number'],
      name: json['name'],
      englishName: json['englishName'],
      englishTranslate: json['englishTranslate'],
      revelationType: json['revelationType'],
      numberOfAyahs: ayahsCount,
      firstPage: firstPage,
      lastPage: lastPage,
      pageCount: pageCount,
      onJuz: onJuz,
    );
  }
}
