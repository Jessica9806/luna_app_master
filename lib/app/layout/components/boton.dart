//generate un widget de tipo boton con un controlador de estado en getx

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/boton_controller.dart';

class BotonHola extends StatelessWidget
{
  const BotonHola({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return GetBuilder<BotonController>(
      init: BotonController(),
      builder: (_) =>
      ElevatedButton(
            onPressed: () => _.hola(),
            child: Text('Homa mundo'),
          ),
    );
  }
}