import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../gamification/presentation/providers/gamification_provider.dart';
import '../providers/tasbih_provider.dart';

const _emerald = Color(0xFF118C6F);
const _cream = Color(0xFFFAF5EB);
const _gold = Color(0xFFD4AF37);
const _ink = Color(0xFF183A34);

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  State<TasbihPage> createState() => _TasbihPageState();
}

class _TasbihPageState extends State<TasbihPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _tapController;

  @override
  void initState() {
    super.initState();
    _tapController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 720),
    );
  }

  Animation<double> get _beadScale => TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween<double>(
        begin: 1,
        end: .94,
      ).chain(CurveTween(curve: Curves.easeOutSine)),
      weight: 38,
    ),
    TweenSequenceItem(
      tween: Tween<double>(
        begin: .94,
        end: 1,
      ).chain(CurveTween(curve: Curves.easeOutCubic)),
      weight: 62,
    ),
  ]).animate(_tapController);

  Animation<double> get _glow => TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween<double>(
        begin: 0,
        end: 1,
      ).chain(CurveTween(curve: Curves.easeOut)),
      weight: 42,
    ),
    TweenSequenceItem(
      tween: Tween<double>(
        begin: 1,
        end: 0,
      ).chain(CurveTween(curve: Curves.easeOut)),
      weight: 58,
    ),
  ]).animate(_tapController);

  Animation<double> get _strandSlide => TweenSequence<double>([
    TweenSequenceItem(
      tween: Tween<double>(
        begin: 0,
        end: .36,
      ).chain(CurveTween(curve: Curves.easeInOutSine)),
      weight: 40,
    ),
    TweenSequenceItem(
      tween: Tween<double>(
        begin: .36,
        end: .72,
      ).chain(CurveTween(curve: Curves.easeOutCubic)),
      weight: 16,
    ),
    TweenSequenceItem(
      tween: Tween<double>(
        begin: .72,
        end: 1,
      ).chain(CurveTween(curve: Curves.easeOutSine)),
      weight: 44,
    ),
  ]).animate(_tapController);

  @override
  void dispose() {
    _tapController.dispose();
    super.dispose();
  }

  Future<void> _count(TasbihProvider provider) async {
    if (provider.isVibrationEnabled) {
      HapticFeedback.lightImpact();
    }
    provider.increment();
    context.read<GamificationProvider>().recordAction();
    await _tapController.forward(from: 0);
    if (mounted) _tapController.reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          const Positioned.fill(child: _TasbihBackground()),
          SafeArea(
            child: Consumer<TasbihProvider>(
              builder: (context, provider, child) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    final compact = constraints.maxHeight < 680;
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(
                        20,
                        12,
                        20,
                        compact ? 98 : 112,
                      ),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight:
                              constraints.maxHeight - (compact ? 110 : 124),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            _TasbihAppBar(
                              onAddDhikr: () => _showCustomDhikrSheet(provider),
                            ),
                            SizedBox(height: compact ? 12 : 16),
                            _DhikrSelector(
                              provider: provider,
                              onAddCustom: () =>
                                  _showCustomDhikrSheet(provider),
                            ),
                            SizedBox(height: compact ? 12 : 16),
                            _ModeSelector(
                              provider: provider,
                              onModeSelected: (mode) =>
                                  _confirmModeChange(provider, mode),
                            ),
                            SizedBox(height: compact ? 14 : 20),
                            _ProgressCard(provider: provider),
                            SizedBox(height: compact ? 12 : 18),
                            _TapStage(
                              provider: provider,
                              compact: compact,
                              beadScale: _beadScale,
                              glow: _glow,
                              strandSlide: _strandSlide,
                              onTap: () => _count(provider),
                            ),
                            SizedBox(height: compact ? 14 : 18),
                            _QuickActions(provider: provider),
                            SizedBox(height: compact ? 14 : 18),
                            _StatsGrid(stats: provider.stats),
                            const SizedBox(height: 14),
                            _HistoryPreview(provider: provider),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _confirmModeChange(
    TasbihProvider provider,
    TasbihMode mode,
  ) async {
    if (mode == provider.mode) return;
    final customGoal = mode == TasbihMode.custom
        ? await _showCustomGoalSheet(provider.customGoal)
        : null;
    if (mode == TasbihMode.custom && customGoal == null) return;
    if (!mounted) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Change Tasbih mode?'),
        content: const Text('Current progress will reset for the new mode.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Change'),
          ),
        ],
      ),
    );
    if (confirmed == true) {
      provider.setMode(mode, customGoal: customGoal);
    }
  }

  Future<int?> _showCustomGoalSheet(int currentGoal) async {
    final controller = TextEditingController(text: '$currentGoal');
    return showModalBottomSheet<int>(
      context: context,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          8,
          20,
          MediaQuery.of(context).viewInsets.bottom + 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Custom Goal',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 14),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Goal',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),
            FilledButton(
              onPressed: () {
                final value = int.tryParse(controller.text);
                if (value != null && value > 0) Navigator.pop(context, value);
              },
              child: const Text('Save Goal'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showCustomDhikrSheet(TasbihProvider provider) async {
    final controller = TextEditingController();
    final result = await showModalBottomSheet<String>(
      context: context,
      showDragHandle: true,
      builder: (context) => Padding(
        padding: EdgeInsets.fromLTRB(
          20,
          8,
          20,
          MediaQuery.of(context).viewInsets.bottom + 24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Custom Dhikr',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 14),
            TextField(
              controller: controller,
              autofocus: true,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Dhikr',
                hintText: 'e.g. HasbunAllah',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 14),
            FilledButton.icon(
              onPressed: () => Navigator.pop(context, controller.text),
              icon: const Icon(Icons.add_rounded),
              label: const Text('Add Dhikr'),
            ),
          ],
        ),
      ),
    );
    if (result != null) provider.addCustomDhikr(result);
  }
}

class _TasbihBackground extends StatelessWidget {
  const _TasbihBackground();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFBF2DF), _cream, Color(0xFFF7E9CF)],
        ),
      ),
      child: CustomPaint(painter: _TasbihBackgroundPainter()),
    );
  }
}

