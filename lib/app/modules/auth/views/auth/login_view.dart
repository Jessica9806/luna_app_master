import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/modules/auth/controllers/login_controller.dart';
import 'package:luna_app/app/widgets/buttons/custom_outlined_button.dart';
import 'package:luna_app/app/widgets/buttons/link_text.dart';
import 'package:luna_app/app/widgets/inputs/custom_inputs.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginCtrl = Get.put(LoginController());
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF212332),
      margin: EdgeInsets.only(top: 70),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 370),
          child: Form(
            key: loginFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                //anexar
                TextFormField(
                  controller: loginCtrl.emailCntrl,
                  onSaved: (value) {
                    loginCtrl.email != value;
                  },
                  validator: (value) {
                    return loginCtrl.validateEmail(value!);
                  },
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Rubik-Italic",
                  ),
                  decoration: CustomInputs.loginInputDecoration(
                      hint: 'Ingrese su Email',
                      label: 'Email*',
                      icon: Icons.email_outlined),
                ),

                SizedBox(height: 20),

                //Contraseña
                TextFormField(
                  //anexar campos
                  controller: loginCtrl.passwordCntrl,
                  onSaved: (value) {
                    loginCtrl.pasword != value;
                  },
                  validator: (value) {
                    return loginCtrl.validatePassword(value!);
                  },

                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Rubik-Italic",
                  ),
                  decoration: CustomInputs.loginInputDecoration(
                      hint: '*******',
                      label: 'Ingrese su Contraseña*',
                      icon: Icons.lock_outline_rounded),
                ),
                SizedBox(height: 20),

                CustomOutlinedButton(
                  onPressed: () {
                    loginCtrl.chekLogin();
                  },
                  text: 'Ingresar',
                  isFilled: true,
                ),
                SizedBox(height: 20),

                CustomOutlinedButton(
                  onPressed: () {
                    loginCtrl.registro();
                  },
                  text: 'Registrarse',
                  color: Colors.orange,
                  isFilled: true,
                ),

                SizedBox(height: 20),

                LinkText(
                  text: 'Olvidé mi contraseña',
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
