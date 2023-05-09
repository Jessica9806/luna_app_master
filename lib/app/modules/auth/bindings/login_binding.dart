import 'package:get/get.dart';
import 'package:luna_app/app/modules/auth/controllers/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
