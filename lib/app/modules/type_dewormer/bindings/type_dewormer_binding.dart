import 'package:get/get.dart';

import '../controllers/type_dewormer_controller.dart';

class TypeDewormerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TypeDewormerController>(
      () => TypeDewormerController(),
    );
  }
}
