import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: AppTypography.sansFontFamily,
      primaryColor: AppColors.emerald,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.emerald,
        primary: AppColors.emerald,
        brightness: Brightness.light,
      ),
      cardTheme: const CardThemeData(
        color: AppColors.cardBackground,
        elevation: 2,
      ),
      textTheme: AppTypography.sansTextTheme(Brightness.light),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: AppColors.ink,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.displayIslamic(
          color: AppColors.ink,
          size: 22,
        ),
      ),
    );
  }

  static ThemeData get dark {
    final background = AppColors.darkBackground;
    final surface = AppColors.darkSurface;
    final text = AppColors.darkText;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      fontFamily: AppTypography.sansFontFamily,
      primaryColor: AppColors.emerald,
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.emerald,
        primary: AppColors.emerald,
        brightness: Brightness.dark,
        surface: surface,
      ),
      cardTheme: CardThemeData(color: surface, elevation: 2),
      dialogTheme: DialogThemeData(backgroundColor: surface),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: surface,
        modalBackgroundColor: surface,
      ),
      textTheme: AppTypography.sansTextTheme(
        Brightness.dark,
      ).apply(bodyColor: text, displayColor: text),
      appBarTheme: AppBarTheme(
        backgroundColor: surface,
        foregroundColor: text,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: AppTypography.displayIslamic(color: text, size: 22),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white.withValues(alpha: .08),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: .12)),
        ),
      ),
    );
  }
}
