import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/purchase_model.dart';

class PurchaseProvider extends GetConnect {

  Future<Response> getPurchases() {
    return get(ApiPath.getPurchases);
  }

  Future<Response> createPurchase(
      PurchaseCreate purchaseCreate) {
    return post(ApiPath.createPurchase,
        purchaseCreate.toJson(),
        decoder: (data) => Purchase.fromJson(data)
    );
  }

  Future<Response> getPurchase(int purchase_id) {
    return get('$ApiPath.getPurchase$purchase_id');
  }

  Future<Response> deletePurchase(int purchase_id) {
    return delete('$ApiPath.deletePurchase$purchase_id');
  }

  Future<Response> updatePurchase(int? purchase_id, Purchase purchase) {
    return put('$ApiPath.updatePurchase$purchase_id/update',
        purchase.toJson(),
        decoder: (data) => Purchase.fromJson(data)
    );
  }
}
