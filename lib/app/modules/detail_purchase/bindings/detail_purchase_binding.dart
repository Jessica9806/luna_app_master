import 'package:get/get.dart';

import '../controllers/detail_purchase_controller.dart';

class DetailPurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPurchaseController>(
      () => DetailPurchaseController(),
    );
  }
}
