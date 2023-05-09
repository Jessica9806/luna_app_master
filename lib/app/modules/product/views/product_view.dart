import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/product_controller.dart';
import 'package:luna_app/app/layout/components/boton.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return GetBuilder<ProductController>(
        init: ProductController(),
        builder: (_) =>
        Container(
          child: Text(
          'ProductView is working',
          style: TextStyle(fontSize: 20),
        ),
      )
    );
  }
}
