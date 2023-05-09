import 'package:get/get.dart';

import '../controllers/dewormer_controller.dart';

class DewormerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DewormerController>(
      () => DewormerController(),
    );
  }
}
