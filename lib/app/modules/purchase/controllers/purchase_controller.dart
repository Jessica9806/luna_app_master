import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/purchase_model.dart';
import 'package:luna_app/app/data/repository/purchase_repository.dart';

class PurchaseController extends GetxController {
  final PurchaseRepository _purchaseRepository = PurchaseRepository();

  RxList<Purchase> _purchases = <Purchase>[].obs;

  Rx<Purchase> _purchase = Purchase().obs;

  final totalController = TextEditingController();
  final imageController = TextEditingController();

  @override
  void onInit() {
    getPurchases();
    super.onInit();
  }

  void getPurchases() async {
    try {
      final purchasesResult = await _purchaseRepository.getPurchases();
      _purchases.assignAll(purchasesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createPurchase() async {
    final purchaseCreate = PurchaseCreate(
      total: double.parse(totalController.text),
      image: imageController.text
    );

    try {
      final createPurchase = await _purchaseRepository.createPurchase(purchaseCreate);
      _purchases.add(createPurchase);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPurchase(int purchaseId) async {
    try {
      final purchaseResult = await _purchaseRepository.getPurchase(purchaseId);
      _purchase.value = purchaseResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updatePurchase(Purchase purchase) async {
    try {
      final updatePurchaseResult = await _purchaseRepository.updatePurchase(purchase.id, purchase);
      final index = _purchases.indexWhere((purchase) => purchase.id == updatePurchaseResult.id);
      _purchases[index] = updatePurchaseResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deletePurchase(int purchaseId) async {
    try {
      await _purchaseRepository.deletePurchase(purchaseId);
      _purchases.removeWhere((purchase) => purchase.id == purchaseId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
