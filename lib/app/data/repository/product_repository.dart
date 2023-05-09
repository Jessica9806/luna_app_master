import 'package:luna_app/app/data/model/product_model.dart';
import 'package:luna_app/app/data/providers/product_provider.dart';

class ProductRepository {
  final ProductProvider _productProvider = ProductProvider();

  Future<List<Product>> getProducts() async {
    final response = await _productProvider.getProducts();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar los productos');
    } else {
      final List<dynamic> productJson = response.body;
      return productJson.map((json) => Product.fromJson(json)).toList();
    }
  }

  Future<Product> createProduct(ProductCreate productCreate) async {
    final response = await _productProvider.createProduct(productCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear producto');
    } else {
      final dynamic productJson = response.body;
      return Product.fromJson(productJson);
    }
  }

  Future<Product> getProduct(int productId) async {
    final response = await _productProvider.getProduct(productId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar producto');
    } else {
      final dynamic productJson = response.body;
      return Product.fromJson(productJson);
    }
  }

  Future deleteProduct(int productId) async {
    final response = await _productProvider.deleteProduct(productId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar producto');
    }
  }

  Future<Product> updateProduct(int? productId, Product product) async {
    final response = await _productProvider.updateProduct(productId, product);
    if (response.status.hasError) {
      throw Exception('Error al actualizar producto');
    } else {
      final dynamic productJson = response.body;
      return Product.fromJson(productJson);
    }
  }
}
