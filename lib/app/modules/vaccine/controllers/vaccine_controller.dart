import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/type_vaccine_model.dart';
import 'package:luna_app/app/data/model/vaccine_model.dart';
import 'package:luna_app/app/data/repository/type_vaccine_repository.dart';
import 'package:luna_app/app/data/repository/vaccine_repository.dart';

class VaccineController extends GetxController {
  final VaccineRepository _vaccineRepository = VaccineRepository();
  final TypeVaccineRepository _typeVaccineRepository = TypeVaccineRepository();

  RxList<Vaccine> _vaccines = <Vaccine>[].obs;
  RxList<TypeVaccine> _typeVaccines = <TypeVaccine>[].obs;

  Rx<Vaccine> _vaccine = Vaccine().obs;

  final dateController = TextEditingController();
  final lotController = TextEditingController();
  final applyVaccineController = TextEditingController();
  final expirationController = TextEditingController();
  final priceController = TextEditingController();
  final weightController = TextEditingController();
  final previousVaccinationsController = TextEditingController();
  final typeVaccineController = TextEditingController();

  @override
  void onInit() {
    getVaccines();
    super.onInit();
  }

  void getVaccines() async {
    try {
      final vaccinesResult = await _vaccineRepository.getVaccines();
      _vaccines.assignAll(vaccinesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeVaccines() async {
    try {
      final typeVaccinesResult = await _typeVaccineRepository.getTypeVaccines();
      _typeVaccines.assignAll(typeVaccinesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createVaccine() async {
    final vaccineCreate = VaccineCreate(
      date: dateController.text,
      lot: lotController.text,
      applyVaccine: applyVaccineController.text == 'true',
      expiration: expirationController.text,
      price: double.parse(priceController.text),
      weight: double.parse(weightController.text),
      previousVaccinations: previousVaccinationsController.text == 'true',
      typeVaccine: int.parse(typeVaccineController.text)
    );
    try {
      final createVaccine = await _vaccineRepository.createVaccine(vaccineCreate);
      _vaccines.add(createVaccine);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getVaccine(int vaccineId) async {
    try {
      final vaccineResult = await _vaccineRepository.getVaccine(vaccineId);
      _vaccine.value = vaccineResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateVaccine(Vaccine vaccine) async {
    try {
      final updateVaccineResult = await _vaccineRepository.updateVaccine(vaccine.id, vaccine);
      final index = _vaccines.indexWhere((vaccine) => vaccine.id == updateVaccineResult.id);
      _vaccines[index] = updateVaccineResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteVaccine(int vaccineId) async {
    try {
      await _vaccineRepository.deleteVaccine(vaccineId);
      _vaccines.removeWhere((vaccine) => vaccine.id == vaccineId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

}
