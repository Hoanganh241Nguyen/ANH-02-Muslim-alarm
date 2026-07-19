import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/constants/app_colors.dart';
import '../providers/qibla_provider.dart';

class QiblaPage extends StatefulWidget {
  const QiblaPage({super.key});

  @override
  State<QiblaPage> createState() => _QiblaPageState();
}

class _QiblaPageState extends State<QiblaPage> {
  double _currentHeading = 0;
  double _currentQiblaRel = 0;
  bool _wasAligned = false;
  bool _showMap = false;
  bool _isMapCardExpanded = false;
  final TransformationController _mapController = TransformationController();
  QiblaProvider? _lastProvider;

  @override
  void dispose() {
    _lastProvider?.removeListener(_onProviderUpdate);
    _mapController.dispose();
    super.dispose();
  }

  void _onProviderUpdate() {
    if (!mounted || _lastProvider == null) return;

    final heading = _lastProvider!.direction ?? 0;
    final qiblaDir = _lastProvider!.qiblaDirection ?? 0;

    // Calculate offset to check alignment
    double diff = (heading - qiblaDir).abs() % 360;
    if (diff > 180) diff = 360 - diff;
    final isAligned = diff < 3;

    // Trigger vibration when just aligned to the correct direction
    if (isAligned && !_wasAligned) {
      HapticFeedback.vibrate();
      HapticFeedback.heavyImpact();
    }

    setState(() {
      _wasAligned = isAligned;
      // Update rotation angle continuously for smooth animation without jumps
      _currentHeading = _getContinuousAngle(-heading, _currentHeading);
      _currentQiblaRel = _getContinuousAngle(
        qiblaDir - heading,
        _currentQiblaRel,
      );
    });
  }

  // Logic to rotate the needle smoothly without jumping 360 degrees
  double _getContinuousAngle(double targetAngle, double currentAngle) {
    double diff = targetAngle - (currentAngle % 360);
    if (diff > 180) diff -= 360;
    if (diff < -180) diff += 360;
    return currentAngle + diff;
  }

  void _zoomMap(double factor) {
    final currentScale = _mapController.value.getMaxScaleOnAxis();
    final nextScale = (currentScale * factor).clamp(1.0, 5.0);
    _mapController.value = Matrix4.identity()
      ..scaleByDouble(nextScale, nextScale, nextScale, 1);
  }

