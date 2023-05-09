import 'package:flutter/material.dart';
import 'package:luna_app/app/widgets/shared/widgets/navbar_avatar.dart';
import 'package:luna_app/app/widgets/shared/widgets/notifications_indicator.dart';
import 'package:luna_app/app/widgets/shared/widgets/search_text.dart';
import 'package:luna_app/app/widgets/shared/widgets/sidemenu_provider.dart';


class Navbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;

    return Container(

      width: double.infinity,
      height: 50,
      decoration: buildBoxDecoration(),
      child: Row(
        children: [
          //Icono hamburguesa
          if(size.width<=700)
            IconButton(
                icon: Icon(Icons.menu_outlined),
                //abrir y cerrar menu =>disparar animación
                onPressed: ()=>SideMenuProvider.openMenu()
            ),

          SizedBox(height: 5),

          //Buscador
          if(size.width>400)
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 250),
              child: SearchText(),
            ),

          Spacer(),

          NotificationsIndicator(),

          SizedBox(width: 10),

          NavbarAvatar(),

          SizedBox(width: 10),

        ],
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
            color: Colors.black12,
            blurRadius: 5
        )
      ]
  );
}