class _TasbihBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final patternPaint = Paint()
      ..color = _emerald.withValues(alpha: .035)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    const step = 34.0;
    for (double y = -step; y < size.height * .55; y += step) {
      for (double x = -step; x < size.width + step; x += step) {
        final path = Path()
          ..moveTo(x + step / 2, y)
          ..lineTo(x + step, y + step / 2)
          ..lineTo(x + step / 2, y + step)
          ..lineTo(x, y + step / 2)
          ..close();
        canvas.drawPath(path, patternPaint);
      }
    }

    final lightPaint = Paint()
      ..shader =
          RadialGradient(
            colors: [
              Colors.white.withValues(alpha: .68),
              _gold.withValues(alpha: .08),
              Colors.transparent,
            ],
          ).createShader(
            Rect.fromCircle(
              center: Offset(size.width / 2, size.height * .47),
              radius: size.width * .54,
            ),
          );
    canvas.drawCircle(
      Offset(size.width / 2, size.height * .47),
      size.width * .54,
      lightPaint,
    );

    final mosquePaint = Paint()
      ..color = _emerald.withValues(alpha: .055)
      ..style = PaintingStyle.fill;
    final baseY = size.height - 92;
    canvas.drawRect(Rect.fromLTWH(0, baseY + 36, size.width, 46), mosquePaint);
    _drawDome(canvas, mosquePaint, Offset(size.width * .2, baseY + 36), 44);
    _drawDome(canvas, mosquePaint, Offset(size.width * .5, baseY + 22), 62);
    _drawDome(canvas, mosquePaint, Offset(size.width * .82, baseY + 38), 42);
    _drawMinaret(canvas, mosquePaint, Offset(18, baseY + 70), 80);
    _drawMinaret(canvas, mosquePaint, Offset(size.width - 24, baseY + 70), 88);
  }

  void _drawDome(Canvas canvas, Paint paint, Offset base, double radius) {
    final rect = Rect.fromCircle(center: base, radius: radius);
    canvas.drawArc(rect, math.pi, math.pi, true, paint);
    canvas.drawRect(
      Rect.fromLTWH(base.dx - radius, base.dy, radius * 2, radius * .7),
      paint,
    );
    canvas.drawCircle(Offset(base.dx, base.dy - radius - 8), 3, paint);
  }

  void _drawMinaret(Canvas canvas, Paint paint, Offset base, double height) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(base.dx - 5, base.dy - height, 10, height),
        const Radius.circular(5),
      ),
      paint,
    );
    canvas.drawCircle(Offset(base.dx, base.dy - height - 7), 9, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class _TasbihAppBar extends StatelessWidget {
  const _TasbihAppBar({required this.onAddDhikr});

  final VoidCallback onAddDhikr;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _GlassIcon(icon: Icons.fingerprint_rounded, color: _emerald),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            'Tasbih',
            style: GoogleFonts.amiri(
              fontSize: 31,
              height: 1,
              color: _emerald,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        _GlassIcon(icon: Icons.add_rounded, color: _ink, onTap: onAddDhikr),
        const SizedBox(width: 8),
        const _GlassIcon(icon: Icons.history_rounded, color: _ink),
        const SizedBox(width: 8),
        const _GlassIcon(icon: Icons.settings_outlined, color: _ink),
      ],
    );
  }
}

