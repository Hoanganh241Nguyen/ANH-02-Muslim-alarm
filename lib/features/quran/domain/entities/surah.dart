import 'package:equatable/equatable.dart';

class Surah extends Equatable {
  final int number;
  final String name;
  final String englishName;
  final String englishTranslate;
  final String revelationType;
  final int numberOfAyahs;
  final int? firstPage;
  final int? lastPage;
  final int pageCount;
  final int? onJuz;

  const Surah({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishTranslate,
    required this.revelationType,
    required this.numberOfAyahs,
    this.firstPage,
    this.lastPage,
    this.pageCount = 0,
    this.onJuz,
  });

  @override
  List<Object?> get props => [
    number,
    name,
    englishName,
    englishTranslate,
    revelationType,
    numberOfAyahs,
    firstPage,
    lastPage,
    pageCount,
    onJuz,
  ];
}
