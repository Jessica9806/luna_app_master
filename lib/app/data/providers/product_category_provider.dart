import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import '../model/product_category_model.dart';

class ProductCategoryProvider extends GetConnect {

  Future<Response> getProductCategories() {
    return get(ApiPath.getProductCategories);
  }

  Future<Response> createProductCategory(
      ProductCategoryCreate productCategoryCreate) {
    return post(ApiPath.createProductCategory,
        productCategoryCreate.toJson(),
        decoder: (data) => ProductCategory.fromJson(data)
    );
  }

  Future<Response> getProductCategory(int product_category_id) {
    return get('$ApiPath.getProductCategory$product_category_id');
  }

  Future<Response> deleteProductCategory(int product_category_id) {
    return delete('$ApiPath.deleteProductCategory$product_category_id');
  }

  Future<Response> updateProductCategory(int? product_category_id, ProductCategory productCategory) {
    return put('$ApiPath.updateProductCategory$product_category_id/update',
        productCategory.toJson(),
        decoder: (data) => ProductCategory.fromJson(data)
    );
  }
}
