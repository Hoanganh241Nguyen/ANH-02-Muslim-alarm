import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';

class AppTypography {
  const AppTypography._();

  static String? get sansFontFamily => GoogleFonts.plusJakartaSans().fontFamily;

  static TextTheme sansTextTheme(Brightness brightness) {
    final base = brightness == Brightness.dark
        ? ThemeData.dark().textTheme
        : ThemeData.light().textTheme;
    return GoogleFonts.plusJakartaSansTextTheme(base);
  }

  static TextStyle screenTitle(
    BuildContext context, {
    Color? color,
    double size = 24,
  }) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
      color: color ?? AppColors.adaptiveText(context),
      fontSize: size,
      fontWeight: FontWeight.w900,
      height: 1.12,
      letterSpacing: 0,
    );
  }

  static TextStyle sectionTitle(
    BuildContext context, {
    Color? color,
    double size = 18,
  }) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
      color: color ?? AppColors.adaptiveText(context),
      fontSize: size,
      fontWeight: FontWeight.w800,
      height: 1.18,
      letterSpacing: 0,
    );
  }

  static TextStyle body(
    BuildContext context, {
    Color? color,
    double size = 13,
    FontWeight weight = FontWeight.w600,
  }) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
      color: color ?? AppColors.adaptiveText(context),
      fontSize: size,
      fontWeight: weight,
      height: 1.35,
      letterSpacing: 0,
    );
  }

  static TextStyle caption(
    BuildContext context, {
    Color? color,
    double size = 11,
    FontWeight weight = FontWeight.w700,
  }) {
    return Theme.of(context).textTheme.labelSmall!.copyWith(
      color: color ?? AppColors.adaptiveSecondaryText(context),
      fontSize: size,
      fontWeight: weight,
      height: 1.25,
      letterSpacing: 0,
    );
  }

  static TextStyle displayIslamic({required Color color, double size = 28}) {
    return GoogleFonts.amiri(
      color: color,
      fontSize: size,
      fontWeight: FontWeight.w700,
      height: 1,
      letterSpacing: 0,
    );
  }

  static TextStyle arabic({
    required Color color,
    required double size,
    FontWeight weight = FontWeight.w700,
    double height = 1.2,
  }) {
    return GoogleFonts.amiri(
      color: color,
      fontSize: size,
      fontWeight: weight,
      height: height,
      letterSpacing: 0,
    );
  }
}
