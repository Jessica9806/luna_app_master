import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/patient_model.dart';
import 'package:luna_app/app/data/model/pet_daycare_model.dart';
import 'package:luna_app/app/data/repository/patient_repository.dart';
import 'package:luna_app/app/data/repository/pet_daycare_repository.dart';

class PetDaycareController extends GetxController {
  final PetDaycareRepository _petDaycareRepository = PetDaycareRepository();
  final PatientRepository _patientRepository = PatientRepository();

  RxList<PetDaycare> _petDaycares = <PetDaycare>[].obs;
  RxList<Patient> _patients = <Patient>[].obs;

  Rx<PetDaycare> _petDaycare = PetDaycare().obs;

  final timeEatController = TextEditingController();
  final notesController = TextEditingController();
  final departureDateController = TextEditingController();
  final momentPaymentController = TextEditingController();
  final priceController = TextEditingController();
  final formPaymentController = TextEditingController();
  final isPaidController = TextEditingController();
  final patientController = TextEditingController();

  @override
  void onInit() {
    getPetDaycares();
    super.onInit();
  }

  void getPetDaycares() async {
    try {
      final petDaycaresresult = await _petDaycareRepository.getPetDaycares();
      _petDaycares.assignAll(petDaycaresresult);
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

  void createPetDaycare() async {
    final petDaycareCreate = PetDaycareCreate(
      timeEat: timeEatController.text,
      notes: notesController.text,
      departureDate: departureDateController.text,
      momentPayment: momentPaymentController.text,
      price: double.parse(priceController.text),
      formPayment: formPaymentController.text,
      isPaid: isPaidController.text == 'true',
      patient: int.parse(patientController.text)
    );

    try {
      final createPetDaycare = await _petDaycareRepository.createPetDaycare(petDaycareCreate);
      _petDaycares.add(createPetDaycare);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPetDaycare(int petDaycareId) async {
    try {
      final petDaycareResult = await _petDaycareRepository.getPetDaycare(petDaycareId);
      _petDaycare.value = petDaycareResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updatePetDaycare(PetDaycare petDaycare) async {
    try {
      final updatePetDaycareResult = await _petDaycareRepository.updatePetDaycare(petDaycare.id, petDaycare);
      final index = _petDaycares.indexWhere((petDaycare) => petDaycare.id == updatePetDaycareResult.id);
      _petDaycares[index] = updatePetDaycareResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deletePetDaycare(int petDaycareId) async {
    try {
      await _petDaycareRepository.deletePetDaycare(petDaycareId);
      _petDaycares.removeWhere((petDaycare) => petDaycare.id == petDaycareId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
