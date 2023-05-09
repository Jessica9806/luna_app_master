import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/type_service_model.dart';
import 'package:luna_app/app/data/repository/type_service_repository.dart';

class TypeServiceController extends GetxController {
  final TypeServiceRepository _typeServiceRepository = TypeServiceRepository();

  RxList<TypeService> _typeServices = <TypeService>[].obs;

  Rx<TypeService> _typeService = TypeService().obs;

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    getTypeServices();
    super.onInit();
  }

  void getTypeServices() async {
    try {
      final typeServicesResult = await _typeServiceRepository.getTypeServices();
      _typeServices.assignAll(typeServicesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createTypeService() async {
    final typeServiceCreate = TypeServiceCreate(
        name: nameController.text,
        description: descriptionController.text
    );
    try {
      final createTypeService = await _typeServiceRepository.createTypeService(typeServiceCreate);
      _typeServices.add(createTypeService);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeService(int typeServiceId) async {
    try {
      final typeServiceResult = await _typeServiceRepository.getTypeService(typeServiceId);
      _typeService.value = typeServiceResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateTypeService(TypeService typeService) async {
    try {
      final updateTypeServiceResult = await _typeServiceRepository.updateTypeService(typeService.id, typeService);
      final index = _typeServices.indexWhere((typeService) => typeService.id == updateTypeServiceResult.id);
      _typeServices[index] = updateTypeServiceResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteTypeService(int typeServiceId) async {
    try {
      await _typeServiceRepository.deleteTypeService(typeServiceId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