  void _resetMap() {
    _mapController.value = Matrix4.identity();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<QiblaProvider>(
      builder: (context, provider, child) {
        // Manage listener lifecycle
        if (_lastProvider != provider) {
          _lastProvider?.removeListener(_onProviderUpdate);
          _lastProvider = provider;
          _lastProvider?.addListener(_onProviderUpdate);
        }

        if (!provider.isPermissionGranted) {
          return _buildPermissionError(provider);
        }

        final heading = provider.direction ?? 0;
        final isAligned = _wasAligned;

        return Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            bottom: false,
            child: Stack(
              children: [
                Column(
                  children: [
                    _buildHeader(),
                    Expanded(
                      child: _showMap
                          ? _buildMapView(provider)
                          : SingleChildScrollView(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 24,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 10),
                                  _buildStatusTag(isAligned),
                                  const SizedBox(height: 24),
                                  _buildDirectionText(
                                    heading,
                                    provider.distanceToMecca,
                                  ),
                                  const SizedBox(height: 30),
                                  _buildCompass(
                                    _currentHeading,
                                    _currentQiblaRel,
                                    isAligned,
                                  ),
                                  const SizedBox(height: 40),
                                  _buildInfoBox(),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildPermissionError(QiblaProvider provider) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_off,
              size: 64,
              color: AppColors.secondaryText,
            ),
            const SizedBox(height: 16),
            Text(
              provider.errorMessage.isEmpty
                  ? 'Requesting location permission...'
                  : provider.errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.primaryText),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => provider.init(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.emerald,
              ),
              child: const Text(
                'Try Again',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    if (_showMap) {
      return const SizedBox.shrink(); // Hide header in map mode for full screen effect
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: AppColors.emerald,
            size: 28,
          ),
          const SizedBox(width: 8),
          const Text(
            'Qibla Finder',
            style: TextStyle(
              fontFamily: 'Serif',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.emerald,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () => setState(() => _showMap = true),
            style: IconButton.styleFrom(
              backgroundColor: AppColors.emerald.withValues(alpha: 0.1),
            ),
            icon: const Icon(Icons.map_outlined, color: AppColors.emerald),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTag(bool isAligned) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isAligned ? AppColors.emerald : Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0D000000), // 0.05 alpha
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isAligned ? Icons.check_circle : Icons.near_me,
            color: isAligned ? Colors.white : AppColors.secondaryText,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            isAligned ? 'ALIGNED TO QIBLA' : 'ADJUST POSITION',
            style: TextStyle(
              color: isAligned ? Colors.white : AppColors.secondaryText,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDirectionText(double heading, double? distance) {
    String getDirectionName(double deg) {
      if (deg >= 337.5 || deg < 22.5) return 'North';
      if (deg >= 22.5 && deg < 67.5) return 'Northeast';
      if (deg >= 67.5 && deg < 112.5) return 'East';
      if (deg >= 112.5 && deg < 157.5) return 'Southeast';
      if (deg >= 157.5 && deg < 202.5) return 'South';
      if (deg >= 202.5 && deg < 247.5) return 'Southwest';
      if (deg >= 247.5 && deg < 292.5) return 'West';
      if (deg >= 292.5 && deg < 337.5) return 'Northwest';
      return '';
    }

    final headingFixed = heading < 0 ? heading + 360 : heading;

    return Column(
      children: [
        Text(
          '${headingFixed.toStringAsFixed(0)}° ${getDirectionName(headingFixed)}',
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryText,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          distance != null
              ? 'Distance to Mecca: ${distance.toStringAsFixed(0)} Km'
              : 'Calculating distance...',
          style: const TextStyle(fontSize: 14, color: AppColors.secondaryText),
        ),
      ],
    );
  }

  Widget _buildCompass(double headingAngle, double qiblaAngle, bool isAligned) {
    final headingRad = headingAngle * (math.pi / 180);
    final qiblaRad = qiblaAngle * (math.pi / 180);

    return Stack(
      alignment: Alignment.center,
      children: [
        // Bottom shadow for elevation
        Container(
          width: 330,
          height: 330,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: const Color(0x26000000), // 0.15 alpha
                blurRadius: 30,
                spreadRadius: 5,
                offset: const Offset(0, 15),
              ),
            ],
          ),
        ),

        // 1. Outer Metallic Silver Ring
        Container(
          width: 320,
          height: 320,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFF5F5F5),
                Color(0xFFBDBDBD),
                Color(0xFFE0E0E0),
                Color(0xFF757575),
              ],
              stops: [0.0, 0.4, 0.6, 1.0],
            ),
            border: Border.all(color: Colors.white, width: 2),
          ),
        ),

        // 2. Golden Pattern Ring
        Container(
          width: 290,
          height: 290,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0x80D4AF37), // 0.5 alpha
              width: 15,
            ),
          ),
          child: CustomPaint(painter: GoldenPatternPainter()),
        ),

        // 3. Inner Green Decorative Ring
        Container(
          width: 265,
          height: 265,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF064E3B), // Deep Emerald
            border: Border.all(color: const Color(0xFF059669), width: 4),
            boxShadow: const [
              BoxShadow(
                color: Color(0x4D000000), // 0.3 alpha
                blurRadius: 10,
              ),
            ],
          ),
        ),

        // 4. Main Compass Face (Brushed metal)
        TweenAnimationBuilder<double>(
          tween: Tween<double>(end: headingRad),
          duration: const Duration(milliseconds: 50),
          curve: Curves.linear,
          builder: (context, angle, child) {
            return Transform.rotate(
              angle: angle,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFE0E0E0),
                      Color(0xFFBDBDBD),
                    ],
                    center: Alignment(-0.2, -0.2),
                    radius: 0.8,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Inner Inset Shadow for 3D effect
                    CustomPaint(
                      size: const Size(250, 250),
                      painter: InsetShadowPainter(),
                    ),
                    // Compass Rose
                    CustomPaint(
                      size: const Size(200, 200),
                      painter: CompassRosePainter(),
                    ),
                    // N, S, E, W points
                    _buildCompassPoints(),
                  ],
                ),
              ),
            );
          },
        ),

        // 5. Golden Needle pointing to Qibla
        TweenAnimationBuilder<double>(
          tween: Tween<double>(end: qiblaRad),
          duration: const Duration(milliseconds: 50),
          curve: Curves.linear,
          builder: (context, angle, child) {
            return Transform.rotate(
              angle: angle,
              child: SizedBox(
                width: 250,
                height: 250,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // 3D Golden needle
                    CustomPaint(
                      size: const Size(250, 250),
                      painter: GoldenNeedlePainter(isAligned: isAligned),
                    ),
                    // Kaaba icon at the tip
                    Positioned(
                      top: 15,
                      child: Transform.rotate(
                        angle: -angle,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x4D000000), // 0.3 alpha
                                blurRadius: 8,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Image.asset(
                              'lib/assets/json/icon/kaaba.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        // 6. Center Pin
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: const LinearGradient(
              colors: [Color(0xFF059669), Color(0xFF064E3B)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(color: const Color(0xFFD4AF37), width: 2),
            boxShadow: const [
              BoxShadow(
                color: Color(0x66000000), // 0.4 alpha
                blurRadius: 4,
                offset: Offset(0, 2),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCompassPoints() {
    return const Stack(
      children: [
        Align(
          alignment: Alignment(0, -0.85),
          child: Text(
            'N',
            style: TextStyle(
              color: Color(0xFF064E3B),
              fontWeight: FontWeight.w900,
              fontSize: 16,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, 0.85),
          child: Text(
            'S',
            style: TextStyle(
              color: Color(0xFF757575),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Align(
          alignment: Alignment(-0.85, 0),
          child: Text(
            'W',
            style: TextStyle(
              color: Color(0xFF757575),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        Align(
          alignment: Alignment(0.85, 0),
          child: Text(
            'E',
            style: TextStyle(
              color: Color(0xFF757575),
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoBox() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x08000000), // 0.03 alpha
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: AppColors.emerald, size: 20),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'For the most accurate results, keep your phone flat and away from magnetic objects.',
              style: TextStyle(
                fontSize: 13,
                color: AppColors.secondaryText,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMapView(QiblaProvider provider) {
    return Stack(
      children: [
        // 1. Satellite Map Background
        LayoutBuilder(
          builder: (context, constraints) {
            return InteractiveViewer(
              transformationController: _mapController,
              minScale: 1,
              maxScale: 5,
              boundaryMargin: const EdgeInsets.all(160),
              child: SizedBox(
                width: constraints.maxWidth,
                height: constraints.maxHeight,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF0D1B2A),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Equirectangular_projection_SW.jpg/1280px-Equirectangular_projection_SW.jpg',
                      ),
                      fit: BoxFit.contain,
                      opacity: 0.5,
                    ),
                  ),
                  child: CustomPaint(
                    painter: MapLinePainter(
                      userPosition: provider.currentPosition,
                    ),
                  ),
                ),
              ),
            );
          },
        ),

        // 2. Floating Back Button
        Positioned(
          top: 20,
          left: 20,
          child: GestureDetector(
            onTap: () => setState(() => _showMap = false),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Color(0xFF064E3B),
                size: 24,
              ),
            ),
          ),
        ),

        // 3. Current Path Chip (Hanoi to Mecca)
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 25),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 10),
              ],
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.location_on, color: Color(0xFF064E3B), size: 18),
                SizedBox(width: 8),
                Text(
                  'Current Location to Mecca',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1F2937),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),

        // 4. Map Zoom Controls
        Positioned(
          right: 20,
          top: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.95),
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 8),
              ],
            ),
            child: Column(
              children: [
                _buildMapIcon(Icons.add, onTap: () => _zoomMap(1.25)),
                const Divider(height: 1, indent: 8, endIndent: 8),
                _buildMapIcon(Icons.remove, onTap: () => _zoomMap(0.8)),
                const Divider(height: 1, indent: 8, endIndent: 8),
                _buildMapIcon(Icons.my_location, size: 20, onTap: _resetMap),
              ],
            ),
          ),
        ),

        // 5. Bottom Direction Card
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onVerticalDragEnd: (details) {
              if (details.primaryVelocity! < 0 && !_isMapCardExpanded) {
                setState(() => _isMapCardExpanded = true);
              } else if (details.primaryVelocity! > 0 && _isMapCardExpanded) {
                setState(() => _isMapCardExpanded = false);
              }
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Pull handle
                    Container(
                      width: 36,
                      height: 4,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildInfoItem(
                          'DISTANCE',
                          '${provider.distanceToMecca?.toStringAsFixed(0) ?? "8,500"} Km',
                          const Color(0xFF10B981),
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.grey.shade100,
                        ),
                        GestureDetector(
                          onTap: () => setState(() => _isMapCardExpanded = !_isMapCardExpanded),
                          behavior: HitTestBehavior.opaque,
                          child: _buildInfoItem(
                            'DIRECTION',
                            '${provider.qiblaDirection?.toStringAsFixed(0) ?? "284"}° WNW',
                            const Color(0xFF10B981),
                            suffix: Icon(
                              _isMapCardExpanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                              color: AppColors.emerald,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (_isMapCardExpanded) ...[
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFF10B981).withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.mosque,
                                color: Color(0xFF064E3B),
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Al-Masjid al-Haram',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color(0xFF1F2937),
                                  ),
                                ),
                                Text(
                                  'Mecca, Saudi Arabia',
                                  style: TextStyle(
                                    color: Color(0xFF6B7280),
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton.icon(
                              onPressed: () => setState(() => _showMap = false),
                              icon: const Icon(Icons.explore_outlined, size: 20),
                              label: const Text(
                                'Return to Compass',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF064E3B),
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(vertical: 18),
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.grey.shade200),
                            ),
                            child: const Icon(
                              Icons.layers_outlined,
                              color: Color(0xFF374151),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMapIcon(
    IconData icon, {
    double size = 24,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Icon(icon, color: const Color(0xFF4B5563), size: size),
      ),
    );
  }

  Widget _buildInfoItem(String label, String value, Color color, {Widget? suffix}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: Color(0xFF9CA3AF),
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: color,
              ),
            ),
            if (suffix != null) ...[
              const SizedBox(width: 4),
              suffix,
            ],
          ],
        ),
      ],
    );
  }
}

class MapLinePainter extends CustomPainter {
  final Position? userPosition;

  MapLinePainter({this.userPosition});

  static const double _kaabaLat = 21.422487;
  static const double _kaabaLng = 39.826206;
  static const double _mapAspectRatio = 2.0;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF10B981)
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

/// Painter to draw the golden pattern (Arabic style)
class GoldenPatternPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color =
          const Color(0x4DD4AF37) // 0.3 alpha
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0.5;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    for (int i = 0; i < 36; i++) {
      final angle = (i * 10) * (math.pi / 180);
      final x1 = center.dx + (radius - 15) * math.cos(angle);
      final y1 = center.dy + (radius - 15) * math.sin(angle);

      canvas.drawCircle(Offset(x1, y1), 8, paint);

      // Draw decorative lines
      final x2 = center.dx + radius * math.cos(angle + 0.1);
      final y2 = center.dy + radius * math.sin(angle + 0.1);
      canvas.drawLine(Offset(x1, y1), Offset(x2, y2), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for the 8-pointed compass rose
class CompassRosePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width * 0.45;

    final paintDark = Paint()..color = const Color(0xFF064E3B);
    final paintLight = Paint()..color = const Color(0xFF10B981);

    for (int i = 0; i < 8; i++) {
      final angle = (i * 45) * (math.pi / 180);
      final subAngle = (i * 45 + 22.5) * (math.pi / 180);
      final radius = (i % 2 == 0) ? maxRadius : maxRadius * 0.6;

      // Main wings
      final path = Path();
      path.moveTo(center.dx, center.dy);
      path.lineTo(
        center.dx + radius * math.cos(angle),
        center.dy + radius * math.sin(angle),
      );
      path.lineTo(
        center.dx + (radius * 0.2) * math.cos(subAngle),
        center.dy + (radius * 0.2) * math.sin(subAngle),
      );
      path.close();
      canvas.drawPath(path, (i % 2 == 0) ? paintDark : paintLight);
    }

    // Shadow for the star
    canvas.drawCircle(
      center,
      maxRadius * 0.1,
      Paint()..color = const Color(0x1F000000),
    ); // 0.12 alpha
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

/// Painter for the 3D golden needle
class GoldenNeedlePainter extends CustomPainter {
  final bool isAligned;

  GoldenNeedlePainter({required this.isAligned});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final needleLength = size.width * 0.42;
    final needleWidth = 12.0;

    final Color primaryGold = isAligned
        ? const Color(0xFF10B981)
        : const Color(0xFFD4AF37);
    final Color darkGold = isAligned
        ? const Color(0xFF064E3B)
        : const Color(0xFFB8860B);

    final paintPrimary = Paint()..color = primaryGold;
    final paintDark = Paint()..color = darkGold;
    final paintHighlight = Paint()
      ..color = const Color(0x80FFFFFF); // 0.5 alpha

    // Shadow for needle
    final shadowPath = Path();
    shadowPath.moveTo(center.dx + 2, center.dy + 2);
    shadowPath.lineTo(center.dx - needleWidth / 2 + 2, center.dy + 2);
    shadowPath.lineTo(center.dx + 2, center.dy - needleLength + 2);
    shadowPath.close();
    canvas.drawPath(
      shadowPath,
      Paint()
        ..color = const Color(0x33000000)
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3),
    );

    // Left half of the needle
    final leftPath = Path();
    leftPath.moveTo(center.dx, center.dy);
    leftPath.lineTo(center.dx - needleWidth / 2, center.dy);
    leftPath.lineTo(center.dx, center.dy - needleLength);
    leftPath.close();
    canvas.drawPath(leftPath, paintPrimary);

    // Right half of the needle
    final rightPath = Path();
    rightPath.moveTo(center.dx, center.dy);
    rightPath.lineTo(center.dx + needleWidth / 2, center.dy);
    rightPath.lineTo(center.dx, center.dy - needleLength);
    rightPath.close();
    canvas.drawPath(rightPath, paintDark);

    // Highlight on the spine
    final highlightPath = Path();
    highlightPath.moveTo(center.dx, center.dy - needleLength * 0.1);
    highlightPath.lineTo(center.dx, center.dy - needleLength);
    highlightPath.lineTo(center.dx - 1, center.dy - needleLength * 0.5);
    highlightPath.close();
    canvas.drawPath(highlightPath, paintHighlight);

    // Tail (counterweight)
    final tailPath = Path();
    tailPath.moveTo(center.dx, center.dy);
    tailPath.lineTo(
      center.dx - needleWidth / 3,
      center.dy + needleLength * 0.15,
    );
    tailPath.lineTo(
      center.dx + needleWidth / 3,
      center.dy + needleLength * 0.15,
    );
    tailPath.close();
    canvas.drawPath(tailPath, paintDark);
  }

  @override
  bool shouldRepaint(GoldenNeedlePainter oldDelegate) =>
      oldDelegate.isAligned != isAligned;
}

/// Painter to create Inset Shadow (Inner Shadow) effect
class InsetShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final center = rect.center;
    final radius = size.width / 2;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10
      ..color = Colors.black.withValues(alpha: 0.2)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    canvas.clipPath(Path()..addOval(rect));
    canvas.drawCircle(center, radius + 2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
