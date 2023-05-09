import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/detail_sale_model.dart';

class DetailSaleProvider extends GetConnect {

  Future<Response> getDetailSales() {
    return get(ApiPath.getDetailSales);
  }

  Future<Response> createDetailSale(
      DetailSaleCreate detailSaleCreate) {
    return post(ApiPath.createDetailSale,
        detailSaleCreate.toJson(),
        decoder: (data) => DetailSale.fromJson(data)
    );
  }

  Future<Response> getDetailSale(int detail_sale_id) {
    return get('$ApiPath.getDetailSale$detail_sale_id');
  }

  Future<Response> deleteDetailSale(int detail_sale_id) {
    return delete('$ApiPath.deleteDetailSale$detail_sale_id');
  }

  Future<Response> updateDetailSale(int? detail_sale_id, DetailSale detailSale) {
    return put('$ApiPath.updateDetailSale$detail_sale_id/update',
        detailSale.toJson(),
        decoder: (data) => DetailSale.fromJson(data)
    );
  }
}
