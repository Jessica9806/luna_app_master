import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';

import '../controllers/breed_controller.dart';

class BreedView extends GetView<BreedController> {
  const BreedView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return Container(
      child: Text(
        'BreedView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
