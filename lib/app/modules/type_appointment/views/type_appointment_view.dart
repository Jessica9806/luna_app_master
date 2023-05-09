import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';

import '../controllers/type_appointment_controller.dart';

class TypeAppointmentView extends GetView<TypeAppointmentController> {
  const TypeAppointmentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return Container(
      child: Text(
        'TypeAppointmentView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
