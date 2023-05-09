import 'package:luna_app/app/data/model/detail_purchase_model.dart';
import 'package:luna_app/app/data/providers/detail_purchase_provider.dart';

class DetailPurchaseRepository {
  final DetailPurchaseProvider _detailPurchaseProvider =
      DetailPurchaseProvider();

  Future<List<DetailPurchase>> getDetailPurchases() async {
    final response = await _detailPurchaseProvider.getDetailPurchases();
    if (response.status.hasError) {
      throw Exception('Error al mostrar detalle de compra');
    } else {
      final List<dynamic> detailPurchaseJson = response.body;
      return detailPurchaseJson
          .map((json) => DetailPurchase.fromJson(json))
          .toList();
    }
  }

  Future<DetailPurchase> createDetailPurchase(
      DetailPurchaseCreate detailPurchaseCreate) async {
    final response = await _detailPurchaseProvider
        .createDetailPurchase(detailPurchaseCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear el detalle de compra');
    } else {
      final dynamic detailPurchaseJson = response.body;
      return DetailPurchase.fromJson(detailPurchaseJson);
    }
  }

  Future<DetailPurchase> getDetailPurchase(int detailPurchaseId) async {
    final response =
        await _detailPurchaseProvider.getDetailPurchase(detailPurchaseId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar el detalle de compra');
    } else {
      final dynamic detailPurchaseJson = response.body;
      return DetailPurchase.fromJson(detailPurchaseJson);
    }
  }

  Future deleteDetailPurchase(int detailPurchaseId) async {
    final response =
        await _detailPurchaseProvider.deleteDetailPurchase(detailPurchaseId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar el detalle de compra');
    }
  }

  Future<DetailPurchase> updateDetailPurchase(
      int? detailPurchaseId, DetailPurchase detailPurchase) async {
    final response = await _detailPurchaseProvider.updateDetailPurchase(
        detailPurchaseId, detailPurchase);
    if (response.status.hasError) {
      throw Exception('Error al actualizar el detalle de compra');
    } else {
      final dynamic detailPurchaseJson = response.body;
      return DetailPurchase.fromJson(detailPurchaseJson);
    }
  }
}
