import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/type_dewormer_model.dart';
import 'package:luna_app/app/data/repository/type_dewormer_repository.dart';

class TypeDewormerController extends GetxController {
  final TypeDewormerRepository _typeDewormerRepository = TypeDewormerRepository();

  RxList<TypeDewormer> _typeDewormers = <TypeDewormer>[].obs;

  Rx<TypeDewormer> _typeDewormer = TypeDewormer().obs;

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    getTypeDewormers();
    super.onInit();
  }

  void getTypeDewormers() async {
    try {
      final typeDewormersResult = await _typeDewormerRepository.getTypeDewormers();
      _typeDewormers.assignAll(typeDewormersResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createTypeDewormer() async {
    final typeDewormerCreate = TypeDewormerCreate(
        name: nameController.text,
        description: descriptionController.text
    );
    try {
      final createTypeDewormer = await _typeDewormerRepository.createTypeDewormer(typeDewormerCreate);
      _typeDewormers.add(createTypeDewormer);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeDewormer(int typeDewormerId) async {
    try {
      final typeDewormerResult = await _typeDewormerRepository.getTypeDewormer(typeDewormerId);
      _typeDewormer.value = typeDewormerResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateTypeDewormer(TypeDewormer typeDewormer) async {
    try {
      final updateTypeDewormerResult = await _typeDewormerRepository.updateTypeDewormer(typeDewormer.id, typeDewormer);
      final index = _typeDewormers.indexWhere((typeDewormer) => typeDewormer.id == updateTypeDewormerResult.id);
      _typeDewormers[index] = updateTypeDewormerResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteTypeDewormer(int typeDewormerId) async {
    try {
      await _typeDewormerRepository.deleteTypeDewormer(typeDewormerId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
