import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/modules/layout/controllers/dashboard_controller.dart';
import 'package:luna_app/app/widgets/cards/white_card.dart';
import 'package:luna_app/app/widgets/labels/custom_labels.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      physics: ClampingScrollPhysics(),
      children: [
        Text('Dashboard View', style: CustomLabels.h1),
        SizedBox(height: 10),
        WhiteCard(title: "Listado Clientes", child: Text('data'))
      ],
    ));
  }
}
