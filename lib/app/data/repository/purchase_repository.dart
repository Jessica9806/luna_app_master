import 'package:luna_app/app/data/model/purchase_model.dart';
import 'package:luna_app/app/data/providers/purchase_provider.dart';

class PurchaseRepository {
  final PurchaseProvider _purchaseProvider = PurchaseProvider();

  Future<List<Purchase>> getPurchases() async {
    final response = await _purchaseProvider.getPurchases();
    if (response.status.hasError) {
      throw Exception('Error al mostrar las compras');
    } else {
      final List<dynamic> purchaseJson = response.body;
      return purchaseJson.map((json) => Purchase.fromJson(json)).toList();
    }
  }

  Future<Purchase> createPurchase(PurchaseCreate purchaseCreate) async {
    final response = await _purchaseProvider.createPurchase(purchaseCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear compra');
    } else {
      final dynamic purchaseJson = response.body;
      return Purchase.fromJson(purchaseJson);
    }
  }

  Future<Purchase> getPurchase(int purchaseId) async {
    final response = await _purchaseProvider.getPurchase(purchaseId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar compra');
    } else {
      final dynamic purchaseJson = response.body;
      return Purchase.fromJson(purchaseJson);
    }
  }

  Future deletePurchase(int purchaseId) async {
    final response = await _purchaseProvider.deletePurchase(purchaseId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar compra');
    }
  }

  Future<Purchase> updatePurchase(int? purchaseId, Purchase purchase) async {
    final response =
        await _purchaseProvider.updatePurchase(purchaseId, purchase);
    if (response.status.hasError) {
      throw Exception('Error al actualizar compra');
    } else {
      final dynamic purchaseJson = response.body;
      return Purchase.fromJson(purchaseJson);
    }
  }
}
