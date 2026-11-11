import 'dart:async';

import 'package:flutter/material.dart';
import '../../../../language/generated/app_localizations.dart';
import '../../../../core/constants/app_icons.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/services/analytics_service.dart';
import '../../../../core/services/iap_service.dart';
import '../../../../core/widgets/base_app_bar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final IAPService _iapService = IAPService();
  StreamSubscription<PurchaseDetails>? _purchaseSubscription;
  bool _isLoading = true;

  static const Set<String> _kProductIds = {
    'remove_ads',
    'premium_themes',
    'custom_sounds',
    'full_bundle',
  };

  @override
  void initState() {
    super.initState();
    _initIAP();
  }

  Future<void> _initIAP() async {
    await _iapService.initialize();
    await _iapService.loadProducts(_kProductIds);
    if (!mounted) return;

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
    }

    _purchaseSubscription = _iapService.purchaseStream.listen((
      purchaseDetails,
    ) {
      if (mounted) {
        String message = AppLocalizations.of(
          context,
        ).purchaseSuccessful(purchaseDetails.productID);
        if (purchaseDetails.status == PurchaseStatus.restored) {
          message = AppLocalizations.of(
            context,
          ).purchaseRestored(purchaseDetails.productID);
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: AppColors.emerald),
        );
        setState(() {}); // Refresh to update UI if needed
      }
    });
  }

  @override
  void dispose() {
    _purchaseSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final titleColor = AppColors.adaptiveInk(context);
    final mediaQuery = MediaQuery.of(context);
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final backgroundCacheWidth =
        (mediaQuery.size.width * mediaQuery.devicePixelRatio).round();
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            isDark
                ? 'assets/images/bg_darkmode.webp'
                : 'assets/images/img_background.webp',
            fit: BoxFit.cover,
            cacheWidth: backgroundCacheWidth,
            filterQuality: FilterQuality.low,
          ),
          if (isDark)
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.darkBackground.withValues(alpha: .18),
              ),
            ),
          SafeArea(
            child: Column(
              children: [
                AppTopBar(
                  title: AppLocalizations.of(context).shopCustomization,
                  leading: AppTopBarIcon(
                    icon: AppIcons.arrowBack,
                    color: titleColor,
                    onTap: () => Navigator.pop(context),
                  ),
                  padding: const EdgeInsets.fromLTRB(20, 14, 20, 12),
                  titleColor: titleColor,
                ),
                Expanded(
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.emerald,
                          ),
                        )
                      : ListView(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          children: [
                            _buildShopItem(
                              context,
                              id: 'remove_ads',
                              title: AppLocalizations.of(context).removeAds,
                              description: AppLocalizations.of(
                                context,
                              ).getAnAdFreeExperienceForever,
                              price: _getPrice(
                                'remove_ads',
                                AppLocalizations.of(context).text299usd,
                              ),
                              icon: AppIcons.block,
                              color: Colors.redAccent,
                            ),
                            const SizedBox(height: 16),
                            _buildShopItem(
                              context,
                              id: 'premium_themes',
                              title: AppLocalizations.of(context).premiumThemes,
                              description: AppLocalizations.of(
                                context,
                              ).unlockAllAppThemesAndCustomizations,
                              price: _getPrice(
                                'premium_themes',
                                AppLocalizations.of(context).text499usd,
                              ),
                              icon: AppIcons.palette,
                              color: Colors.purple,
                            ),
                            const SizedBox(height: 16),
                            _buildShopItem(
                              context,
                              id: 'custom_sounds',
                              title: AppLocalizations.of(
                                context,
                              ).customPrayerSounds,
                              description: AppLocalizations.of(
                                context,
                              ).personalizeYourAdhanNotifications,
                              price: _getPrice(
                                'custom_sounds',
                                AppLocalizations.of(context).text199usd,
                              ),
                              icon: AppIcons.musicNote,
                              color: Colors.blue,
                            ),
                            const SizedBox(height: 16),
                            _buildShopItem(
                              context,
                              id: 'full_bundle',
                              title: AppLocalizations.of(context).fullBundle,
                              description: AppLocalizations.of(
                                context,
                              ).allPremiumFeaturesAtADiscountedPrice,
                              price: _getPrice(
                                'full_bundle',
                                AppLocalizations.of(context).text799usd,
                              ),
                              icon: AppIcons.star,
                              color: AppColors.emerald,
                              isBestValue: true,
                            ),
                            const SizedBox(height: 8),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  AnalyticsService().trackButtonTap(
                                    'shop',
                                    'restore_purchases',
                                  );
                                  _iapService.restorePurchases();
                                },
                                child: Text(
                                  AppLocalizations.of(context).restorePurchases,
                                ),
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _getPrice(String id, String fallback) {
    try {
      final product = _iapService.products.firstWhere((p) => p.id == id);
      return product.price;
    } catch (_) {
      return fallback;
    }
  }

  void _handlePurchase(String id) {
    try {
      final product = _iapService.products.firstWhere((p) => p.id == id);
      _iapService.buyProduct(product);
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            AppLocalizations.of(context).productUnavailableFriendly,
          ),
        ),
      );
    }
  }

  Widget _buildShopItem(
    BuildContext context, {
    required String id,
    required String title,
    required String description,
    required String price,
    required IconData icon,
    required Color color,
    bool isBestValue = false,
  }) {
    final isDark = AppColors.isDark(context);
    final textColor = AppColors.adaptiveText(context);
    final mutedColor = AppColors.adaptiveSecondaryText(context);
    final accent = isBestValue ? AppColors.adaptiveAccent(context) : color;
    return InkWell(
      onTap: () => _handlePurchase(id),
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.adaptiveCard(context, lightAlpha: 0.9),
          borderRadius: BorderRadius.circular(20),
          border: isBestValue
              ? Border.all(color: AppColors.adaptiveAccent(context), width: 2)
              : Border.all(color: AppColors.adaptiveBorder(context, alpha: .1)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isDark ? 0.2 : 0.05),
              blurRadius: isDark ? 18 : 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: accent.withValues(alpha: isDark ? 0.18 : 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(icon, color: accent, size: 30),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 14,
                            color: mutedColor.withValues(alpha: 0.86),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.adaptiveAccent(context),
                    ),
                  ),
                ],
              ),
            ),
            if (isBestValue)
              Positioned(
                top: 0,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.adaptiveAccent(context),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context).bestValue,
                    style: TextStyle(
                      color: isDark ? AppColors.darkBackground : Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
