import 'package:equatable/equatable.dart';

class Ayah extends Equatable {
  final int number;
  final int globalNumber;
  final int surahNumber;
  final String text;
  final String transliteration;
  final String translation;
  final String audioUrl;
  final int juz;
  final int? page;
  final int? manzil;
  final int? ruku;
  final int hizbQuarter;

  const Ayah({
    required this.number,
    required this.globalNumber,
    required this.surahNumber,
    required this.text,
    required this.transliteration,
    required this.translation,
    required this.audioUrl,
    required this.juz,
    this.page,
    this.manzil,
    this.ruku,
    required this.hizbQuarter,
  });

  @override
  List<Object?> get props => [
    number,
    globalNumber,
    surahNumber,
    text,
    transliteration,
    translation,
    audioUrl,
    juz,
    page,
    manzil,
    ruku,
    hizbQuarter,
  ];
}
