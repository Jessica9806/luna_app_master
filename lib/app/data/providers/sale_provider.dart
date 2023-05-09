import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/sale_model.dart';

class SaleProvider extends GetConnect {

  Future<Response> getSales() {
    return get(ApiPath.getSales);
  }

  Future<Response> createSale(
      SaleCreate saleCreate) {
    return post(ApiPath.createSale,
        saleCreate.toJson(),
        decoder: (data) => Sale.fromJson(data)
    );
  }

  Future<Response> getSale(int sale_id) {
    return get('$ApiPath.getSale$sale_id');
  }

  Future<Response> deleteSale(int sale_id) {
    return delete('$ApiPath.deleteSale$sale_id');
  }

  Future<Response> updateSale(int? sale_id, Sale sale) {
    return put('$ApiPath.updateSale$sale_id/update',
        sale.toJson(),
        decoder: (data) => Sale.fromJson(data)
    );
  }
}
