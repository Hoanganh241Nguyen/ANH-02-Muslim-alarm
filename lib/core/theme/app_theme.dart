import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.emerald,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.emerald,
        primary: AppColors.emerald,
      ),
      cardTheme: const CardThemeData(
        color: AppColors.cardBackground,
        elevation: 2,
      ),
    );
  }
}