class _GlassIcon extends StatelessWidget {
  const _GlassIcon({required this.icon, required this.color, this.onTap});

  final IconData icon;
  final Color color;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: .68),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white.withValues(alpha: .84)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .04),
              blurRadius: 14,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        child: Icon(icon, color: color, size: 20),
      ),
    );
  }
}

class _DhikrSelector extends StatelessWidget {
  const _DhikrSelector({required this.provider, required this.onAddCustom});

  final TasbihProvider provider;
  final VoidCallback onAddCustom;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: _cardDecoration(radius: 20),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: provider.currentDhikr,
          isExpanded: true,
          borderRadius: BorderRadius.circular(20),
          icon: const Icon(Icons.keyboard_arrow_down_rounded, color: _emerald),
          style: GoogleFonts.amiri(
            color: _ink,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
          items: [
            ...provider.dhikrs.map(
              (dhikr) => DropdownMenuItem(value: dhikr, child: Text(dhikr)),
            ),
            const DropdownMenuItem(
              value: '__custom__',
              child: Text('Custom Dhikr'),
            ),
          ],
          onChanged: (value) {
            if (value == null) return;
            if (value == '__custom__') {
              onAddCustom();
            } else {
              provider.setDhikr(value);
            }
          },
        ),
      ),
    );
  }
}

class _ModeSelector extends StatelessWidget {
  const _ModeSelector({required this.provider, required this.onModeSelected});

