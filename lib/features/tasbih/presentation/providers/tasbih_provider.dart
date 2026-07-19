import 'package:flutter/material.dart';

class TasbihProvider extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  int _totalCount = 0;
  int get totalCount => _totalCount;

  String _currentDhikr = 'SubhanAllah';
  String get currentDhikr => _currentDhikr;

  final List<String> _dhikrs = [
    'SubhanAllah',
    'Alhamdulillah',
    'Allahu Akbar',
    'La ilaha illa Allah',
    'Astaghfirullah',
  ];
  List<String> get dhikrs => _dhikrs;

  void increment() {
    _count++;
    _totalCount++;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void setDhikr(String dhikr) {
    _currentDhikr = dhikr;
    _count = 0;
    notifyListeners();
  }
}
