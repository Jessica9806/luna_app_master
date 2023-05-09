import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:luna_app/app/layout/views/dashboard_view.dart';
import 'package:luna_app/app/modules/home/views/home_view.dart';

import '../controllers/client_controller.dart';
/*

class ClientView extends GetView<ClientController> {
  const ClientView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => DashboardController());
    return DashboardScreen(content: _Content());
  }

  Widget _Content() {
    return Container(
      child: Text(
        'ClientView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
*/

class ClientView extends GetView<ClientController> {
  const ClientView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clientes'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(label: Text('Nombre')),
            DataColumn(label: Text('Teléfono')),
            DataColumn(label: Text('Dirección')),
            DataColumn(label: Text('Cédula')),
            DataColumn(label: Text('Correo')),
            DataColumn(label: Text('Ciudad')),
          ],
          rows: List<DataRow>.generate(
            controller.clients.length,
                (int index) => DataRow(
              cells: <DataCell>[
                DataCell(Text(controller.clients[index].fullName.toString())),
                DataCell(Text(controller.clients[index].phone.toString())),
                DataCell(Text(controller.clients[index].address.toString())),
                DataCell(Text(controller.clients[index].identificationCard.toString())),
                DataCell(Text(controller.clients[index].email.toString())),
                DataCell(Text(controller.clients[index].city.toString())),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(HomeView());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}