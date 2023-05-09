import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';

import '../controllers/esthetic_has_type_service_controller.dart';

class EstheticHasTypeServiceView
    extends GetView<EstheticHasTypeServiceController> {
  const EstheticHasTypeServiceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return Container(
      child: Text(
        'EstheticHasTypeServiceView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
