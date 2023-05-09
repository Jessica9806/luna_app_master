import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/detail_sale_model.dart';
import 'package:luna_app/app/data/model/product_model.dart';
import 'package:luna_app/app/data/model/sale_model.dart';
import 'package:luna_app/app/data/repository/detail_sale_repository.dart';
import 'package:luna_app/app/data/repository/product_repository.dart';
import 'package:luna_app/app/data/repository/sale_repository.dart';

class DetailSaleController extends GetxController {
  final DetailSaleRepository _detailSaleRepository = DetailSaleRepository();
  final SaleRepository _saleRepository = SaleRepository();
  final ProductRepository _productRepository = ProductRepository();

  RxList<DetailSale> _detailSales = <DetailSale>[].obs;
  RxList<Sale> _sales = <Sale>[].obs;
  RxList<Product> _products = <Product>[].obs;

  Rx<DetailSale> _detailSale = DetailSale().obs;

  final amountController = TextEditingController();
  final priceController = TextEditingController();
  final taxController = TextEditingController();
  final subtotalController = TextEditingController();
  final discountController = TextEditingController();
  final saleController = TextEditingController();
  final productController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void getDetailSales() async {
    try {
      final detailSalesResult = await _detailSaleRepository.getDetailSales();
      _detailSales.assignAll(detailSalesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getSales() async {
    try {
      final salesResult = await _saleRepository.getSales();
      _sales.assignAll(salesResult);
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

  void createDetailSale() async {
    final detailSaleCreate = DetailSale(
      amount: int.parse(amountController.text),
      price: double.parse(priceController.text),
      tax: double.parse(taxController.text),
      subtotal: double.parse(subtotalController.text),
      discount: double.parse(discountController.text),
      sale: int.parse(saleController.text),
      product: int.parse(productController.text)
    );
    try {
      final createDetailSale = await _detailSaleRepository.createDetailSale(detailSaleCreate);
      _detailSales.add(createDetailSale);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getDetailSale(int detailSaleId) async {
    try {
      final detailSaleResult = await _detailSaleRepository.getDetailSale(detailSaleId);
      _detailSale.value = detailSaleResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateDetailSale(DetailSale detailSale) async {
    try {
      final updateDetailSaleResult = await _detailSaleRepository.updateDetailSale(detailSale.id, detailSale);
      final index = _detailSales.indexWhere((detailSale) => detailSale.id == updateDetailSaleResult.id);
      _detailSales[index] = updateDetailSaleResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
  
  void deleteDetailSale(int detailSaleId) async {
    try {
      await _detailSaleRepository.deleteDetailSale(detailSaleId);
      _detailSales.removeWhere((detailSale) => detailSale.id == detailSaleId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