  final TasbihProvider provider;
  final ValueChanged<TasbihMode> onModeSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: TasbihMode.values.map((mode) {
          final selected = mode == provider.mode;
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ChoiceChip(
              selected: selected,
              label: Text(mode.label),
              showCheckmark: false,
              selectedColor: _emerald,
              backgroundColor: Colors.white.withValues(alpha: .62),
              labelStyle: TextStyle(
                color: selected ? Colors.white : _ink.withValues(alpha: .72),
                fontWeight: FontWeight.w700,
              ),
              side: BorderSide(
                color: selected
                    ? _emerald
                    : Colors.white.withValues(alpha: .78),
              ),
              onSelected: (_) => onModeSelected(mode),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _ProgressCard extends StatelessWidget {
  const _ProgressCard({required this.provider});

  final TasbihProvider provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(radius: 22),
      child: Column(
        children: [
          Row(
            children: [
              _ProgressMetric(label: 'Current', value: provider.progressText),
              _ProgressMetric(label: 'Today', value: '${provider.stats.today}'),
              _ProgressMetric(
                label: 'Daily Goal',
                value: provider.hasGoal ? '${provider.goal}' : 'Free',
              ),
            ],
          ),
          const SizedBox(height: 14),
          ClipRRect(
            borderRadius: BorderRadius.circular(999),
            child: LinearProgressIndicator(
              value: provider.hasGoal ? provider.progress : null,
              minHeight: 7,
              backgroundColor: _emerald.withValues(alpha: .1),
              valueColor: const AlwaysStoppedAnimation(_gold),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProgressMetric extends StatelessWidget {
  const _ProgressMetric({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              color: _ink.withValues(alpha: .52),
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: _ink,
              fontSize: 15,
              fontWeight: FontWeight.w900,
            ),
          ),
        ],
      ),
    );
  }
}

class _TapStage extends StatelessWidget {
  const _TapStage({
    required this.provider,
    required this.compact,
    required this.beadScale,
    required this.glow,
    required this.strandSlide,
    required this.onTap,
  });

  final TasbihProvider provider;
  final bool compact;
  final Animation<double> beadScale;
  final Animation<double> glow;
  final Animation<double> strandSlide;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final height = compact ? 330.0 : 390.0;
    return GestureDetector(
      onTap: onTap,
      onVerticalDragEnd: (details) {
        if ((details.primaryVelocity ?? 0) > 80) onTap();
      },
      behavior: HitTestBehavior.opaque,
      child: SizedBox(
        height: height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      _emerald.withValues(alpha: .15),
                      Colors.white.withValues(alpha: .16),
                      Colors.transparent,
                    ],
                    stops: const [.0, .48, 1],
                  ),
                ),
              ),
            ),
            Positioned(
              top: compact ? 4 : 10,
              child: _CounterText(count: provider.count, compact: compact),
            ),
            Positioned(
              top: compact ? 142 : 166,
              child: _CurvedBeadStrand(
                count: provider.count,
                modeGoal: provider.goal,
                beadScale: beadScale,
                glow: glow,
                strandSlide: strandSlide,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CounterText extends StatelessWidget {
  const _CounterText({required this.count, required this.compact});

  final int count;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 180),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: Tween<double>(begin: .88, end: 1).animate(animation),
            child: FadeTransition(opacity: animation, child: child),
          ),
          child: Text(
            '$count',
            key: ValueKey(count),
            style: GoogleFonts.amiri(
              color: _emerald,
              fontSize: compact ? 74 : 92,
              height: .86,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Container(
          width: 40,
          height: 3,
          decoration: BoxDecoration(
            color: _gold.withValues(alpha: .42),
            borderRadius: BorderRadius.circular(999),
          ),
        ),
      ],
    );
  }
}

class _CurvedBeadStrand extends StatelessWidget {
  const _CurvedBeadStrand({
    required this.count,
    required this.modeGoal,
    required this.beadScale,
    required this.glow,
    required this.strandSlide,
  });

  final int count;
  final int modeGoal;
  final Animation<double> beadScale;
  final Animation<double> glow;
  final Animation<double> strandSlide;

  @override
  Widget build(BuildContext context) {
    final displayCount = modeGoal == 33 ? 7 : 9;
    final centerIndex = displayCount ~/ 2;
    final width = displayCount == 7 ? 306.0 : 352.0;
    final height = 138.0;
    return AnimatedBuilder(
      animation: Listenable.merge([beadScale, glow, strandSlide]),
      builder: (context, child) {
        return SizedBox(
          width: width,
          height: height,
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned.fill(
                child: CustomPaint(
                  painter: _CurvedStringPainter(
                    color: _ink.withValues(alpha: .24),
                    accentColor: _gold.withValues(alpha: .22),
                  ),
                ),
              ),
              for (int i = -1; i <= displayCount; i++)
                if (_shouldShowBead(i, centerIndex, strandSlide.value))
                  Transform.translate(
                    offset: _animatedBeadOffset(
                      i,
                      displayCount,
                      width,
                      height,
                      strandSlide.value,
                    ),
                    child: _TasbihBead(
                      highlighted: _isMovingThroughGap(
                        i,
                        centerIndex,
                        strandSlide.value,
                      ),
                      compressedScale:
                          _isMovingThroughGap(i, centerIndex, strandSlide.value)
                          ? beadScale.value
                          : 1,
                      glowAmount:
                          _isMovingThroughGap(i, centerIndex, strandSlide.value)
                          ? glow.value
                          : 0,
                    ),
                  ),
              if (glow.value > .02) const _Sparkles(),
            ],
          ),
        );
      },
    );
  }

  bool _shouldShowBead(int index, int centerIndex, double slide) {
    final effective = index - slide;
    final distanceFromGap = (effective - centerIndex).abs();
    final isAnimating = slide > .02 && slide < .98;
    if (isAnimating && distanceFromGap < .54) return true;
    return distanceFromGap > .24;
  }

  bool _isMovingThroughGap(int index, int centerIndex, double slide) {
    final effective = index - slide;
    return (effective - centerIndex).abs() < .62;
  }

  Offset _animatedBeadOffset(
    int index,
    int count,
    double width,
    double height,
    double slide,
  ) {
    final base = _beadOffset(index - slide, count, width, height);
    final rush = _gapRush(slide);
    final direction = index <= count ~/ 2 ? -1.0 : 1.0;
    final passThroughLift = Offset(direction * rush * 4.0, -rush * 5.0);
    return base +
        _chainImpactOffset(index, count ~/ 2, slide) +
        passThroughLift;
  }

  Offset _beadOffset(double index, int count, double width, double height) {
    final centerIndex = count ~/ 2;
    final t = (index - centerIndex) / centerIndex;
    final x = t * (width * .44);
    final y = 28 * t * t - 8;
    return Offset(x, y);
  }

