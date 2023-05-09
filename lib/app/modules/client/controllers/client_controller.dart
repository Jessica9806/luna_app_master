import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/client_model.dart';
import 'package:luna_app/app/data/repository/client_repository.dart';

class ClientController extends GetxController {
  final ClientRepository _clientRepository = ClientRepository();
  final isLoading = false.obs;

  RxList<Client> clients = <Client>[].obs;
  Rx<Client> client = Client().obs;

  final fullNameController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final identificationCardController = TextEditingController();
  final emailController = TextEditingController();
  final cityController = TextEditingController();

  @override
  void onInit() {
    getClients();
    super.onInit();
  }

  void getClients() async{
    isLoading.value = true;
    try {
      final clientsResult = await _clientRepository.getClients();
      clients.assignAll(clientsResult);
      print('funciona');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
    isLoading.value = false;
  }

  void createClient() async {
    final clientCreate = ClientCreate(
      fullName: fullNameController.text,
      phone: phoneController.text,
      address: addressController.text,
      identificationCard: identificationCardController.text,
      email: emailController.text,
      city: cityController.text
    );

    try {
      final createClient = await _clientRepository.createClient(clientCreate);
      clients.add(createClient);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getClient(int clientId) async {
    try {
      final clientResult = await _clientRepository.getClient(clientId);
      client.value = clientResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateClient(Client client) async {
    try {
      final updateClientResult = await _clientRepository.updateClient(client.id, client);
      final index = clients.indexWhere((client) => updateClientResult.id == client.id);
      clients[index] = updateClientResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteClient(int clientId) async {
    try {
      await _clientRepository.deleteClient(clientId);
      clients.removeWhere((client) => client.id == clientId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
