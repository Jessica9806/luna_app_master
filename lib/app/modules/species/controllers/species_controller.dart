import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/species_model.dart';
import 'package:luna_app/app/data/repository/species_repository.dart';

class SpeciesController extends GetxController {
  final SpeciesRepository _speciesRepository = SpeciesRepository();

  RxList<Species> _species = <Species>[].obs;

  Rx<Species> _specie = Species().obs;

  final nameControler = TextEditingController();
  final descriptionController = TextEditingController();

  void onInit() {
    getSpecies();
    super.onInit();
  }

  void getSpecies() async {
    try {
      final speciesResult = await _speciesRepository.getSpecies();
      _species.assignAll(speciesResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createSpecie() async {
    final speciesCreate = SpeciesCreate(
      name: nameControler.text,
      description: descriptionController.text
    );
    try {
      final createSpecie = await _speciesRepository.createSpecies(speciesCreate);
      _species.add(createSpecie);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getSpecie(int specieId) async {
    try {
      final specieResult = await _speciesRepository.getSpecie(specieId);
      _specie.value = specieResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateSpecie(Species species) async {
    try {
      final updateSpecieResult = await _speciesRepository.updateSpecie(species.id, species);
      final index = _species.indexWhere((specie) => specie.id == updateSpecieResult.id);
      _species[index] = updateSpecieResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteSpecie(int specieId) async {
    try {
      await _speciesRepository.deleteSpecie(specieId);
      _species.removeWhere((specie) => specie.id == specieId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
