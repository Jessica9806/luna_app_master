import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/breed_model.dart';
import 'package:luna_app/app/data/model/species_model.dart';
import 'package:luna_app/app/data/repository/Breed_repository.dart';
import 'package:luna_app/app/data/repository/species_repository.dart';

class BreedController extends GetxController {
  final BreedRepository _breedRepository = BreedRepository();
  final SpeciesRepository _speciesRepository = SpeciesRepository();

  final RxList<Breed> _breeds = <Breed>[].obs;
  final RxList<Species> _species = <Species>[].obs;

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final speciesController = TextEditingController();
  
  @override
  void onInit() {
    getBreeds();
    super.onInit();
  }
  
  void getBreeds() async {
    try {
      final breedResult = await _breedRepository.getBreed();
      _breeds.assignAll(breedResult);
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

  void createBreed() async {
    final breedCreate = BreedCreate(
      name: nameController.text,
      description: descriptionController.text,
      species: int.parse(speciesController.text)
    );
    try {
      final createdBreed = await _breedRepository.createBreed(breedCreate);
      _breeds.add(createdBreed);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateBreed(Breed breed) async {
    try {
      final updateBreedResult = await _breedRepository.updateBreed(breed.id, breed);
      final index = _breeds.indexWhere((breed) => updateBreedResult.id == breed.id);
      _breeds[index] = updateBreedResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteBreed(int breedId) async{
    try {
      await _breedRepository.deleteBreed(breedId);
      _breeds.removeWhere((breed) => breed.id == breedId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

}