  Offset _chainImpactOffset(int index, int centerIndex, double slide) {
    final pull = math.sin((slide.clamp(0.0, 1.0)) * math.pi);
    final hitProgress = ((slide - .52) / .42).clamp(0.0, 1.0);
    final hit = math.sin(hitProgress * math.pi);
    final impact = pull * .45 + hit * .9;
    final distance = (index - centerIndex).abs();
    final falloff = math.max(0.0, 1.0 - distance * .2);
    final direction = index < centerIndex ? -1.0 : 1.0;
    return Offset(direction * impact * falloff * 8.0, -impact * falloff * 2.8);
  }

  double _gapRush(double slide) {
    final progress = ((slide - .36) / .36).clamp(0.0, 1.0);
    return math.sin(progress * math.pi);
  }
}

class _CurvedStringPainter extends CustomPainter {
  const _CurvedStringPainter({required this.color, required this.accentColor});

  final Color color;
  final Color accentColor;

  @override
  void paint(Canvas canvas, Size size) {
    final shadowPaint = Paint()
      ..color = Colors.black.withValues(alpha: .08)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2.4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final accentPaint = Paint()
      ..color = accentColor
      ..strokeWidth = 1.1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    final path = Path()
      ..moveTo(size.width * .12, size.height * .55)
      ..quadraticBezierTo(
        size.width * .5,
        size.height * .26,
        size.width * .88,
        size.height * .55,
      );
    canvas.drawPath(path.shift(const Offset(0, 2)), shadowPaint);
    canvas.drawPath(path, paint);
    canvas.drawPath(path.shift(const Offset(0, -3)), accentPaint);
  }

  @override
  bool shouldRepaint(covariant _CurvedStringPainter oldDelegate) {
    return oldDelegate.color != color || oldDelegate.accentColor != accentColor;
  }
}

class _TasbihBead extends StatelessWidget {
  const _TasbihBead({
    required this.highlighted,
    required this.compressedScale,
    required this.glowAmount,
  });

  final bool highlighted;
  final double compressedScale;
  final double glowAmount;

  @override
  Widget build(BuildContext context) {
    final size = highlighted ? 40.0 : 36.0;
    return Transform.scale(
      scale: compressedScale,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            center: const Alignment(-.42, -.5),
            radius: .9,
            colors: [
              highlighted ? const Color(0xFF20B995) : const Color(0xFF14987A),
              const Color(0xFF07604E),
              const Color(0xFF02392F),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .26),
              blurRadius: 15,
              offset: const Offset(6, 8),
            ),
            BoxShadow(
              color: Colors.white.withValues(alpha: .18),
              blurRadius: 5,
              offset: const Offset(-3, -3),
            ),
            if (highlighted)
              BoxShadow(
                color: _gold.withValues(alpha: .2 + glowAmount * .36),
                blurRadius: 22 + glowAmount * 20,
                spreadRadius: glowAmount * 4,
              ),
          ],
        ),
        child: highlighted
            ? Center(
                child: Container(
                  width: 11,
                  height: 11,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: .25),
                  ),
                ),
              )
            : null,
      ),
    );
  }
}

class _Sparkles extends StatelessWidget {
  const _Sparkles();

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(left: -54, top: -10, child: _Sparkle(size: 5)),
        Positioned(right: -58, top: 26, child: _Sparkle(size: 4)),
        Positioned(left: 38, bottom: -42, child: _Sparkle(size: 3)),
      ],
    );
  }
}

class _Sparkle extends StatelessWidget {
  const _Sparkle({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: _gold.withValues(alpha: .62),
        shape: BoxShape.circle,
      ),
      child: SizedBox(width: size, height: size),
    );
  }
}

class _QuickActions extends StatelessWidget {
  const _QuickActions({required this.provider});

