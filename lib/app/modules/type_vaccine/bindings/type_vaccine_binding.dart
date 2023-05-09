import 'package:get/get.dart';

import '../controllers/type_vaccine_controller.dart';

class TypeVaccineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TypeVaccineController>(
      () => TypeVaccineController(),
    );
  }
}
