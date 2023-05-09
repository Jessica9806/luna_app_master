import 'package:get/get.dart';

import '../controllers/esthetic_controller.dart';

class EstheticBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EstheticController>(
      () => EstheticController(),
    );
  }
}
