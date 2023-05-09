import 'dart:convert';

import 'package:get/get.dart';

import 'package:luna_app/app/data/model/auth_model.dart';

import '../model/token_model.dart';
import 'package:luna_app/app/constans/app_constants.dart';

class LoginProvider extends GetConnect {

  LoginProvider(){
    httpClient.defaultDecoder = (data) => Auth.fromJson(data);
    httpClient.defaultContentType = 'application/json';
  }
  Future<Response> loginUser(Auth auth) {
    return post(ApiPath.login, auth.toJson());
  }

}
