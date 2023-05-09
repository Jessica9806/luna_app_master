import 'package:luna_app/app/data/model/product_category_model.dart';
import 'package:luna_app/app/data/providers/product_category_provider.dart';

class ProductCategoryRepository {
  final ProductCategoryProvider _productCategoryProvider =
      ProductCategoryProvider();

  Future<List<ProductCategory>> getProductCategories() async {
    final response = await _productCategoryProvider.getProductCategories();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar las categorias de los productos');
    } else {
      final List<dynamic> productCategoryJson = response.body;
      return productCategoryJson
          .map((json) => ProductCategory.fromJson(json))
          .toList();
    }
  }

  Future<ProductCategory> createProductCategory(
      ProductCategoryCreate productCategoryCreate) async {
    final response = await _productCategoryProvider
        .createProductCategory(productCategoryCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear categoria de producto');
    } else {
      final dynamic productCategoryJson = response.body;
      return ProductCategory.fromJson(productCategoryJson);
    }
  }

  Future<ProductCategory> getProductCategory(int productCategoryId) async {
    final response =
        await _productCategoryProvider.getProductCategory(productCategoryId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar categoria de producto');
    } else {
      final dynamic productCategoryJson = response.body;
      return ProductCategory.fromJson(productCategoryJson);
    }
  }

  Future deleteProductCategory(int productCategoryId) async {
    final response =
        await _productCategoryProvider.deleteProductCategory(productCategoryId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar categoria de producto');
    }
  }

  Future<ProductCategory> updateProductCategory(
      int? productCategoryId, ProductCategory productCategory) async {
    final response = await _productCategoryProvider.updateProductCategory(
        productCategoryId, productCategory);
    if (response.status.hasError) {
      throw Exception('Error al actualizar categoria de producto');
    } else {
      final dynamic productCategoryJson = response.body;
      return ProductCategory.fromJson(productCategoryJson);
    }
  }
}
