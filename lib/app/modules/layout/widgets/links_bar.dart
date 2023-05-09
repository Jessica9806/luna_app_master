import 'package:flutter/material.dart';
import 'package:luna_app/app/widgets/buttons/link_text.dart';

class LinksBar extends StatelessWidget {
  const LinksBar({super.key});

  @override
  Widget build(BuildContext context) {

    final size =MediaQuery.of(context).size;

    return Container(
        color: Colors.black,
        height: (size.width>800)?size.height*0.07:null,
        child: Wrap(
          alignment: WrapAlignment.center,
          children: [
            LinkText(text:'Acerca de nosotros', onPressed: ()=>print('About')),
            LinkText(text:'Centro de Ayuda'),
            LinkText(text:'Términos de servicio'),
            LinkText(text:'Política de Privacidad'),
            LinkText(text:'Ubicación'),
            LinkText(text:'Teléfonos'),
            LinkText(text:'Dirección'),
            LinkText(text:'Más Información'),
          ],
        )
    );
  }
}