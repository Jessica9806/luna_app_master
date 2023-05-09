import 'package:get/get.dart';

import '../controllers/pet_daycare_controller.dart';

class PetDaycareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetDaycareController>(
      () => PetDaycareController(),
    );
  }
}
