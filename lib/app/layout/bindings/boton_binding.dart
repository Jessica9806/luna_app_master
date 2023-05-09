//generate binding del boton

import 'package:get/get.dart';

import '../controllers/boton_controller.dart';

class BotonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BotonController>(
      () => BotonController(),
    );
  }
}