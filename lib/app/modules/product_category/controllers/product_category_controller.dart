import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/product_category_model.dart';
import 'package:luna_app/app/data/repository/product_category_repository.dart';

class ProductCategoryController extends GetxController {
  final ProductCategoryRepository _productCategoryRepository = ProductCategoryRepository();

  RxList<ProductCategory> _productCategories = <ProductCategory>[].obs;

  Rx<ProductCategory> _productCategory = ProductCategory().obs;

  final nameController = TextEditingController();
  final photoController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    getProductCategories();
    super.onInit();
  }

  void getProductCategories() async {
    try {
      final productCategoriesResult = await _productCategoryRepository.getProductCategories();
      _productCategories.assignAll(productCategoriesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createProductCategory() async {
    final productCategoryCreate = ProductCategoryCreate(
      name: nameController.text,
      photo: photoController.text,
      description: descriptionController.text
    );

    try {
      final createProductCategory = await _productCategoryRepository.createProductCategory(productCategoryCreate);
      _productCategories.add(createProductCategory);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getProductCategory(int productCategoryId) async {
    try {
      final productCategoryResult = await _productCategoryRepository.getProductCategory(productCategoryId);
      _productCategory.value = productCategoryResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateProductCategory(ProductCategory productCategory) async {
    try {
      final updateProductCategoryResult = await _productCategoryRepository.updateProductCategory(productCategory.id, productCategory);
      final index = _productCategories.indexWhere((productCategory) => productCategory.id == updateProductCategoryResult.id);
      _productCategories[index] = updateProductCategoryResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteProductCategory(int productCategoryId) async {
    try {
      await _productCategoryRepository.deleteProductCategory(productCategoryId);
      _productCategories.removeWhere((productCategory) => productCategory.id == productCategoryId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }


}
