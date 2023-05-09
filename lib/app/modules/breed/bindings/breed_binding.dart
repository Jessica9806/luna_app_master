import 'package:get/get.dart';

import '../controllers/breed_controller.dart';

class BreedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BreedController>(
      () => BreedController(),
    );
  }
}
