import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/sale_model.dart';
import 'package:luna_app/app/data/repository/sale_repository.dart';

class SaleController extends GetxController {
  final SaleRepository _saleRepository = SaleRepository();
  
  RxList<Sale> _sales = <Sale>[].obs;
  
  Rx<Sale> _sale = Sale().obs;
  
  final totalController = TextEditingController();

  @override
  void onInit() {
    getSales();
    super.onInit();
  }

  void getSales() async {
    try {
      final salesResult = await _saleRepository.getSales();
      _sales.assignAll(salesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createSale() async {
    final saleCreate = SaleCreate(
      total: double.parse(totalController.text)
    );
    try {
      final createSale = await _saleRepository.createSale(saleCreate);
      _sales.add(createSale);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getSale(int saleId) async {
    try {
      final saleResult = await _saleRepository.getSale(saleId);
      _sale.value = saleResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateSale(Sale sale) async {
    try {
      final updateSaleResult = await _saleRepository.updateSale(sale.id, sale);
      final index = _sales.indexWhere((sale) => sale.id == updateSaleResult.id);
      _sales[index] = updateSaleResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteSale(int saleId) async {
    try {
      await _saleRepository.deleteSale(saleId);
      _sales.removeWhere((sale) => sale.id == saleId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
