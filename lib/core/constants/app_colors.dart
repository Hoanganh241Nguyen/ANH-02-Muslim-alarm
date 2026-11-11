import 'package:flutter/material.dart';

class AppColors {
  static const Color emerald = Color(0xFF0F6B5A);
  static const Color darkEmerald = Color(0xFF0B5146);
  static const Color darkBackground = Color(0xFF031F1C);
  static const Color darkSurface = Color(0xFF0B332E);
  static const Color darkCard = Color(0xFF0F3F38);
  static const Color background = Color(0xFFF8FAFC);
  static const Color ivory = Color(0xFFFCF9F2);
  static const Color cardBackground = Colors.white;
  static const Color primaryText = Color(0xFF1E293B);
  static const Color secondaryText = Color(0xFF64748B);
  static const Color accentEmerald = Color(0xFFE6F1EF);
  static const Color gold = Color(0xFFF59E0B);
  static const Color softGold = Color(0xFFECC96B);
  static const Color streakBg = Color(0xFFFEF3C7);
  static const Color ink = Color(0xFF183A34);
  static const Color classicGold = Color(0xFFD4AF37);
  static const Color deepGreen = Color(0xFF0D2D27);
  static const Color cream = Color(0xFFFAF6EE);
  static const Color silverGrey = Color(0xFF9AA39F);
  static const Color darkGrey = Color(0xFF202224);
  static const Color lightGreyBg = Color(0xFFF1EFE8);
  static const Color mutedGreen = Color(0xFF4D5A55);
  static const Color lightGreenishGrey = Color(0xFFE8EEE9);
  static const Color lime = Color(0xFF97D12D);
  static const Color deepEmerald = Color(0xFF064E3B);
  static const Color amber = Color(0xFFD97706);
  static const Color streakLight = Color(0xFFFEF3C7);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color midnight = Color(0xFF020F12);
  static const Color forestGreen = Color(0xFF1A6928);
  static const Color brightGreen = Color(0xFF5BB220);
  static const Color darkForest = Color(0xFF083D23);
  static const Color deepTeal = Color(0x91001D1F);
  static const Color borderGreen = Color(0x5076D559);
  static const Color limeGreen = Color(0xFFBAE747);
  static const Color leafGreen = Color(0xFF52A31C);
  static const Color darkTeal = Color(0xBE052629);
  static const Color mutedTeal = Color(0x5F3F8466);
  static const Color mediumEmerald = Color(0xFF059669);
  static const Color successGreen = Color(0xFF10B981);
  static const Color hasanatGold = Color(0xFFFBBF24);
  static const Color mapBackground = Color(0xFF0D1B2A);

  // Backgrounds & Surfaces
  static const Color historyChartBg = Color(0xFFF9F7EC);
  static const Color selectorBg = Color(0xFFFFFCF2);
  static const Color quranBg = Color(0xFFFFFBF1);
  static const Color quranDeepGreen = Color(0xFF063F35);
  static const Color quranLightGreen = Color(0xFF078061);
  static const Color quranDarkGreen = Color(0xFF021F1B);
  static const Color quranMutedGreen = Color(0xFF066A55);
  static const Color quranPrimary = Color(0xFF066653);
  static const Color quranDarkBg = Color(0xFF082F2A);
  static const Color mainDarkBg = Color(0xFF073B34);

  // Bead Colors - Wood
  static const Color woodBase = Color(0xFF8B4D24);
  static const Color woodDeep = Color(0xFF3A1C0B);
  static const Color woodHighlight = Color(0xFFD29A54);

  // Bead Colors - Green Jade
  static const Color jadeBase = Color(0xFF0E8B5D);
  static const Color jadeDeep = Color(0xFF053B2E);
  static const Color jadeHighlight = Color(0xFF73D9A7);

  // Bead Colors - Black Onyx
  static const Color onyxBase = Color(0xFF101D1B);
  static const Color onyxDeep = Color(0xFF020606);
  static const Color onyxHighlight = Color(0xFF748D84);

  // Bead Colors - Lapis Lazuli
  static const Color lapisBase = Color(0xFF184EAC);
  static const Color lapisDeep = Color(0xFF071B57);
  static const Color lapisHighlight = Color(0xFF86B8FF);

  // Bead Colors - Red Carnelian
  static const Color carnelianBase = Color(0xFF9E241B);
  static const Color carnelianDeep = Color(0xFF3A0806);
  static const Color carnelianHighlight = Color(0xFFFFA071);

  // Bead Colors - Pearl
  static const Color pearlBase = Color(0xFFF4EFE1);
  static const Color pearlDeep = Color(0xFF9D9686);
  static const Color pearlHighlight = Color(0xFFFFFFFF);

  // Bead Colors - Amethyst
  static const Color amethystBase = Color(0xFF6C35A8);
  static const Color amethystDeep = Color(0xFF27103E);
  static const Color amethystHighlight = Color(0xFFD2A2FF);

  // Bead Colors - Turquoise
  static const Color turquoiseBase = Color(0xFF18AFC3);
  static const Color turquoiseDeep = Color(0xFF064652);
  static const Color turquoiseHighlight = Color(0xFF9AF0F0);

  // Bead Colors - Tiger's Eye
  static const Color tigersEyeBase = Color(0xFF8B5217);
  static const Color tigersEyeDeep = Color(0xFF251003);
  static const Color tigersEyeHighlight = Color(0xFFE2A449);

  // Bead Colors - Golden Engraved
  static const Color goldBase = Color(0xFFD5A538);
  static const Color goldDeep = Color(0xFF65420A);
  static const Color goldHighlight = Color(0xFFFFE58A);

  // Prayer Alarm & Overlays
  static const Color darkOverlay = Color(0xC800090C);
  static const Color deepOverlay = Color(0xE000080B);
  static const Color shadowBlack = Color(0x26000000);
  static const Color lightShadowBlack = Color(0x0D000000);

  // Qibla & Map
  static const Color qiblaGrey = Color(0xFF1F2937);
  static const Color mapGrey = Color(0xFF4B5563);
  static const Color textGrey = Color(0xFF9CA3AF);
  static const Color mutedGrey = Color(0xFF6B7280);
  static const Color darkGrey2 = Color(0xFF374151);
  static const Color bronze = Color(0xFFB8860B);

  static const Color darkText = Color(0xFFF6FBF8);
  static const Color darkSecondaryText = Color(0xFFC9D9D3);
  static const Color darkInk = Color(0xFFF5F2DC);

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static Color adaptiveText(BuildContext context) =>
      isDark(context) ? darkText : primaryText;

  static Color adaptiveInk(BuildContext context) =>
      isDark(context) ? darkInk : ink;

  static Color adaptiveSecondaryText(BuildContext context) =>
      isDark(context) ? darkSecondaryText : secondaryText;

  static Color adaptiveCard(BuildContext context, {double lightAlpha = 0.86}) =>
      isDark(context)
      ? darkCard.withValues(alpha: 0.86)
      : Colors.white.withValues(alpha: lightAlpha);

  static Color adaptiveBorder(BuildContext context, {double alpha = 0.18}) =>
      isDark(context)
      ? softGold.withValues(alpha: alpha + 0.08)
      : Colors.white.withValues(alpha: 0.65);

  static Color adaptiveAccent(BuildContext context) =>
      isDark(context) ? softGold : emerald;

  static Color adaptiveMutedSurface(BuildContext context) => isDark(context)
      ? Colors.white.withValues(alpha: 0.08)
      : Colors.white.withValues(alpha: 0.62);
}
