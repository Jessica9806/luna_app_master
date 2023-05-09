import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/modules/auth/controllers/login_controller.dart';
import 'package:luna_app/app/modules/layout/widgets/background_vet.dart';
import 'package:luna_app/app/modules/layout/widgets/custom_title.dart';
import 'package:luna_app/app/modules/layout/widgets/links_bar.dart';


class AuthLayout extends GetView<LoginController> {
  final Widget child;

  const AuthLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: Color(0xFF212332),
        body: Builder(builder: (context) {
          return SafeArea(
            child: Scrollbar(
              child: ListView(
                physics: ClampingScrollPhysics(),
                children: [
                  (size.width > 700)
                      ? _DesktopBody(child: child)
                      : _MobileBody(child: child),

                  //Linksbar
                  LinksBar()
                ],
              ),
            ),
          );
        }));
  }
}

//////////////////MOBILE BODY////////////////////////////
class _MobileBody extends StatelessWidget {
  final Widget child;

  const _MobileBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF212332),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
              width: double.infinity,
              height: 300,
              child: Column(
                children: [Expanded(child: BackgroundVet())],
              )),
          Custom_Title(),
          Container(
            color: Color(0xFF212332),
            width: double.infinity,
            height: 500,
            child: child,
          ),
        ],
      ),
    );
  }
}

//////////////////DESKTOP BODY////////////////////////////
class _DesktopBody extends StatelessWidget {
//Vista formulario
  final Widget child;

  const _DesktopBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      //todo el ancho de la vista
      width: size.width,
      height: size.height * 0.95,
      color: Color(0xFF212332),

      child: Row(
        children: [
          //Formulario
          Container(
            width: 500,
            height: double.infinity,
            color: Color(0xFF212332),
            child: Column(
              children: [
                Custom_Title(),
                SizedBox(height: 20),
                Expanded(child: child)
              ],
            ),
          ),

          //vet background
          Expanded(child: BackgroundVet()),
        ],
      ),
    );
  }
}