  final TasbihProvider provider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: _cardDecoration(radius: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _ActionButton(
            icon: Icons.refresh_rounded,
            label: 'Reset',
            active: true,
            onTap: provider.reset,
          ),
          _ActionButton(
            icon: Icons.undo_rounded,
            label: 'Undo',
            active: provider.count > 0,
            onTap: provider.undo,
          ),
          _ActionButton(
            icon: provider.isSoundEnabled
                ? Icons.volume_up_rounded
                : Icons.volume_off_rounded,
            label: 'Sound',
            active: provider.isSoundEnabled,
            onTap: provider.toggleSound,
          ),
          _ActionButton(
            icon: provider.isVibrationEnabled
                ? Icons.vibration_rounded
                : Icons.phonelink_erase_rounded,
            label: 'Haptic',
            active: provider.isVibrationEnabled,
            onTap: provider.toggleVibration,
          ),
          _ActionButton(
            icon: provider.autoSave
                ? Icons.cloud_done_rounded
                : Icons.cloud_off_rounded,
            label: 'Save',
            active: provider.autoSave,
            onTap: provider.toggleAutoSave,
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.active,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool active;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = active ? _emerald : AppColors.secondaryText;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: SizedBox(
        width: 48,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: active
                    ? _emerald.withValues(alpha: .12)
                    : Colors.white.withValues(alpha: .56),
                shape: BoxShape.circle,
                border: Border.all(color: color.withValues(alpha: .22)),
              ),
              child: Icon(icon, color: color, size: 19),
            ),
            const SizedBox(height: 5),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: color,
                fontSize: 9,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatsGrid extends StatelessWidget {
  const _StatsGrid({required this.stats});

  final TasbihStats stats;

  @override
  Widget build(BuildContext context) {
    final items = [
      ('Today', stats.today, Icons.today_rounded),
      ('Week', stats.week, Icons.view_week_rounded),
      ('Month', stats.month, Icons.calendar_month_rounded),
      ('Lifetime', stats.lifetime, Icons.all_inclusive_rounded),
      ('Current Streak', stats.currentStreak, Icons.local_fire_department),
      ('Longest Streak', stats.longestStreak, Icons.workspace_premium_rounded),
    ];
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2.72,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        final item = items[index];
        return _StatTile(label: item.$1, value: item.$2, icon: item.$3);
      },
    );
  }
}

class _StatTile extends StatelessWidget {
  const _StatTile({
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final int value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: _cardDecoration(radius: 18, opacity: .62),
      child: Row(
        children: [
          Icon(icon, color: _gold, size: 20),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$value',
                  style: const TextStyle(
                    color: _ink,
                    fontSize: 17,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: _ink.withValues(alpha: .54),
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _HistoryPreview extends StatelessWidget {
  const _HistoryPreview({required this.provider});

  final TasbihProvider provider;

  @override
  Widget build(BuildContext context) {
    final values = [
      provider.stats.today ~/ 3,
      provider.stats.today ~/ 2,
      provider.stats.today ~/ 4,
      provider.stats.today ~/ 2 + 8,
      provider.stats.today ~/ 3 + 18,
      provider.stats.today ~/ 2 + 10,
      provider.stats.today,
    ];
    final maxValue = values.reduce(math.max).clamp(1, 999999);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: _cardDecoration(radius: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.bar_chart_rounded, color: _emerald, size: 20),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Last 7 Days',
                  style: TextStyle(
                    color: _ink,
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              _AchievementBadge(
                unlocked: provider.stats.lifetime >= 100,
                label: provider.stats.lifetime >= 100 ? '100 Dhikr' : 'First',
              ),
            ],
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 72,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final value in values)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: FractionallySizedBox(
                        heightFactor: (value / maxValue).clamp(.12, 1.0),
                        alignment: Alignment.bottomCenter,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(999),
                            gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [_gold, _emerald],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AchievementBadge extends StatelessWidget {
  const _AchievementBadge({required this.unlocked, required this.label});

  final bool unlocked;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: unlocked
            ? _gold.withValues(alpha: .18)
            : Colors.white.withValues(alpha: .6),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: unlocked
              ? _gold.withValues(alpha: .42)
              : _ink.withValues(alpha: .08),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            unlocked
                ? Icons.workspace_premium_rounded
                : Icons.lock_outline_rounded,
            color: unlocked ? _gold : _ink.withValues(alpha: .42),
            size: 15,
          ),
          const SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
              color: unlocked ? _ink : _ink.withValues(alpha: .5),
              fontSize: 10,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}

BoxDecoration _cardDecoration({required double radius, double opacity = .74}) {
  return BoxDecoration(
    color: Colors.white.withValues(alpha: opacity),
    borderRadius: BorderRadius.circular(radius),
    border: Border.all(color: Colors.white.withValues(alpha: .82)),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withValues(alpha: .045),
        blurRadius: 22,
        offset: const Offset(0, 12),
      ),
    ],
  );
}

