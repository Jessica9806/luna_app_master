import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/detail_purchase_model.dart';
import 'package:luna_app/app/data/model/product_model.dart';
import 'package:luna_app/app/data/model/purchase_model.dart';
import 'package:luna_app/app/data/repository/detail_purchase_repository.dart';
import 'package:luna_app/app/data/repository/product_repository.dart';
import 'package:luna_app/app/data/repository/purchase_repository.dart';

class DetailPurchaseController extends GetxController {
  final DetailPurchaseRepository _detailPurchaseRepository = DetailPurchaseRepository();
  final PurchaseRepository _purchaseRepository = PurchaseRepository();
  final ProductRepository _productRepository = ProductRepository();

  RxList<DetailPurchase> _detailPurchases = <DetailPurchase>[].obs;
  RxList<Purchase> _purchases = <Purchase>[].obs;
  RxList<Product> _products = <Product>[].obs;

  Rx<DetailPurchase> _detailPurchase = DetailPurchase().obs;

  final amountController = TextEditingController();
  final priceController = TextEditingController();
  final subTotalController = TextEditingController();
  final taxController = TextEditingController();
  final profitPercentageController = TextEditingController();
  final purchaseController = TextEditingController();
  final productController = TextEditingController();

  @override
  void onInit() {
    getDetailPurchases();
    super.onInit();
  }

  void getDetailPurchases() async {
    try {
      final detailPurchaseResult = await _detailPurchaseRepository.getDetailPurchases();
      _detailPurchases.assignAll(detailPurchaseResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getProducts() async {
    try {
      final productsResult = await _productRepository.getProducts();
      _products.assignAll(productsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPurchases() async {
    try {
      final purchaseResult = await _purchaseRepository.getPurchases();
      _purchases.assignAll(purchaseResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createDetailPurchase() async {
    final detailPurchaseCreate = DetailPurchase(
      amount: int.parse(amountController.text),
      price: double.parse(priceController.text),
      subtotal: double.parse(subTotalController.text),
      tax: double.parse(taxController.text),
      profitPercentage: double.parse(profitPercentageController.text),
      purchase: int.parse(purchaseController.text),
      product: int.parse(productController.text)
    );

    try {
      final createDetailPurchase = await _detailPurchaseRepository.createDetailPurchase(detailPurchaseCreate);
      _detailPurchases.add(createDetailPurchase);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getDetailPurchase(int detailPurchaseId) async {
    try {
      final detailPurchaseResult = await _detailPurchaseRepository.getDetailPurchase(detailPurchaseId);
      _detailPurchase.value = detailPurchaseResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateDetailPurchase(DetailPurchase detailPurchase) async {
    try {
      final updateDetailPurchaseResult = await _detailPurchaseRepository.updateDetailPurchase(detailPurchase.id, detailPurchase);
      final index = _detailPurchases.indexWhere((detailPurchase) => detailPurchase.id == updateDetailPurchaseResult.id);
      _detailPurchases[index] = updateDetailPurchaseResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteDetailPurchase(int detailPurchaseId) async {
    try {
      await _detailPurchaseRepository.deleteDetailPurchase(detailPurchaseId);
      _detailPurchases.removeWhere((detailPurchase) => detailPurchase.id == detailPurchaseId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

}
