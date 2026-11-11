part of '../qibla_page.dart';

class MapLinePainter extends CustomPainter {
  final Position? userPosition;

  MapLinePainter({this.userPosition});

  static const double _kaabaLat = 21.422487;
  static const double _kaabaLng = 39.826206;
  static const double _mapAspectRatio = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.successGreen
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke;

    final startLat = userPosition?.latitude ?? 21.0285;
    final startLng = userPosition?.longitude ?? 105.8542;
    final userOffset = _projectLatLng(startLat, startLng, size);
    final kaabaOffset = _projectLatLng(_kaabaLat, _kaabaLng, size);
    final path = _buildGreatCirclePath(
      startLat: startLat,
      startLng: startLng,
      endLat: _kaabaLat,
      endLng: _kaabaLng,
      size: size,
    );

    // Dotted line effect
    const double dashWidth = 8;
    const double dashSpace = 6;
    canvas.save();
    canvas.clipRect(Offset.zero & size);
    for (final metric in path.computeMetrics()) {
      double distance = 0;
      while (distance < metric.length) {
        canvas.drawPath(
          metric.extractPath(distance, distance + dashWidth),
          paint,
        );
        distance += dashWidth + dashSpace;
      }
    }
    canvas.restore();

    // Origin Point (User)
    canvas.drawCircle(userOffset, 6, Paint()..color = Colors.blueAccent);
    canvas.drawCircle(userOffset, 3, Paint()..color = Colors.white);

    // Target Point (Mecca)
    canvas.drawCircle(kaabaOffset, 8, Paint()..color = Colors.orangeAccent);
    canvas.drawCircle(kaabaOffset, 5, Paint()..color = Colors.white);

    // Pulse effect for Mecca
    final pulsePaint = Paint()
      ..color = Colors.orangeAccent.withValues(alpha: 0.3)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(kaabaOffset, 12, pulsePaint);
  }

  @override
  bool shouldRepaint(MapLinePainter oldDelegate) =>
      oldDelegate.userPosition != userPosition;

  Offset _projectLatLng(double lat, double lng, Size size) {
    final mapWidth = math.min(size.width, size.height * _mapAspectRatio);
    final mapHeight = mapWidth / _mapAspectRatio;
    final left = (size.width - mapWidth) / 2;
    final top = (size.height - mapHeight) / 2;

    final x = left + ((lng + 180) / 360) * mapWidth;
    final y = top + ((90 - lat) / 180) * mapHeight;
    return Offset(x, y);
  }

  Path _buildGreatCirclePath({
    required double startLat,
    required double startLng,
    required double endLat,
    required double endLng,
    required Size size,
  }) {
    final points = <Offset>[];
    const steps = 80;
    final lat1 = _toRadians(startLat);
    final lng1 = _toRadians(startLng);
    final lat2 = _toRadians(endLat);
    final lng2 = _toRadians(endLng);
    final delta =
        2 *
        math.asin(
          math.sqrt(
            math.pow(math.sin((lat2 - lat1) / 2), 2) +
                math.cos(lat1) *
                    math.cos(lat2) *
                    math.pow(math.sin((lng2 - lng1) / 2), 2),
          ),
        );
    final sinDelta = math.sin(delta);

    for (var i = 0; i <= steps; i++) {
      final fraction = i / steps;
      double lat;
      double lng;

      if (sinDelta.abs() < 0.000001) {
        lat = startLat + (endLat - startLat) * fraction;
        lng = startLng + (endLng - startLng) * fraction;
      } else {
        final a = math.sin((1 - fraction) * delta) / sinDelta;
        final b = math.sin(fraction * delta) / sinDelta;
        final x =
            a * math.cos(lat1) * math.cos(lng1) +
            b * math.cos(lat2) * math.cos(lng2);
        final y =
            a * math.cos(lat1) * math.sin(lng1) +
            b * math.cos(lat2) * math.sin(lng2);
        final z = a * math.sin(lat1) + b * math.sin(lat2);

        lat = _toDegrees(math.atan2(z, math.sqrt(x * x + y * y)));
        lng = _toDegrees(math.atan2(y, x));
      }

      points.add(_projectLatLng(lat, lng, size));
    }

    final path = Path()..moveTo(points.first.dx, points.first.dy);
    for (final point in points.skip(1)) {
      path.lineTo(point.dx, point.dy);
    }
    return path;
  }

  double _toRadians(double degrees) => degrees * math.pi / 180;

  double _toDegrees(double radians) => radians * 180 / math.pi;
}

// ─────────────────────────────────────────────────────────────────────────
// 3D Islamic Qibla compass — painters
// The compass is drawn at a 320×320 reference and scaled to the given size,
// so every radius below is expressed against that reference.
// ─────────────────────────────────────────────────────────────────────────

