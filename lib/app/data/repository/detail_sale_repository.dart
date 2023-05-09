import 'package:luna_app/app/data/model/detail_sale_model.dart';
import 'package:luna_app/app/data/providers/detail_sale_provider.dart';

class DetailSaleRepository {
  final DetailSaleProvider _detailSaleProvider = DetailSaleProvider();

  Future<List<DetailSale>> getDetailSales() async {
    final response = await _detailSaleProvider.getDetailSales();
    if (response.status.hasError) {
      throw Exception('Error al mostrar el detalle de ventas');
    } else {
      final List<dynamic> detailSaleJson = response.body;
      return detailSaleJson.map((json) => DetailSale.fromJson(json)).toList();
    }
  }

  Future<DetailSale> createDetailSale(DetailSaleCreate detailSaleCreate) async {
    final response =
        await _detailSaleProvider.createDetailSale(detailSaleCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear un detalle de venta');
    } else {
      final dynamic detailSaleJson = response.body;
      return DetailSale.fromJson(detailSaleJson);
    }
  }

  Future<DetailSale> getDetailSale(int detailSaleId) async {
    final response = await _detailSaleProvider.getDetailSale(detailSaleId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar el detalle de venta');
    } else {
      final dynamic detailSaleJson = response.body;
      return DetailSale.fromJson(detailSaleJson);
    }
  }

  Future deleteDetailSale(int detailSaleId) async {
    final response = await _detailSaleProvider.deleteDetailSale(detailSaleId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar el detalle de venta');
    }
  }

  Future<DetailSale> updateDetailSale(
      int? detailSaleId, DetailSale detailSale) async {
    final response =
        await _detailSaleProvider.updateDetailSale(detailSaleId, detailSale);
    if (response.status.hasError) {
      throw Exception('Error al actualizar el detalle de venta');
    } else {
      final dynamic detailSaleJson = response.body;
      return DetailSale.fromJson(detailSaleJson);
    }
  }
}
