part of '../tasbih_page.dart';

class _CounterText extends StatelessWidget {
  const _CounterText({
    required this.count,
    required this.goal,
    required this.round,
    required this.compact,
    required this.dhikr,
    required this.arabic,
  });

  final int count;
  final int goal;
  final int round;
  final bool compact;
  final String dhikr;
  final String arabic;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final accent = _tasbihAccent(context);
    final muted = _tasbihMuted(context);
    return Column(
      children: [
        Text(
          arabic,
          textAlign: TextAlign.center,
          style: AppTypography.arabic(
            color: accent.withValues(alpha: 0.92),
            size: compact ? 20 : 24,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          dhikr,
          style: TextStyle(
            color: muted.withValues(alpha: 0.9),
            fontSize: compact ? 12 : 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 8),
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 180),
          transitionBuilder: (child, animation) => ScaleTransition(
            scale: Tween<double>(begin: .88, end: 1).animate(animation),
            child: FadeTransition(opacity: animation, child: child),
          ),
          child: Row(
            key: ValueKey('$count-$goal'),
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$count',
                style: AppTypography.arabic(
                  color: accent,
                  size: compact ? 74 : 92,
                  height: .86,
                  weight: FontWeight.w900,
                ),
              ),
              if (goal > 0) ...[
                Text(
                  '/',
                  style: AppTypography.arabic(
                    color: accent.withValues(alpha: .58),
                    size: compact ? 44 : 52,
                    height: .86,
                    weight: FontWeight.w300,
                  ),
                ),
                Text(
                  '$goal',
                  style: AppTypography.arabic(
                    color: accent.withValues(alpha: .58),
                    size: compact ? 44 : 52,
                    height: .86,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 4),
        Text(
          l10n.roundValue(round),
          style: TextStyle(
            color: muted.withValues(alpha: .88),
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: 40,
          height: 3,
          decoration: BoxDecoration(
            color: accent.withValues(alpha: .42),
            borderRadius: BorderRadius.circular(999),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          l10n.clickOrSwipeToCount,
          style: TextStyle(
            color: muted.withValues(alpha: .68),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
