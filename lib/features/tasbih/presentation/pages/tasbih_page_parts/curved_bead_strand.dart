part of '../tasbih_page.dart';

class _CurvedBeadStrand extends StatelessWidget {
  const _CurvedBeadStrand({
    required this.count,
    required this.modeGoal,
    required this.beadScale,
    required this.glow,
    required this.strandSlide,
    required this.shape,
  });

  final int count;
  final int modeGoal;
  final Animation<double> beadScale;
  final Animation<double> glow;
  final Animation<double> strandSlide;
  final TasbihBeadShape shape;

  @override
  Widget build(BuildContext context) {
    const displayCount = 9;
    final centerIndex = displayCount ~/ 2;
    final width = (MediaQuery.sizeOf(context).width - 20).clamp(324.0, 380.0);
    const height = 148.0;
    const beadSize = 46.0;
    const accentBeadSize = 54.0;
    final strandSize = Size(width, height);
    final pathMetric = _CurvedStringPainter._strandPath(
      strandSize,
    ).computeMetrics().first;
    return AnimatedBuilder(
      animation: Listenable.merge([beadScale, glow, strandSlide]),
      builder: (context, child) {
        return RepaintBoundary(
          child: SizedBox(
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
                      beadRadius: beadSize / 2,
                    ),
                  ),
                ),
                for (int i = 0; i < displayCount; i++)
                  if (i != centerIndex)
                    _RotatedStrandBead(
                      placement: _beadPlacement(
                        _animatedBeadIndex(i, centerIndex, strandSlide.value),
                        displayCount,
                        strandSize,
                        pathMetric,
                      ),
                      child: _TasbihBead(
                        highlighted:
                            i == centerIndex - 1 || i == centerIndex + 1,
                        compressedScale:
                            i == centerIndex - 1 || i == centerIndex + 1
                            ? beadScale.value
                            : .96,
                        glowAmount: i == centerIndex - 1 || i == centerIndex + 1
                            ? glow.value
                            : 0,
                        shape: shape,
                        size: _beadSizeForIndex(
                          i,
                          centerIndex,
                          displayCount,
                          beadSize,
                          accentBeadSize,
                        ),
                      ),
                    ),
              ],
            ),
          ),
        );
      },
    );
  }

  double _animatedBeadIndex(int index, int centerIndex, double slide) {
    final leadingProgress = Curves.easeInOutCubic.transform(
      (slide / .62).clamp(0.0, 1.0),
    );
    final chainProgress = Curves.easeOutCubic.transform(
      ((slide - .62) / .38).clamp(0.0, 1.0),
    );
    if (index == centerIndex - 1) {
      return index + leadingProgress + chainProgress;
    }
    if (index == centerIndex + 1) {
      return index + chainProgress;
    }
    return index + chainProgress;
  }

  ({Offset offset, double angle}) _beadPlacement(
    double index,
    int count,
    Size size,
    PathMetric pathMetric,
  ) {
    final normalized = _beadPosition(index, count);
    final tangent = pathMetric.getTangentForOffset(
      pathMetric.length * normalized,
    );
    if (tangent == null) return (offset: Offset.zero, angle: 0);
    return (
      offset: tangent.position - Offset(size.width / 2, size.height / 2),
      angle: tangent.angle,
    );
  }

  double _beadPosition(double index, int count) {
    final positions = <double>[.06, .16, .27, .38, .5, .62, .73, .84, .94];
    if (count == positions.length) {
      final lower = index.floor().clamp(0, positions.length - 1);
      final upper = index.ceil().clamp(0, positions.length - 1);
      final mix = index - lower;
      return positions[lower] + (positions[upper] - positions[lower]) * mix;
    }
    return ((index + .5) / count).clamp(.06, .94);
  }

  double _beadSizeForIndex(
    int index,
    int centerIndex,
    int displayCount,
    double beadSize,
    double accentBeadSize,
  ) {
    if (index == centerIndex - 1 || index == centerIndex + 1) {
      return accentBeadSize;
    }
    if (index == 0 || index == displayCount - 1) {
      return beadSize * .72;
    }
    return beadSize;
  }
}

class _RotatedStrandBead extends StatelessWidget {
  const _RotatedStrandBead({required this.placement, required this.child});

  final ({Offset offset, double angle}) placement;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: placement.offset,
      child: Transform.rotate(angle: -placement.angle, child: child),
    );
  }
}
