import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/laboratory_model.dart';
import 'package:luna_app/app/data/repository/laboratory_repository.dart';

class LaboratoryController extends GetxController {
  final LaboratoryRepository _laboratoryRepository = LaboratoryRepository();

  RxList<Laboratory> _laboratories = <Laboratory>[].obs;

  Rx<Laboratory> _laboratory = Laboratory().obs;

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    getLaboratories();
    super.onInit();
  }

  void getLaboratories() async {
    try {
      final laboratoryResult = await _laboratoryRepository.getLaboratories();
      _laboratories.assignAll(laboratoryResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createLaboratory() async {
    final laboratoryCreate = LaboratoryCreate(
      name: nameController.text,
      description: descriptionController.text
    );

    try {
      final createLaboratory = await _laboratoryRepository.createLaboratory(laboratoryCreate);
      _laboratories.add(createLaboratory);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getLaboratory(int laboratoryId) async {
    try {
      final laboratoryResult = await _laboratoryRepository.getLaboratory(laboratoryId);
      _laboratory.value = laboratoryResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateLaboratory(Laboratory laboratory) async {
    try {
      final updateLaboratoryResult = await _laboratoryRepository.updateLaboratory(laboratory.id, laboratory);
      final index = _laboratories.indexWhere((laboratory) => laboratory.id == updateLaboratoryResult.id);
      _laboratories[index] = updateLaboratoryResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteLaboratory(int laboratoryId) async {
    try {
      await _laboratoryRepository.deleteLaboratory(laboratoryId);
      _laboratories.removeWhere((laboratory) => laboratory.id == laboratoryId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }


}
