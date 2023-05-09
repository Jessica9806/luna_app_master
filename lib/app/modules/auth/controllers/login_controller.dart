import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  late TextEditingController nameCntrl, emailCntrl, passwordCntrl;

  var email = '';
  var pasword = '';
  var name = '';

  @override
  void onInit() {
    nameCntrl = TextEditingController();
    emailCntrl = TextEditingController();
    passwordCntrl = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    nameCntrl.dispose();
    emailCntrl.dispose();
    passwordCntrl.dispose();
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'Ingrese su nombre';
    }
    return null;
  }

  String? validateEmail(String value) {
    if (value.isEmpty) {
      return 'Ingrese su nombre';
    }
    if (!GetUtils.isEmail(value)) {
      return "Ingrese un email válido";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'Ingrese su contraseña';
    }
    if (value.length <= 8) {
      return "La contraseña debe tener al menos 8 caracteres";
    }
    return null;
  }

  void chekLogin({@required GlobalKey<FormState>? loginFormKey}) async {
    final isValid = loginFormKey?.currentState?.validate() ?? true;
    if (!isValid) {
      return;
    }
    loginFormKey?.currentState?.save();
    Get.toNamed(Routes.DASHBOARD);
  }

  void chekRegister({@required GlobalKey<FormState>? registerFormKey}) async {
    final isValid = registerFormKey?.currentState?.validate() ?? true;
    if (!isValid) {
      return;
    }
    registerFormKey?.currentState?.save();
    Get.toNamed(Routes.LOGIN);
  }

  // validarCampos(){
  //   try {
  //     emailCntrl.text==''?throw 'Ingrese su Email':null;

  //     passwordCntrl.text.isEmpty?throw 'Ingrese su Contraseña':null;

  //     emailCntrl.text.isNotEmpty && passwordCntrl.text.isNotEmpty
  //     ?Get.toNamed(Routes.DASHBOARD)
  //     :null;

  //   } catch (e) {
  //     EasyLoading.showInfo(e.toString());
  //   }
  // }

  irLogin() {
    Get.toNamed(Routes.LOGIN);
  }

  registro() {
    Get.toNamed(Routes.REGISTER);
  }
}
