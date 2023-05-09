import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/hospitalization_model.dart';
import 'package:luna_app/app/data/repository/hospitalization_repository.dart';

class HospitalizationController extends GetxController {
  final HospitalizationRepository _hospitalizationRepository = HospitalizationRepository();

  RxList<Hospitalization> _hospitalizations = <Hospitalization>[].obs;

  Rx<Hospitalization> _hospitalization = Hospitalization().obs;

  final diagnosisController = TextEditingController();
  final aspectController = TextEditingController();
  final weightController = TextEditingController();
  final feedingController = TextEditingController();
  final observationController = TextEditingController();
  final otherIndicationsController = TextEditingController();
  final parametersController = TextEditingController();

  @override
  void onInit() {
    getHospitalizations();
    super.onInit();
  }

  void getHospitalizations() async {
    try {
      final hospitalizationsResult = await _hospitalizationRepository.getHospitalizations();
      _hospitalizations.assignAll(hospitalizationsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createHospitalization() async {
    final hospitalizationCreate = HospitalizationCreate(
      diagnosis: diagnosisController.text,
      aspect: aspectController.text,
      weight: double.parse(weightController.text),
      feeding: feedingController.text,
      observation: observationController.text,
      otherIndications: otherIndicationsController.text,
      parameters: parametersController.text
    );

    try {
      final createHospitalization = await _hospitalizationRepository.createHospitalization(hospitalizationCreate);
      _hospitalizations.add(createHospitalization);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getHospitalization(int hospitalizationId) async {
    try {
      final hospitalizationResult = await _hospitalizationRepository.getHospitalization(hospitalizationId);
      _hospitalization.value = hospitalizationResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateHospitalization(Hospitalization hospitalization) async {
    try {
      final updateHospitalizationResult = await _hospitalizationRepository.updateHospitalization(hospitalization.id, hospitalization);
      final index = _hospitalizations.indexWhere((hospitalization) => hospitalization.id == updateHospitalizationResult.id);
      _hospitalizations[index] = updateHospitalizationResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteHospitalization(int hospitalizationId) async {
    try {
      await _hospitalizationRepository.deleteHospitalization(hospitalizationId);
      _hospitalizations.removeWhere((hospitalization) => hospitalization.id == hospitalizationId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
