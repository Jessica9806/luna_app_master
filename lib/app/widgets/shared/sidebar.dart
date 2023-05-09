import 'package:flutter/material.dart';
import 'package:luna_app/app/widgets/shared/widgets/logo.dart';
import 'package:luna_app/app/widgets/shared/widgets/menu_options.dart';
import 'package:luna_app/app/widgets/shared/widgets/text_separator.dart';


//barra de menu

class SideBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: buildBoxDecoration(),
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          Logo(),

          SizedBox(height: 50),

          TextSeparator(text:'Procesos Médicos'),

          MenuOptions(
              text: 'Clientes',
              icon: Icons.people_alt_outlined,
              onPressed: (){
                // NavigationService.navigateTo(Flurorouter.dashboardRoute);
                // SideMenuProvider.closeMenu();
              }
          ),

          MenuOptions(
              text: 'Pacientes',
              icon: Icons.pets,
              onPressed: (){
                // NavigationService.navigateTo(Flurorouter.pacientesRoute);
                // SideMenuProvider.closeMenu();
              }
          ),

          MenuOptions(
              text: 'Citas',
              icon: Icons.check_box,
              onPressed: ()=>print('Dashboard')
          ),

          SizedBox(height: 20),

          TextSeparator(text:'Procesos Administrativos'),

          MenuOptions(
              text: 'Inventario',
              icon: Icons.inventory,
              onPressed: ()=>print('Dashboard')
          ),

          MenuOptions(
              text: 'Ventas',
              icon: Icons.shopping_cart_checkout_outlined,
              onPressed: ()=>print('Dashboard')
          ),

          MenuOptions(
              text: 'Facturar',
              icon: Icons.monetization_on,
              onPressed: ()=>print('Dashboard')
          ),

          SizedBox(height: 20),

          TextSeparator(text:'Salir'),

          MenuOptions(
              text: 'Cerrar sesión',
              icon: Icons.exit_to_app_outlined,
              onPressed: ()=>print('Dashboard')
          ),
        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Color(0xff092044),
            Color(0xff092030),
          ]
      ),
      boxShadow: [
        BoxShadow(
            color: Colors.black,
            blurRadius: 10
        )
      ]
  );
}