const List<Color> _kGoldSweep = [
  Color(0xFF6B4E0C),
  Color(0xFFFFE58A),
  Color(0xFFD4AF37),
  Color(0xFF8A6410),
  Color(0xFFFFF6D8),
  Color(0xFFB8860B),
  Color(0xFF6B4E0C),
];
const List<double> _kGoldSweepStops = [0, 0.18, 0.34, 0.5, 0.68, 0.85, 1];

/// Builds an N-pointed star path centred on [c].
Path _starPath(Offset c, double outer, double inner, int points, double rot) {
  final path = Path();
  final total = points * 2;
  for (var i = 0; i < total; i++) {
    final r = i.isEven ? outer : inner;
    final a = rot + i * math.pi / points;
    final p = Offset(c.dx + r * math.cos(a), c.dy + r * math.sin(a));
    if (i == 0) {
      path.moveTo(p.dx, p.dy);
    } else {
      path.lineTo(p.dx, p.dy);
    }
  }
  return path..close();
}

void _drawLabel(
  Canvas canvas,
  Offset center,
  String text,
  double fontSize,
  Color color,
) {
  final tp = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.w800,
        fontFamily: 'serif',
      ),
    ),
    textDirection: TextDirection.ltr,
  )..layout();
  tp.paint(canvas, center - Offset(tp.width / 2, tp.height / 2));
}

/// Static chrome: beveled gold rim, domed emerald band with embossed
/// starlets, inner bezel and the cream dial face with an inset shadow.
class CompassChromePainter extends CustomPainter {
  const CompassChromePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final c = Offset(w / 2, w / 2);
    final u = w / 320;
    double r(double v) => v * u;

    Shader goldShader(double radius) => SweepGradient(
      colors: _kGoldSweep,
      stops: _kGoldSweepStops,
    ).createShader(Rect.fromCircle(center: c, radius: radius));

    // Lift the whole medallion off the background.
    canvas.drawCircle(
      c.translate(0, r(7)),
      r(150),
      Paint()
        ..color = const Color(0x73000000)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(10)),
    );

    // Outer metallic gold rim.
    canvas.drawCircle(c, r(150), Paint()..shader = goldShader(r(150)));
    canvas.drawCircle(
      c,
      r(149),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r(1.5)
        ..color = const Color(0x99FFF6D8),
    );

    // Domed emerald band.
    canvas.drawCircle(
      c,
      r(140),
      Paint()
        ..shader = const RadialGradient(
          center: Alignment(-0.2, -0.34),
          radius: 0.95,
          colors: [Color(0xFF1A9C81), Color(0xFF0F6B5A), Color(0xFF053526)],
          stops: [0, 0.55, 1],
        ).createShader(Rect.fromCircle(center: c, radius: r(140))),
    );
    canvas.drawCircle(
      c,
      r(140),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r(2)
        ..color = const Color(0xFF04241A),
    );

    // Embossed gold starlets around the band.
    for (var i = 0; i < 8; i++) {
      final a = i * math.pi / 4 - math.pi / 2;
      final cardinal = i.isEven;
      final s = cardinal ? r(9) : r(7);
      final center = Offset(
        c.dx + r(131) * math.cos(a),
        c.dy + r(131) * math.sin(a),
      );
      final star = _starPath(center, s, s * 0.42, 8, 0);
      canvas.drawPath(
        star.shift(Offset(0, r(1.2))),
        Paint()
          ..color = const Color(0x66000000)
          ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(1)),
      );
      canvas.drawPath(
        star,
        Paint()
          ..shader = const RadialGradient(
            center: Alignment(-0.3, -0.35),
            radius: 0.9,
            colors: [Color(0xFFFFF6D8), Color(0xFFEBC96C), Color(0xFFC79B2E)],
            stops: [0, 0.5, 1],
          ).createShader(Rect.fromCircle(center: center, radius: s)),
      );
    }

    // Inner gold bezel.
    canvas.drawCircle(c, r(118), Paint()..shader = goldShader(r(118)));

    // Cream dial face (slightly domed).
    canvas.drawCircle(
      c,
      r(110),
      Paint()
        ..shader = const RadialGradient(
          center: Alignment(-0.16, -0.36),
          radius: 1.0,
          colors: [
            Color(0xFFFFFFFC),
            Color(0xFFFBF7EF),
            Color(0xFFEDE3CC),
            Color(0xFFD8C9A6),
          ],
          stops: [0, 0.58, 0.86, 1],
        ).createShader(Rect.fromCircle(center: c, radius: r(110))),
    );

    // Concave inset shadow near the rim.
    canvas.drawCircle(
      c,
      r(106),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r(8)
        ..color = const Color(0x669C8A5E)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(4)),
    );

    // Faint guilloche rings.
    final guilloche = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = r(1)
      ..color = const Color(0x29C79B2E);
    canvas.drawCircle(c, r(96), guilloche);
    canvas.drawCircle(c, r(60), guilloche);

    // Fixed north/top marker — downward-pointing triangle on the outer gold rim
    // at 12 o'clock. Drawn last so it sits on top of all other chrome layers.
    final markerTip = Offset(c.dx, c.dy - r(133));
    final markerLeft = Offset(c.dx - r(9), c.dy - r(148));
    final markerRight = Offset(c.dx + r(9), c.dy - r(148));
    final markerPath = Path()
      ..moveTo(markerTip.dx, markerTip.dy)
      ..lineTo(markerLeft.dx, markerLeft.dy)
      ..lineTo(markerRight.dx, markerRight.dy)
      ..close();
    // Drop shadow.
    canvas.drawPath(
      markerPath.shift(Offset(0, r(2))),
      Paint()
        ..color = const Color(0x66000000)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(3)),
    );
    // Bright gold fill.
    canvas.drawPath(
      markerPath,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFF6D8), Color(0xFFD4AF37)],
        ).createShader(Rect.fromPoints(markerLeft, markerTip) ),
    );
    // Dark gold outline.
    canvas.drawPath(
      markerPath,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r(1.5)
        ..color = const Color(0xFF6B4E0C),
    );
  }

  @override
  bool shouldRepaint(CompassChromePainter oldDelegate) => false;
}

