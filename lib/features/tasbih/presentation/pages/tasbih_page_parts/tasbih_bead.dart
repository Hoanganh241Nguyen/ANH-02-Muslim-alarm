part of '../tasbih_page.dart';

class _TasbihBead extends StatelessWidget {
  const _TasbihBead({
    required this.highlighted,
    required this.compressedScale,
    required this.glowAmount,
    this.shape = TasbihBeadShape.wood,
    this.size,
  });

  final bool highlighted;
  final double compressedScale;
  final double glowAmount;
  final TasbihBeadShape shape;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final beadSize = size ?? (highlighted ? 28.0 : 24.0);

    return Transform.scale(
      scale: compressedScale,
      child: SizedBox(
        width: beadSize,
        height: beadSize,
        child: Stack(
          alignment: Alignment.center,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .28),
                    blurRadius: 12,
                    offset: const Offset(4, 6),
                  ),
                  if (highlighted)
                    BoxShadow(
                      color: _gold.withValues(alpha: .18 + glowAmount * .32),
                      blurRadius: 18 + glowAmount * 18,
                      spreadRadius: glowAmount * 3,
                    ),
                ],
              ),
            ),
            Image.asset(
              shape.imageAsset,
              width: beadSize,
              height: beadSize,
              fit: BoxFit.contain,
              filterQuality: FilterQuality.high,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/images/default_bean.webp',
                width: beadSize,
                height: beadSize,
                fit: BoxFit.contain,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
