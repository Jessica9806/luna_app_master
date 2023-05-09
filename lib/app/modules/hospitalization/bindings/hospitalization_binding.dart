import 'package:get/get.dart';

import '../controllers/hospitalization_controller.dart';

class HospitalizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HospitalizationController>(
      () => HospitalizationController(),
    );
  }
}
