import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/esthetic_has_type_service_model.dart';
import 'package:luna_app/app/data/model/esthetic_model.dart';
import 'package:luna_app/app/data/model/type_service_model.dart';
import 'package:luna_app/app/data/repository/esthetic_has_type_service_repository.dart';
import 'package:luna_app/app/data/repository/esthetic_repository.dart';
import 'package:luna_app/app/data/repository/type_service_repository.dart';

class EstheticHasTypeServiceController extends GetxController {
  final EstheticHasTypeServiceRepository _estheticHasTypeServiceRepository = EstheticHasTypeServiceRepository();
  final EstheticRepository _estheticRepository = EstheticRepository();
  final TypeServiceRepository _typeServiceRepository = TypeServiceRepository();

  RxList<EstheticHasTypeService> _estheticHasTypeServices = <EstheticHasTypeService>[].obs;
  RxList<Esthetic> _aesthetic = <Esthetic>[].obs;
  RxList<TypeService> _typeServices = <TypeService>[].obs;

  Rx<EstheticHasTypeService> _estheticHasTypeService = EstheticHasTypeService().obs;

  final estheticController = TextEditingController();
  final typeServiceController = TextEditingController();

  @override
  void onInit() {
    getEstheticHasTypeServices();
    super.onInit();
  }

  void getEstheticHasTypeServices() async {
    try {
      final estheticHasTypeServiceResult = await _estheticHasTypeServiceRepository.getEstheticsHasTypeServices();
      _estheticHasTypeServices.assignAll(estheticHasTypeServiceResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getAesthetic() async {
    try {
      final aestheticResult = await _estheticRepository.getEsthetics();
      _aesthetic.assignAll(aestheticResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeServices() async {
    try {
      final typeServicesResult = await _typeServiceRepository.getTypeServices();
      _typeServices.assignAll(typeServicesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createEstheticHasTypeService() async {
    final estheticHasTypeServiceCreate = EstheticHasTypeServiceCreate(
      esthetic: int.parse(estheticController.text),
      typeService: int.parse(typeServiceController.text)
    );

    try {
      final createEstheticHasTypeService = await _estheticHasTypeServiceRepository.createEstheticHasTypeService(estheticHasTypeServiceCreate);
      _estheticHasTypeServices.add(createEstheticHasTypeService);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getEstheticHasTypeService(int estheticHasTypeServiceId) async {
    try {
      final estheticHasTypeServiceResult = await _estheticHasTypeServiceRepository.getEstheticHasTypeService(estheticHasTypeServiceId);
      _estheticHasTypeService.value = estheticHasTypeServiceResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateEstheticHasTypeService(EstheticHasTypeService estheticHasTypeService) async {
    try {
      final updateEstheticHasTypeServiceResult = await _estheticHasTypeServiceRepository.updateEstheticHasTypeService(estheticHasTypeService.id, estheticHasTypeService);
      final index = _estheticHasTypeServices.indexWhere((estheticHasTypeService) => estheticHasTypeService.id == updateEstheticHasTypeServiceResult.id);
      _estheticHasTypeServices[index] = updateEstheticHasTypeServiceResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteEstheticHasTypeService(int estheticHasTypeServiceId) async {
    try {
      _estheticHasTypeServiceRepository.deleteEstheticHasTypeService(estheticHasTypeServiceId);
      _estheticHasTypeServices.removeWhere((estheticHasTypeService) => estheticHasTypeService == estheticHasTypeServiceId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

}
