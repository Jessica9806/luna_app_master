import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_responsive.dart';
import 'package:luna_app/app/modules/home/controllers/home_controller.dart';

import 'package:luna_app/app/layout/views/dashboard_view.dart';

 class HomeView extends GetResponsiveView {

   @override
   Widget builder() {
     Get.lazyPut(() => DashboardController());
     return DashboardScreen(content: _Content());
   }

   Widget _Content() {
     return Container(
       child: Text(
         'HomeView is working',
         style: TextStyle(fontSize: 20),
       ),
     );
   }
 }





