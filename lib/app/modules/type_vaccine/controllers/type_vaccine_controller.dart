import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/type_vaccine_model.dart';
import 'package:luna_app/app/data/repository/type_vaccine_repository.dart';

class TypeVaccineController extends GetxController {
  final TypeVaccineRepository _typeVaccineRepository = TypeVaccineRepository();

  RxList<TypeVaccine> _typeVaccines = <TypeVaccine>[].obs;

  Rx<TypeVaccine> _typeVaccine = TypeVaccine().obs;

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    getTypeVaccines();
    super.onInit();
  }

  void getTypeVaccines() async {
    try {
      final typeVaccinesResult = await _typeVaccineRepository.getTypeVaccines();
      _typeVaccines.assignAll(typeVaccinesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createTypeVaccine() async {
    final typeVaccineCreate = TypeVaccineCreate(
        name: nameController.text,
        description: descriptionController.text
    );
    try {
      final createTypeVaccine = await _typeVaccineRepository.createTypeVaccine(typeVaccineCreate);
      _typeVaccines.add(createTypeVaccine);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeVaccine(int typeVaccineId) async {
    try {
      final typeVaccineResult = await _typeVaccineRepository.getTypeVaccine(typeVaccineId);
      _typeVaccine.value = typeVaccineResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateTypeVaccine(TypeVaccine typeVaccine) async {
    try {
      final updateTypeVaccineResult = await _typeVaccineRepository.updateTypeVaccine(typeVaccine.id, typeVaccine);
      final index = _typeVaccines.indexWhere((typeVaccine) => typeVaccine.id == updateTypeVaccineResult.id);
      _typeVaccines[index] = updateTypeVaccineResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteTypeVaccine(int typeVaccineId) async {
    try {
      await _typeVaccineRepository.deleteTypeVaccine(typeVaccineId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
