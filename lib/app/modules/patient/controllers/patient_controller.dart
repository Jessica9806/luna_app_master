import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/breed_model.dart';
import 'package:luna_app/app/data/model/client_model.dart';
import 'package:luna_app/app/data/model/patient_model.dart';
import 'package:luna_app/app/data/model/species_model.dart';
import 'package:luna_app/app/data/repository/Breed_repository.dart';
import 'package:luna_app/app/data/repository/client_repository.dart';
import 'package:luna_app/app/data/repository/patient_repository.dart';
import 'package:luna_app/app/data/repository/species_repository.dart';

class PatientController extends GetxController {
  final PatientRepository _patientRepository = PatientRepository();
  final SpeciesRepository _speciesRepository = SpeciesRepository();
  final BreedRepository _breedRepository = BreedRepository();
  final ClientRepository _clientRepository = ClientRepository();

  RxList<Patient> _patients = <Patient>[].obs;
  RxList<Species> _species = <Species>[].obs;
  RxList<Breed> _breeds = <Breed>[].obs;
  RxList<Client> _clients = <Client>[].obs;

  Rx<Patient> _patient = Patient().obs;

  final nameController = TextEditingController();
  final birthdayController = TextEditingController();
  final yearsController = TextEditingController();
  final monthsController = TextEditingController();
  final genderController = TextEditingController();
  final furController = TextEditingController();
  final foodConsumerController = TextEditingController();
  final isHeatController = TextEditingController();
  final isPedigreeController = TextEditingController();
  final isReproductiveController = TextEditingController();
  final isCastratedController = TextEditingController();
  final pathologiesController = TextEditingController();
  final photoController = TextEditingController();
  final chipController = TextEditingController();
  final aggresiveController = TextEditingController();
  final specieController = TextEditingController();
  final breedController = TextEditingController();
  final clientController = TextEditingController();

  @override
  void onInit() {
    getPatients();
    super.onInit();
  }

  void getPatients() async {
    try {
      final patientsResult = await _patientRepository.getPatients();
      _patients.assignAll(patientsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getSpecies() async {
    try {
      final speciesResult = await _speciesRepository.getSpecies();
      _species.assignAll(speciesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getBreeds() async {
    try {
      final breedResult = await _breedRepository.getBreed();
      _breeds.assignAll(breedResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getClients() async{
    try {
      final clientsResult = await _clientRepository.getClients();
      _clients.assignAll(clientsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createPatient() async {
    final patientCreate = PatientCreate(
      name: nameController.text,
      birthday: DateTime.parse(birthdayController.text),
      years: int.parse(yearsController.text),
      months: int.parse(monthsController.text),
      gender: genderController.text,
      fur: furController.text,
      foodConsumer: foodConsumerController.text,
      isHeat: isHeatController.text == 'true',
      isPedigree: isPedigreeController.text == 'true',
      isReproductive: isReproductiveController.text == 'true',
      isCastrated: isCastratedController.text == 'true',
      pathologies: pathologiesController.text,
      photo: photoController.text,
      chip: chipController.text,
      aggressive: double.parse(aggresiveController.text),
      specie: int.parse(specieController.text),
      breed: int.parse(breedController.text),
      client: int.parse(clientController.text)
    );

    try {
      final createPatient = await _patientRepository.createPatient(patientCreate);
      _patients.add(createPatient);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPatient(int patientId) async {
    try {
      final patientResult = await _patientRepository.getPatient(patientId);
      _patient.value = patientResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updatePatient(Patient patient) async {
    try {
      final updatePatientResult = await _patientRepository.updatePatient(patient.id, patient);
      final index = _patients.indexWhere((patient) => patient.id == updatePatientResult.id);
      _patients[index] = updatePatientResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deletePatient(int patientId) async {
    try {
      await _patientRepository.deletePatient(patientId);
      _patients.removeWhere((patient) => patient.id == patientId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

}
