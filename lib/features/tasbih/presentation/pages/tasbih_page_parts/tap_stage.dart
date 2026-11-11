part of '../tasbih_page.dart';

class _TapStage extends StatelessWidget {
  const _TapStage({
    required this.provider,
    required this.compact,
    required this.beadScale,
    required this.glow,
    required this.strandSlide,
    required this.movementDirection,
    required this.onCount,
  });

  final TasbihProvider provider;
  final bool compact;
  final Animation<double> beadScale;
  final Animation<double> glow;
  final Animation<double> strandSlide;
  final int movementDirection;
  final ValueChanged<int> onCount;

  @override
  Widget build(BuildContext context) {
    final height = compact ? 304.0 : 344.0;
    final dhikrContent = provider.dhikrContentFor(
      context,
      provider.currentDhikr,
    );

    return GestureDetector(
      onTap: () => onCount(1),
      onHorizontalDragEnd: (details) {
        final velocity = details.primaryVelocity ?? 0;
        if (velocity.abs() > 80) onCount(velocity < 0 ? -1 : 1);
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
                      _tasbihAccent(context).withValues(alpha: .15),
                      _tasbihCard(context, opacity: .16),
                      Colors.transparent,
                    ],
                    stops: const [.0, .48, 1],
                  ),
                ),
              ),
            ),
            Positioned(
              top: compact ? 4 : 10,
              child: _CounterText(
                count: provider.countInCycle,
                goal: provider.currentCycleGoal,
                round: provider.currentRound,
                compact: compact,
                dhikr: dhikrContent.value,
                arabic: dhikrContent.arabic,
              ),
            ),
            Positioned(
              top: compact ? 132 : 156,
              child: _CurvedBeadStrand(
                count: provider.count,
                modeGoal: provider.goal,
                beadScale: beadScale,
                glow: glow,
                strandSlide: strandSlide,
                shape: TasbihBeadShape.wood,
                // movementDirection: movementDirection,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
