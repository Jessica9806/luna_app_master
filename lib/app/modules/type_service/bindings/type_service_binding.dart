import 'package:get/get.dart';

import '../controllers/type_service_controller.dart';

class TypeServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TypeServiceController>(
      () => TypeServiceController(),
    );
  }
}
