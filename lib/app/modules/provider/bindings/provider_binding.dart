import 'package:get/get.dart';

import '../controllers/provider_controller.dart';

class ProviderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProviderController>(
      () => ProviderController(),
    );
  }
}
