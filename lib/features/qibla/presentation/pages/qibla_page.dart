import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';
import 'package:provider/provider.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/widgets/app_settings_button.dart';
import '../../../../core/widgets/base_app_bar.dart';
import '../providers/qibla_provider.dart';

part 'qibla_page_parts/qibla_painters.dart';
part 'qibla_page_parts/qibla_compass.dart';
part 'qibla_page_parts/qibla_map_view.dart';

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
  DateTime _lastCompassPaint = DateTime.fromMillisecondsSinceEpoch(0);
  double? _lastRawHeading;
  double? _lastRawQiblaDirection;

  @override
  void initState() {
    super.initState();
    AnalyticsService().trackScreenView('qibla_page', source: 'page_init');
  }

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

    // Calculate offset to check alignment. Without a compass reading or a
    // location fix there is nothing to align to, so never report aligned.
    double diff = (heading - qiblaDir).abs() % 360;
    if (diff > 180) diff = 360 - diff;
    final hasReadings =
        _lastProvider!.direction != null &&
        _lastProvider!.qiblaDirection != null;
    final isAligned = hasReadings && diff < 5;

    // Trigger vibration when just aligned to the correct direction
    if (isAligned && !_wasAligned) {
      Vibration.vibrate(duration: 300, amplitude: 200);
    }

    final now = DateTime.now();
    final headingDelta = _lastRawHeading == null
        ? double.infinity
        : _angleDelta(heading, _lastRawHeading!);
    final qiblaDelta = _lastRawQiblaDirection == null
        ? double.infinity
        : _angleDelta(qiblaDir, _lastRawQiblaDirection!);
    final alignmentChanged = isAligned != _wasAligned;
    final elapsedMs = now.difference(_lastCompassPaint).inMilliseconds;
    if (!alignmentChanged &&
        headingDelta < .45 &&
        qiblaDelta < .45 &&
        elapsedMs < 80) {
      return;
    }

    _lastCompassPaint = now;
    _lastRawHeading = heading;
    _lastRawQiblaDirection = qiblaDir;

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

  double _angleDelta(double a, double b) {
    final diff = (a - b).abs() % 360;
    return diff > 180 ? 360 - diff : diff;
  }

  // Logic to rotate the needle smoothly without jumping 360 degrees
  double _getContinuousAngle(double targetAngle, double currentAngle) {
    double diff = targetAngle - (currentAngle % 360);
    if (diff > 180) diff -= 360;
    if (diff < -180) diff += 360;
    return currentAngle + diff;
  }

  /// Wrapper so widget-building extensions (which aren't subclasses of State)
  /// can request a rebuild without touching the protected [setState] directly.
  void _rebuild(VoidCallback fn) => setState(fn);

  void _zoomMap(double factor) {
    AnalyticsService().trackButtonTap(
      'qibla',
      factor > 1 ? 'map_zoom_in' : 'map_zoom_out',
    );
    final currentScale = _mapController.value.getMaxScaleOnAxis();
    final nextScale = (currentScale * factor).clamp(1.0, 5.0);
    _mapController.value = Matrix4.identity()
      ..scaleByDouble(nextScale, nextScale, nextScale, 1);
  }

  void _resetMap() {
    AnalyticsService().trackButtonTap('qibla', 'map_reset');
    _mapController.value = Matrix4.identity();
  }

  void _showMapView() {
    AnalyticsService().trackButtonTap('qibla', 'map_open');
    setState(() => _showMap = true);
  }

  void _hideMapView({String source = 'back'}) {
    AnalyticsService().trackButtonTap(
      'qibla',
      'map_close',
      params: {'source': source},
    );
    setState(() => _showMap = false);
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
                Positioned.fill(child: _buildBackgroundScrim()),
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
                                  _buildStatusTag(
                                    isAligned,
                                    isCalibrating: provider.direction == null,
                                  ),
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
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(AppIcons.locationOff, size: 64, color: mutedColor),
            const SizedBox(height: 16),
            Text(
              provider.errorMessage.isEmpty
                  ? AppLocalizations.of(context).requestingLocationPermission
                  : provider.errorMessage,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                AnalyticsService().trackButtonTap('qibla', 'permission_retry');
                provider.init();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.emerald,
              ),
              child: Text(
                AppLocalizations.of(context).tryAgain,
                style: const TextStyle(color: Colors.white),
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

    final accent = AppColors.adaptiveAccent(context);
    final titleColor = AppColors.isDark(context)
        ? AppColors.softGold
        : AppColors.emerald;
    return AppTopBar(
      title: AppLocalizations.of(context).qibla,
      leadingIcon: AppIcons.locationOn,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      titleColor: titleColor,
      iconColor: accent,
      actions: [
        AppTopBarIcon(
          icon: AppIcons.map,
          color: accent,
          backgroundColor: accent.withValues(alpha: 0.14),
          tooltip: AppLocalizations.of(context).qiblaMap,
          onTap: _showMapView,
        ),
        const AppSettingsButton(),
      ],
    );
  }

  Widget _buildBackgroundScrim() {
    final isDark = AppColors.isDark(context);
    return IgnorePointer(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: isDark
              ? AppColors.darkBackground.withValues(alpha: .42)
              : Colors.white.withValues(alpha: .52),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isDark
                ? [
                    AppColors.darkBackground.withValues(alpha: .82),
                    AppColors.darkBackground.withValues(alpha: .68),
                    AppColors.darkBackground.withValues(alpha: .56),
                    AppColors.darkBackground.withValues(alpha: .34),
                  ]
                : [
                    Colors.white.withValues(alpha: .78),
                    Colors.white.withValues(alpha: .64),
                    Colors.white.withValues(alpha: .48),
                    Colors.white.withValues(alpha: .30),
                  ],
            stops: const [0, .24, .62, 1],
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(0, -.02),
              radius: .72,
              colors: isDark
                  ? [
                      AppColors.darkBackground.withValues(alpha: .74),
                      AppColors.darkBackground.withValues(alpha: .36),
                      AppColors.darkBackground.withValues(alpha: 0),
                    ]
                  : [
                      Colors.white.withValues(alpha: .82),
                      Colors.white.withValues(alpha: .38),
                      Colors.white.withValues(alpha: 0),
                    ],
              stops: const [0, .56, 1],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStatusTag(bool isAligned, {bool isCalibrating = false}) {
    final isDark = AppColors.isDark(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isAligned
            ? (isDark ? AppColors.softGold : AppColors.emerald)
            : AppColors.adaptiveCard(context, lightAlpha: 0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.lightShadowBlack,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isAligned ? AppIcons.checkCircle : AppIcons.nearMe,
            color: isAligned
                ? (isDark ? AppColors.darkBackground : Colors.white)
                : mutedColor,
            size: 16,
          ),
          const SizedBox(width: 8),
          Text(
            isAligned
                ? AppLocalizations.of(context).alignedToQibla
                : isCalibrating
                ? AppLocalizations.of(context).calibratingCompass
                : AppLocalizations.of(context).adjustPosition,
            style: TextStyle(
              color: isAligned
                  ? (isDark ? AppColors.darkBackground : Colors.white)
                  : mutedColor,
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
      final l10n = AppLocalizations.of(context);
      if (deg >= 337.5 || deg < 22.5) return l10n.north;
      if (deg >= 22.5 && deg < 67.5) return l10n.northeast;
      if (deg >= 67.5 && deg < 112.5) return l10n.east;
      if (deg >= 112.5 && deg < 157.5) return l10n.southeast;
      if (deg >= 157.5 && deg < 202.5) return l10n.south;
      if (deg >= 202.5 && deg < 247.5) return l10n.southwest;
      if (deg >= 247.5 && deg < 292.5) return l10n.west;
      if (deg >= 292.5 && deg < 337.5) return l10n.northwest;
      return '';
    }

    final headingFixed = heading < 0 ? heading + 360 : heading;
    final l10n = AppLocalizations.of(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);

    return Column(
      children: [
        Text(
          '${headingFixed.round() % 360}° ${getDirectionName(headingFixed)}',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          distance != null
              ? l10n.distanceToMecca(distance.toStringAsFixed(0))
              : l10n.calculatingDistance,
          style: TextStyle(fontSize: 14, color: mutedColor),
        ),
      ],
    );
  }

  Widget _buildInfoBox() {
    final textColor = AppColors.adaptiveSecondaryText(context);
    final accent = AppColors.adaptiveAccent(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.adaptiveCard(context, lightAlpha: 0.7),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppColors.adaptiveBorder(context, alpha: .12),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(
              alpha: AppColors.isDark(context) ? .18 : .03,
            ),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(AppIcons.info, color: accent, size: 20),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              AppLocalizations.of(
                context,
              ).forTheMostAccurateResultsKeepYourPhone,
              style: TextStyle(fontSize: 13, color: textColor, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(
    String label,
    String value,
    Color color, {
    Widget? suffix,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w800,
            color: AppColors.textGrey,
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
            if (suffix != null) ...[const SizedBox(width: 4), suffix],
          ],
        ),
      ],
    );
  }
}
