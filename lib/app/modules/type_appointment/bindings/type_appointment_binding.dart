import 'package:get/get.dart';

import '../controllers/type_appointment_controller.dart';

class TypeAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TypeAppointmentController>(
      () => TypeAppointmentController(),
    );
  }
}
