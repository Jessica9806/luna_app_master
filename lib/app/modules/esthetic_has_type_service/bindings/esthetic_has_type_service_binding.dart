import 'package:get/get.dart';

import '../controllers/esthetic_has_type_service_controller.dart';

class EstheticHasTypeServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstheticHasTypeServiceController>(
      () => EstheticHasTypeServiceController(),
    );
  }
}
