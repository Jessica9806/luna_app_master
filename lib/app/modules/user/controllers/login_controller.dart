import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:luna_app/app/data/model/type_appointment_model.dart';
import 'package:luna_app/app/data/providers/client_provider.dart';
import 'package:luna_app/app/data/providers/login_provider.dart';
import 'package:luna_app/app/data/providers/species_provider.dart';
import 'package:luna_app/app/data/repository/login_repository.dart';
import 'package:luna_app/app/data/model/auth_model.dart';
import 'package:luna_app/app/data/repository/client_repository.dart';
import 'package:luna_app/app/data/repository/register_repository.dart';
import 'package:http/http.dart' as http;
import 'package:luna_app/app/data/repository/species_repository.dart';
import 'dart:convert';

import '../../../data/providers/type_appointment_provider.dart';
import '../../../data/repository/type_appointment_repository.dart';
import '../../../utils/data_fake.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  RxBool isObscure = true.obs;

  isObscureActive() {
    isObscure.value = !isObscure.value;
  }

  @override
  void onInit() {
    // createTypeAppointment();
  }
  @override
  void onReady() {
    super.onReady();
  }

  validarCampos() {
    usernameController.text.isEmpty ? throw 'Rellenar Campo usuario' : null;
    passwordController.text.isEmpty ? throw 'Rellenar Campo contraseña' : null;
  }
 /* createTypeAppointment() {
    TypeAppointmentProvider typeAppointmentProvider = TypeAppointmentProvider();
    TypeAppointmentRepository typeAppointmentRepository = TypeAppointmentRepository(typeAppointmentProvider);

    print("entra");
    Future<TypeAppointment> result = typeAppointmentRepository.createTypeAppointment(generateRandomString(10), generateRandomString(20));
    result.then((value) {
      print(value.id);
      print(value.name);
      print(value.description);
    });
  }*/

 /* createSpecie() {
    SpeciesProvider _speciesProvider = SpeciesProvider();
    SpeciesRepository speciesRepository = SpeciesRepository();

  }*/

  probar() async {
    LoginRepository loginRepository = LoginRepository();
    //print(loginRepository.getTokenUser(username:'jona2', password: '12345678'));


    //RegisterRepository registerRepository = RegisterRepository();
    //registerRepository.registerDataUser(username: 'jona1', email: 'jona@example.com', password: '12345678');
    //var headers = {
    //  'Content-Type': 'application/json'
    //};
    //var request = http.Request('POST', Uri.parse('http://localhost:8000/api/v1/login'));
    //request.body = json.encode({
    //  "username": "jona2",
    //  "password": "12345678"
    //});
    //request.headers.addAll(headers);

    //http.StreamedResponse response = await request.send();

    //if (response.statusCode == 200) {
    //  print(await response.stream.bytesToString());
    //}
    //else {
    //print(response.reasonPhrase);
    //}

  }

  // Future<void> getDataUser() async {
  //   try {
  //     validarCampos();
  //     User user = await loginRepository.getDataUser(
  //         user: nombreCntl.text, pass: passwCntl.text);![](../../../../../../../../../var/folders/85/p5srgp996yb3wn12jsy65x500000gn/T/TemporaryItems/(Un documento siendo guardado por screencaptureui 4)/Captura de Pantalla 2022-12-13 a la(s) 12.09.55.png)
  //     final box = GetStorage();
  //     await box.write('name', user.data.name);
  //     Get.offAllNamed(Routes.HOME);
  //   } catch (e) {
  //     EasyLoading.showInfo(e.toString());
  //   }
  // }
}
