import 'package:get/get.dart';

import 'package:luna_app/app/modules/user/controllers/login_controller.dart';
import 'package:luna_app/app/modules/user/controllers/register_controller.dart';

import '../controllers/user_controller.dart';

class UserBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<UserController>(
      () => UserController(),
    );
  }
}
