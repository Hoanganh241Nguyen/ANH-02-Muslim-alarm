part of '../tasbih_page.dart';

class _CurvedStringPainter extends CustomPainter {
  const _CurvedStringPainter({
    required this.color,
    required this.accentColor,
    required this.beadRadius,
  });

  final Color color;
  final Color accentColor;
  final double beadRadius;

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
    final path = _strandPath(size);
    canvas.drawPath(path.shift(const Offset(0, 2)), shadowPaint);
    canvas.drawPath(path, paint);
    canvas.drawPath(path.shift(const Offset(0, -3)), accentPaint);

    final endPaint = Paint()
      ..color = color.withValues(alpha: .65)
      ..style = PaintingStyle.fill;
    for (final point in [
      Offset(size.width * .08, size.height * .72),
      Offset(size.width * .92, size.height * .72),
    ]) {
      canvas.drawCircle(point, beadRadius * .34, endPaint);
      canvas.drawCircle(
        point.translate(0, 1.4),
        beadRadius * .42,
        Paint()
          ..color = Colors.black.withValues(alpha: .07)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1.5,
      );
    }
  }

  static Path _strandPath(Size size) {
    return Path()
      ..moveTo(size.width * .08, size.height * .72)
      ..cubicTo(
        size.width * .27,
        size.height * .48,
        size.width * .73,
        size.height * .48,
        size.width * .92,
        size.height * .72,
      );
  }

  @override
  bool shouldRepaint(covariant _CurvedStringPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.accentColor != accentColor ||
        oldDelegate.beadRadius != beadRadius;
  }
}