/// Rotating dial card: the raised 8-pointed Khatam star and cardinal letters.
class KhatamRosePainter extends CustomPainter {
  const KhatamRosePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final c = Offset(w / 2, w / 2);
    final u = w / 320;
    double r(double v) => v * u;

    final star = _starPath(c, r(92), r(40), 8, -math.pi / 2);

    // Drop shadow to raise the star off the face.
    canvas.drawPath(
      star.shift(Offset(0, r(4))),
      Paint()
        ..color = const Color(0x59000000)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(5)),
    );

    // Beveled emerald body (light top-left → dark bottom-right).
    canvas.drawPath(
      star,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1AA085), Color(0xFF0F6B5A), Color(0xFF063F2E)],
          stops: [0, 0.48, 1],
        ).createShader(Rect.fromCircle(center: c, radius: r(92))),
    );

    // Shade the lower-right arms for extra volume.
    final shade = Paint()..color = const Color(0x59062A20);
    canvas.drawPath(
      _starArm(c, r(92), r(40), 8, -math.pi / 2, 2),
      shade,
    );
    canvas.drawPath(
      _starArm(c, r(92), r(40), 8, -math.pi / 2, 3),
      shade,
    );

    // Gold beveled edge.
    canvas.drawPath(
      star,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r(3)
        ..strokeJoin = StrokeJoin.round
        ..shader = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFFF6D8), Color(0xFFD4AF37), Color(0xFF8A6410)],
          stops: [0, 0.5, 1],
        ).createShader(Rect.fromCircle(center: c, radius: r(92))),
    );

    // Highlight the north arm in emerald-green.
    canvas.drawPath(
      _starArm(c, r(92), r(40), 8, -math.pi / 2, 0),
      Paint()..color = AppColors.successGreen,
    );

    // Cardinal letters — positioned with breathing room outside the star tips
    // on the cream dial face so they are always legible against a light background.
    _drawLabel(canvas, c.translate(0, -r(103)), 'N', r(16), const Color(0xFF5A3A08));
    _drawLabel(canvas, c.translate(r(103), 0), 'E', r(14), const Color(0xFF7A5A0C));
    _drawLabel(canvas, c.translate(0, r(103)), 'S', r(14), const Color(0xFF7A5A0C));
    _drawLabel(canvas, c.translate(-r(103), 0), 'W', r(14), const Color(0xFF7A5A0C));
  }

  /// A single triangular arm (outer point + its two neighbouring inner
  /// vertices) of the star at [index].
  Path _starArm(
    Offset c,
    double outer,
    double inner,
    int points,
    double rot,
    int index,
  ) {
    final aOuter = rot + (index * 2) * math.pi / points;
    final aPrev = rot + (index * 2 - 1) * math.pi / points;
    final aNext = rot + (index * 2 + 1) * math.pi / points;
    return Path()
      ..moveTo(c.dx + inner * math.cos(aPrev), c.dy + inner * math.sin(aPrev))
      ..lineTo(c.dx + outer * math.cos(aOuter), c.dy + outer * math.sin(aOuter))
      ..lineTo(c.dx + inner * math.cos(aNext), c.dy + inner * math.sin(aNext))
      ..close();
  }

  @override
  bool shouldRepaint(KhatamRosePainter oldDelegate) => false;
}

