import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/modules/auth/controllers/login_controller.dart';
import 'package:luna_app/app/widgets/buttons/custom_outlined_button.dart';
import 'package:luna_app/app/widgets/buttons/link_text.dart';
import 'package:luna_app/app/widgets/inputs/custom_inputs.dart';

class RegisterView extends StatefulWidget {
  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final registCtrl = Get.put(LoginController());
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

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
            key: registerFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                //Nombre
                TextFormField(
                  //anexar
                  controller: registCtrl.nameCntrl,
                  onSaved: (value) {
                    registCtrl.name != value;
                  },
                  validator: (value) {
                    return registCtrl.validateName(value!);
                  },

                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Rubik-Italic",
                  ),
                  decoration: CustomInputs.loginInputDecoration(
                      hint: 'Ingrese su Nombre',
                      label: 'Nombre*',
                      icon: Icons.person),
                ),

                SizedBox(height: 20),

                //Email
                TextFormField(
                  //anexar
                  controller: registCtrl.emailCntrl,
                  onSaved: (value) {
                    registCtrl.email != value;
                  },
                  validator: (value) {
                    return registCtrl.validateEmail(value!);
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
                  //anexar
                  controller: registCtrl.passwordCntrl,
                  onSaved: (value) {
                    registCtrl.pasword != value;
                  },
                  validator: (value) {
                    return registCtrl.validatePassword(value!);
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
                    registCtrl.chekRegister();
                  },
                  text: 'Crear cuenta',
                  isFilled: true,
                ),
                SizedBox(height: 20),

                CustomOutlinedButton(
                  onPressed: () {
                    registCtrl.irLogin();
                  },
                  text: 'Ir a Login',
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
