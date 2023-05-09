import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/product_model.dart';

class ProductProvider extends GetConnect {

  Future<Response> getProducts() {
    return get(ApiPath.getProducts);
  }

  Future<Response> createProduct(
      ProductCreate productCreate) {
    return post(ApiPath.createProduct,
        productCreate.toJson(),
        decoder: (data) => Product.fromJson(data)
    );
  }

  Future<Response> getProduct(int product_id) {
    return get('$ApiPath.getProduct$product_id');
  }

  Future<Response> deleteProduct(int product_id) {
    return delete('$ApiPath.deleteProduct$product_id');
  }

  Future<Response> updateProduct(int? product_id, Product product) {
    return put('$ApiPath.updateProduct$product_id/update',
        product.toJson(),
        decoder: (data) => Product.fromJson(data)
    );
  }
}
