part of '../qibla_page.dart';

/// 3D Islamic Qibla compass — a raised emerald-and-gold medallion with a
/// Khatam star dial and a Qibla needle tipped with the Kaaba. Split out of
/// [_QiblaPageState] to keep the page widget focused on state/layout wiring.
extension _QiblaCompass on _QiblaPageState {
  static const double _dim = 300;
  static const double _scale = _dim / 320;

  Widget _buildCompass(double headingAngle, double qiblaAngle, bool isAligned) {
    final headingRad = headingAngle * (math.pi / 180);
    final qiblaRad = qiblaAngle * (math.pi / 180);
    const badge = 42 * _scale;

    return SizedBox(
      width: _dim,
      height: _dim,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Static chrome: rim, band, bezel and dial face.
          const CustomPaint(
            size: Size(_dim, _dim),
            painter: CompassChromePainter(),
          ),

          // Rotating dial card (star + cardinal letters) follows the heading.
          TweenAnimationBuilder<double>(
            tween: Tween<double>(end: headingRad),
            duration: const Duration(milliseconds: 50),
            curve: Curves.linear,
            builder: (context, angle, child) => Transform.rotate(
              angle: angle,
              child: const CustomPaint(
                size: Size(_dim, _dim),
                painter: KhatamRosePainter(),
              ),
            ),
          ),

          // Rotating Qibla needle with the Kaaba medallion at its tip.
          TweenAnimationBuilder<double>(
            tween: Tween<double>(end: qiblaRad),
            duration: const Duration(milliseconds: 50),
            curve: Curves.linear,
            builder: (context, angle, child) => Transform.rotate(
              angle: angle,
              child: SizedBox(
                width: _dim,
                height: _dim,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: const Size(_dim, _dim),
                      painter: QiblaNeedlePainter(isAligned: isAligned),
                    ),
                    Positioned(
                      top: _dim / 2 - 90 * _scale - badge / 2,
                      left: _dim / 2 - badge / 2,
                      child: Transform.rotate(
                        angle: -angle,
                        child: _kaabaBadge(badge, isAligned),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Top overlay: glass sheen and the domed centre hub.
          const CustomPaint(
            size: Size(_dim, _dim),
            painter: CompassGlassPainter(),
          ),
        ],
      ),
    );
  }

  Widget _kaabaBadge(double diameter, bool isAligned) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFFFFDF8),
        border: Border.all(
          color: isAligned ? AppColors.successGreen : AppColors.classicGold,
          width: 3,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x55000000),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Image.asset(
          'assets/images/icon/kaaba.webp',
          fit: BoxFit.contain,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