/// Rotating gold needle pointing toward the Qibla (green when aligned).
class QiblaNeedlePainter extends CustomPainter {
  const QiblaNeedlePainter({required this.isAligned});

  final bool isAligned;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final c = Offset(w / 2, w / 2);
    final u = w / 320;
    double r(double v) => v * u;

    final tip = c.translate(0, -r(90));
    final halfW = r(11);
    final left = Path()
      ..moveTo(c.dx, c.dy)
      ..lineTo(c.dx - halfW, c.dy)
      ..lineTo(tip.dx, tip.dy)
      ..close();
    final right = Path()
      ..moveTo(c.dx, c.dy)
      ..lineTo(c.dx + halfW, c.dy)
      ..lineTo(tip.dx, tip.dy)
      ..close();
    final tail = Path()
      ..moveTo(c.dx, c.dy)
      ..lineTo(c.dx - r(6), c.dy + r(20))
      ..lineTo(c.dx + r(6), c.dy + r(20))
      ..close();

    final Color lightA;
    final Color lightB;
    final Color darkA;
    final Color darkB;
    if (isAligned) {
      lightA = const Color(0xFF6EE7B7);
      lightB = const Color(0xFF10B981);
      darkA = const Color(0xFF059669);
      darkB = const Color(0xFF064E3B);
    } else {
      lightA = const Color(0xFFFFF6D8);
      lightB = const Color(0xFFE4C063);
      darkA = const Color(0xFFB8860B);
      darkB = const Color(0xFF6B4E0C);
    }

    // Soft shadow under the needle.
    canvas.drawPath(
      left.shift(Offset(r(1.5), r(4))),
      Paint()
        ..color = const Color(0x4D000000)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(4)),
    );
    canvas.drawPath(
      right.shift(Offset(r(1.5), r(4))),
      Paint()
        ..color = const Color(0x4D000000)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(4)),
    );

    final rect = Rect.fromPoints(tip, c.translate(0, r(20)));
    canvas.drawPath(
      left,
      Paint()
        ..shader = LinearGradient(
          colors: [lightA, lightB],
        ).createShader(rect),
    );
    canvas.drawPath(
      right,
      Paint()
        ..shader = LinearGradient(
          colors: [darkA, darkB],
        ).createShader(rect),
    );
    canvas.drawPath(tail, Paint()..color = darkA);

    // Bright central spine.
    canvas.drawLine(
      c,
      tip,
      Paint()
        ..strokeWidth = r(1)
        ..color = const Color(0xB3FFF6D8),
    );
  }

  @override
  bool shouldRepaint(QiblaNeedlePainter oldDelegate) =>
      oldDelegate.isAligned != isAligned;
}

/// Top overlay: glossy glass sheen and the domed centre hub.
class CompassGlassPainter extends CustomPainter {
  const CompassGlassPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final c = Offset(w / 2, w / 2);
    final u = w / 320;
    double r(double v) => v * u;

    // Glass sheen over the upper face.
    canvas.save();
    canvas.clipPath(Path()..addOval(Rect.fromCircle(center: c, radius: r(110))));
    canvas.drawRect(
      Offset.zero & size,
      Paint()
        ..shader = RadialGradient(
          colors: const [Color(0x59FFFFFF), Color(0x00FFFFFF)],
        ).createShader(
          Rect.fromCircle(center: c.translate(0, -r(64)), radius: r(120)),
        ),
    );
    canvas.restore();

    // Domed centre hub (rivet).
    canvas.drawCircle(
      c.translate(0, r(2)),
      r(17),
      Paint()
        ..color = const Color(0x55000000)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r(3)),
    );
    canvas.drawCircle(
      c,
      r(17),
      Paint()
        ..shader = const RadialGradient(
          center: Alignment(-0.3, -0.3),
          radius: 0.9,
          colors: [
            Color(0xFFFFF6D8),
            Color(0xFFEBC96C),
            Color(0xFFC79B2E),
            Color(0xFF7A5810),
          ],
          stops: [0, 0.45, 0.78, 1],
        ).createShader(Rect.fromCircle(center: c, radius: r(17))),
    );
    canvas.drawCircle(
      c,
      r(17),
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r(1)
        ..color = const Color(0xFF5F4708),
    );
    canvas.drawCircle(c, r(7), Paint()..color = const Color(0xFF064E3B));
    canvas.drawCircle(
      c.translate(-r(5), -r(5)),
      r(3),
      Paint()..color = const Color(0xB3FFF6D8),
    );
  }

  @override
  bool shouldRepaint(CompassGlassPainter oldDelegate) => false;
}
