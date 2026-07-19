import 'package:equatable/equatable.dart';

class Ayah extends Equatable {
  final int number;
  final int surahNumber;
  final String text;
  final String translation;
  final String audioUrl;

  const Ayah({
    required this.number,
    required this.surahNumber,
    required this.text,
    required this.translation,
    required this.audioUrl,
  });

  @override
  List<Object?> get props => [number, surahNumber, text, translation, audioUrl];
}
