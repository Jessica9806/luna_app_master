import 'package:luna_app/app/data/model/sale_model.dart';
import 'package:luna_app/app/data/providers/sale_provider.dart';

class SaleRepository {
  final SaleProvider _saleProvider = SaleProvider();

  Future<List<Sale>> getSales() async {
    final response = await _saleProvider.getSales();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar las ventas');
    } else {
      final List<dynamic> saleJson = response.body;
      return saleJson.map((json) => Sale.fromJson(json)).toList();
    }
  }

  Future<Sale> createSale(SaleCreate saleCreate) async {
    final response = await _saleProvider.createSale(saleCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear venta');
    } else {
      final dynamic saleJson = response.body;
      return Sale.fromJson(saleJson);
    }
  }

  Future<Sale> getSale(int saleId) async {
    final response = await _saleProvider.getSale(saleId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar venta');
    } else {
      final dynamic saleJson = response.body;
      return Sale.fromJson(saleJson);
    }
  }

  Future deleteSale(int saleId) async {
    final response = await _saleProvider.deleteSale(saleId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar venta');
    }
  }

  Future<Sale> updateSale(int? saleId, Sale sale) async {
    final response = await _saleProvider.updateSale(saleId, sale);
    if (response.status.hasError) {
      throw Exception('Error al actualizar venta');
    } else {
      final dynamic saleJson = response.body;
      return Sale.fromJson(saleJson);
    }
  }
}
