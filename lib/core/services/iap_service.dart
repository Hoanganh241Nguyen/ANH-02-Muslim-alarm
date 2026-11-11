import 'dart:async';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../ads/ads_service.dart';

class IAPService {
  static final IAPService _instance = IAPService._internal();
  factory IAPService() => _instance;
  IAPService._internal();

  final InAppPurchase _iap = InAppPurchase.instance;
  StreamSubscription<List<PurchaseDetails>>? _subscription;
  Future<void>? _initializeFuture;
  
  final List<ProductDetails> _products = [];
  List<ProductDetails> get products => _products;

  bool _isAvailable = false;
  bool get isAvailable => _isAvailable;

  static const String _kIAPBox = 'iap_box';
  static const String _kRemoveAdsKey = 'remove_ads_purchased';

  final _purchaseController = StreamController<PurchaseDetails>.broadcast();
  Stream<PurchaseDetails> get purchaseStream => _purchaseController.stream;

  Future<void> initialize() {
    return _initializeFuture ??= _initialize();
  }

  Future<void> _initialize() async {
    _isAvailable = await _iap.isAvailable();
    
    // Kiểm tra trạng thái mua hàng đã lưu
    final box = await Hive.openBox(_kIAPBox);
    final isAdsRemoved = box.get(_kRemoveAdsKey, defaultValue: false) as bool;
    if (isAdsRemoved) {
      AdsService.instance.enabled = false;
    }

    final purchaseUpdated = _iap.purchaseStream;
    _subscription = purchaseUpdated.listen(
      (purchaseDetailsList) {
        _listenToPurchaseUpdated(purchaseDetailsList);
      },
      onDone: () {
        _subscription?.cancel();
        _subscription = null;
      },
      onError: (error) {
        // Handle error
      },
    );
  }

  void _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) {
    for (var purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        // Show pending UI
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          // Handle error
        } else if (purchaseDetails.status == PurchaseStatus.purchased ||
                   purchaseDetails.status == PurchaseStatus.restored) {
          _handleSuccessfulPurchase(purchaseDetails);
          _purchaseController.add(purchaseDetails);
        }
        
        if (purchaseDetails.pendingCompletePurchase) {
          _iap.completePurchase(purchaseDetails);
        }
      }
    }
  }

  Future<void> _handleSuccessfulPurchase(PurchaseDetails purchaseDetails) async {
    final box = await Hive.openBox(_kIAPBox);
    if (purchaseDetails.productID == 'remove_ads' || 
        purchaseDetails.productID == 'full_bundle') {
      await box.put(_kRemoveAdsKey, true);
      AdsService.instance.enabled = false;
    }
  }

  Future<void> loadProducts(Set<String> ids) async {
    if (!_isAvailable) return;
    
    final response = await _iap.queryProductDetails(ids);
    if (response.error == null) {
      _products.clear();
      _products.addAll(response.productDetails);
    }
  }

  Future<void> restorePurchases() async {
    if (!_isAvailable) return;
    await _iap.restorePurchases();
  }

  Future<void> buyProduct(ProductDetails product) async {
    final purchaseParam = PurchaseParam(productDetails: product);
    await _iap.buyNonConsumable(purchaseParam: purchaseParam);
  }

  void dispose() {
    _subscription?.cancel();
    _subscription = null;
    _purchaseController.close();
  }
}
