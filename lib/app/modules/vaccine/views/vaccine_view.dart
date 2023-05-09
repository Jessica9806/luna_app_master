import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';

import '../controllers/vaccine_controller.dart';

class VaccineView extends GetView<VaccineController> {
  const VaccineView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return Container(
      child: Text(
        'VaccineView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
