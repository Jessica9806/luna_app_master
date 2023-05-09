import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/detail_purchase_model.dart';

class DetailPurchaseProvider extends GetConnect {
  Future<Response> getDetailPurchases() {
    return get(ApiPath.getDetailPurchases);
  }

  Future<Response> createDetailPurchase(
      DetailPurchaseCreate detailPurchaseCreate) {
    return post(ApiPath.createDetailPurchase,
        detailPurchaseCreate.toJson(),
        decoder: (data) => DetailPurchase.fromJson(data)
    );
  }

  Future<Response> getDetailPurchase(int detail_purchase_id) {
    return get('$ApiPath.getDetailPurchase$detail_purchase_id');
  }

  Future<Response> deleteDetailPurchase(int detail_purchase_id) {
    return delete('$ApiPath.deleteConsultation$detail_purchase_id');
  }

  Future<Response> updateDetailPurchase(int? detail_purchase_id, DetailPurchase detailPurchase) {
    return put('$ApiPath.updateConsultation$detail_purchase_id/update',
        detailPurchase.toJson(),
        decoder: (data) => DetailPurchase.fromJson(data)
    );
  }
}
