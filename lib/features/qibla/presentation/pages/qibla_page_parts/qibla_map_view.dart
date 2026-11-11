part of '../qibla_page.dart';

/// Full-screen map view (great-circle path to Mecca) split out of
/// [_QiblaPageState].
extension _QiblaMapView on _QiblaPageState {
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
                    color: AppColors.mapBackground,
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
            onTap: () => _hideMapView(source: 'floating_back'),
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
                AppIcons.arrowBack,
                color: AppColors.deepEmerald,
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
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  AppIcons.locationOn,
                  color: AppColors.deepEmerald,
                  size: 18,
                ),
                const SizedBox(width: 8),
                Text(
                  AppLocalizations.of(context).currentLocationToMecca,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.qiblaGrey,
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
                _buildMapIcon(AppIcons.add, onTap: () => _zoomMap(1.25)),
                const Divider(height: 1, indent: 8, endIndent: 8),
                _buildMapIcon(AppIcons.remove, onTap: () => _zoomMap(0.8)),
                const Divider(height: 1, indent: 8, endIndent: 8),
                _buildMapIcon(AppIcons.myLocation, size: 20, onTap: _resetMap),
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
                _rebuild(() => _isMapCardExpanded = true);
              } else if (details.primaryVelocity! > 0 && _isMapCardExpanded) {
                _rebuild(() => _isMapCardExpanded = false);
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
                          AppLocalizations.of(context).distance,
                          provider.distanceToMecca == null
                              ? '--'
                              : '${provider.distanceToMecca!.toStringAsFixed(0)} km',
                          AppColors.successGreen,
                        ),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.grey.shade100,
                        ),
                        GestureDetector(
                          onTap: () {
                            AnalyticsService().trackButtonTap(
                              'qibla',
                              _isMapCardExpanded
                                  ? 'map_card_collapse'
                                  : 'map_card_expand',
                            );
                            _rebuild(
                              () => _isMapCardExpanded = !_isMapCardExpanded,
                            );
                          },
                          behavior: HitTestBehavior.opaque,
                          child: _buildInfoItem(
                            AppLocalizations.of(context).direction,
                            provider.qiblaDirection == null
                                ? '--'
                                : '${provider.qiblaDirection!.toStringAsFixed(0)}°',
                            AppColors.successGreen,
                            suffix: Icon(
                              _isMapCardExpanded
                                  ? AppIcons.keyboardArrowDown
                                  : AppIcons.keyboardArrowUp,
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
                                color: AppColors.successGreen.withValues(
                                  alpha: 0.1,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                AppIcons.mosque,
                                color: AppColors.deepEmerald,
                                size: 24,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Al-Masjid al-Haram',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: AppColors.qiblaGrey,
                                  ),
                                ),
                                Text(
                                  AppLocalizations.of(context).meccaSaudiArabia,
                                  style: const TextStyle(
                                    color: AppColors.mutedGrey,
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
                              onPressed: () =>
                                  _hideMapView(source: 'return_to_compass'),
                              icon: const Icon(AppIcons.explore, size: 20),
                              label: Text(
                                AppLocalizations.of(context).returnToCompass,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.deepEmerald,
                                foregroundColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                ),
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
                              AppIcons.layers,
                              color: AppColors.darkGrey2,
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
        child: Icon(icon, color: AppColors.mapGrey, size: size),
      ),
    );
  }
}
