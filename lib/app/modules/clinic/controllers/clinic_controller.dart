import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/clinic_model.dart';
import 'package:luna_app/app/data/repository/clinic_repository.dart';

class ClinicController extends GetxController {
  final ClinicRepository _clinicRepository = ClinicRepository();

  RxList<Clinic> _clinics = <Clinic>[].obs;
  Rx<Clinic> _clinic = Clinic().obs;

  final nameController = TextEditingController();
  final addresController = TextEditingController();
  final cityController = TextEditingController();
  final phoneController = TextEditingController();
  final rucController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  void getClinics() async {
    try {
      final clinicsResult = await _clinicRepository.getClinics();
      _clinics.assignAll(clinicsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createClinic() async {
    final clinicCreate = ClinicCreate(
      name: nameController.text,
      addres: addresController.text,
      city: cityController.text,
      phone: phoneController.text,
      ruc: rucController.text
    );

    try {
      final createClinic = await _clinicRepository.createClinic(clinicCreate);
      _clinics.add(createClinic);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getClinic(int clinicId) async {
    try {
      final clinicResult = await _clinicRepository.getClinic(clinicId);
      _clinic.value = clinicResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateClinic(Clinic clinic) async {
    try {
      final updateClinicResult = await _clinicRepository.updateClinic(clinic.id, clinic);
      final index = _clinics.indexWhere((clinic) => updateClinicResult.id == clinic.id);
      _clinics[index] = updateClinicResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }


  }

  void deleteClinic(int clinicId) async {
    try {
      await _clinicRepository.deleteClinic(clinicId);
      _clinics.removeWhere((clinic) => clinic.id == clinicId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

}
