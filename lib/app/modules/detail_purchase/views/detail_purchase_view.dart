import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';

import '../controllers/detail_purchase_controller.dart';

class DetailPurchaseView extends GetView<DetailPurchaseController> {
  const DetailPurchaseView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return Container(
      child: Text(
        'DetailPurchaseView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
