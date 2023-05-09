import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/esthetic_model.dart';
import 'package:luna_app/app/data/model/patient_model.dart';
import 'package:luna_app/app/data/repository/esthetic_repository.dart';
import 'package:luna_app/app/data/repository/patient_repository.dart';

class EstheticController extends GetxController {
  final EstheticRepository _estheticRepository = EstheticRepository();
  final PatientRepository _patientRepository = PatientRepository();

  RxList<Esthetic> _aesthetic = <Esthetic>[].obs;
  RxList<Patient> _patients = <Patient>[].obs;

  Rx<Esthetic> _esthetic = Esthetic().obs;

  final dateControler = TextEditingController();
  final hourController = TextEditingController();
  final activateNotificationController = TextEditingController();
  final priceController = TextEditingController();
  final formPaymentController = TextEditingController();
  final isPaidController = TextEditingController();
  final patientController = TextEditingController();

  @override
  void onInit() {
    getAesthetic();
    super.onInit();
  }

  void getAesthetic() async {
    try {
      final aestheticResult = await _estheticRepository.getEsthetics();
      _aesthetic.assignAll(aestheticResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPatients() async {
    try {
      final patientsResult = await _patientRepository.getPatients();
      _patients.assignAll(patientsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createEsthetic() async {
    final estheticCreate = EstheticCreate(
      date: dateControler.text,
      hour: hourController.text,
      activateNotification: activateNotificationController.text == 'true',
      price: double.parse(priceController.text),
      formPayment: formPaymentController.text,
      isPaid: isPaidController.text == 'true',
      patient: int.parse(patientController.text)
    );

    try {
      final createEsthetic = await _estheticRepository.createEsthetic(estheticCreate);
      _aesthetic.add(createEsthetic);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getEsthetic(int estheticId) async {
    try {
      final estheticResult = await _estheticRepository.getEsthetic(estheticId);
      _esthetic.value = estheticResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateEsthetic(Esthetic esthetic) async {
    try {
      final updateEstheticResult = await _estheticRepository.updateEsthetic(esthetic.id, esthetic);
      final index = _aesthetic.indexWhere((esthetic) => esthetic.id == updateEstheticResult.id);
      _aesthetic[index] = updateEstheticResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteEsthetic(int estheticId) async {
    try {
      await _estheticRepository.deleteEsthetic(estheticId);
      _aesthetic.removeWhere((esthetic) => esthetic.id == estheticId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
