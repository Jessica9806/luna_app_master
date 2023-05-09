import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/product_category_model.dart';
import 'package:luna_app/app/data/model/product_model.dart';
import 'package:luna_app/app/data/model/provider_model.dart';
import 'package:luna_app/app/data/repository/product_category_repository.dart';
import 'package:luna_app/app/data/repository/product_repository.dart';
import 'package:luna_app/app/data/repository/provider_repository.dart';

class ProductController extends GetxController {
  final ProductRepository _productRepository = ProductRepository();
  final ProductCategoryRepository _productCategoryRepository = ProductCategoryRepository();
  final ProviderRepository _providerRepository = ProviderRepository();

  RxList<Product> _products = <Product>[].obs;
  RxList<ProductCategory> _productCategories = <ProductCategory>[].obs;
  RxList<Provider> _providers = <Provider>[].obs;

  Rx<Product> _product = Product().obs;

  final nameController = TextEditingController();
  final internalCodeController = TextEditingController();
  final barcodeController = TextEditingController();
  final priceController = TextEditingController();
  final stockController = TextEditingController();
  final minimunAmountController = TextEditingController();
  final dueDateController = TextEditingController();
  final locationController = TextEditingController();
  final productCategoryController = TextEditingController();
  final providerController = TextEditingController();

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try {
      final productsResult = await _productRepository.getProducts();
      _products.assignAll(productsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getProductCategories() async {
    try {
      final productCategoriesResult = await _productCategoryRepository.getProductCategories();
      _productCategories.assignAll(productCategoriesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getProviders() async {
    try {
      final providersResult = await _providerRepository.getProviders();
      _providers.assignAll(providersResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createProduct() async {
    final productCreate = ProductCreate(
      name: nameController.text,
      internalCode: internalCodeController.text,
      barcode: barcodeController.text,
      price: double.parse(priceController.text),
      stock: int.parse(stockController.text),
      minimunAmount: int.parse(minimunAmountController.text),
      dueDate: dueDateController.text,
      location: locationController.text,
      productCategory: int.parse(productCategoryController.text),
      provider: int.parse(providerController.text)
    );
    try {
      final createProduct = await _productRepository.createProduct(productCreate);
      _products.add(createProduct);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getProduct(int productId) async {
    try {
      final productResult = await _productRepository.getProduct(productId);
      _product.value = productResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateProduct(Product product) async {
    try {
      final updateProductResult = await _productRepository.updateProduct(product.id, product);
      final index = _products.indexWhere((product) => product.id == updateProductResult.id);
      _products[index] = updateProductResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteProduct(int productId) async {
    try {
      await _productRepository.deleteProduct(productId);
      _products.removeWhere((product) => product.id == productId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
