import 'package:get/get.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/user_model.dart';


class RegisterProvider extends GetConnect {

  RegisterProvider() {
    httpClient.defaultDecoder = (data) => UserRegister.fromJson(data);
  }
  Future<Response> registerUser(UserRegister userRegister) {
    return post(ApiPath.register,
        userRegister.toJson()
      );
  }
}
