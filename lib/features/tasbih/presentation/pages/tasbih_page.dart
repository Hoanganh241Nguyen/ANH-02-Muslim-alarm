import 'dart:async';
import 'dart:math' as math;
import 'dart:ui' show PathMetric;

import 'package:flutter/material.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/widgets/app_settings_button.dart';
import '../../../../core/widgets/base_app_bar.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../gamification/presentation/providers/gamification_provider.dart';
import '../providers/tasbih_provider.dart';

part 'tasbih_page_parts/custom_goal_config.dart';
part 'tasbih_page_parts/custom_dhikr_sheet.dart';
part 'tasbih_page_parts/custom_goal_popup_card.dart';
part 'tasbih_page_parts/tasbih_page_state.dart';
part 'tasbih_page_parts/tasbih_app_bar.dart';
part 'tasbih_page_parts/dhikr_selector.dart';
part 'tasbih_page_parts/mode_selector.dart';
part 'tasbih_page_parts/progress_card.dart';
part 'tasbih_page_parts/progress_metric.dart';
part 'tasbih_page_parts/tap_stage.dart';
part 'tasbih_page_parts/counter_text.dart';
part 'tasbih_page_parts/curved_bead_strand.dart';
part 'tasbih_page_parts/curved_string_painter.dart';
part 'tasbih_page_parts/tasbih_bead.dart';
part 'tasbih_page_parts/card_decoration.dart';

const _emerald = AppColors.emerald;
const _gold = AppColors.classicGold;
const _ink = AppColors.ink;

bool _tasbihDark(BuildContext context) =>
    Theme.of(context).brightness == Brightness.dark;
Color _tasbihInk(BuildContext context) =>
    _tasbihDark(context) ? AppColors.darkInk : AppColors.ink;
Color _tasbihMuted(BuildContext context) => _tasbihDark(context)
    ? AppColors.darkSecondaryText
    : AppColors.secondaryText;
Color _tasbihAccent(BuildContext context) =>
    _tasbihDark(context) ? AppColors.softGold : _emerald;
Color _tasbihCard(BuildContext context, {double opacity = .82}) =>
    _tasbihDark(context)
    ? AppColors.darkCard.withValues(alpha: opacity)
    : Colors.white.withValues(alpha: opacity);
Color _tasbihBorder(BuildContext context, {double alpha = .18}) =>
    _tasbihDark(context)
    ? AppColors.softGold.withValues(alpha: alpha)
    : Colors.white.withValues(alpha: .65);

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  State<TasbihPage> createState() => _TasbihPageState();
}
