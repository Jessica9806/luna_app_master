import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/dewormer_model.dart';
import 'package:luna_app/app/data/model/type_dewormer_model.dart';
import 'package:luna_app/app/data/repository/dewormer_repository.dart';
import 'package:luna_app/app/data/repository/type_dewormer_repository.dart';

class DewormerController extends GetxController {
  final DewormerRepository _dewormerRepository = DewormerRepository();
  final TypeDewormerRepository _typeDewormerRepository = TypeDewormerRepository();
  
  RxList<Dewormer> _dewormers = <Dewormer>[].obs;
  RxList<TypeDewormer> _typeDewormers = <TypeDewormer>[].obs;
  
  Rx<Dewormer> _dewormer = Dewormer().obs;
  
  final dateController = TextEditingController();
  final applyDewornerController = TextEditingController();
  final lotController = TextEditingController();
  final expirationController = TextEditingController();
  final priceController = TextEditingController();
  final weightController = TextEditingController();
  final typeDewormerController = TextEditingController();
  
  @override
  void onInit() {
    getDewormers();
    super.onInit();
  }
  
  void getDewormers() async {
    try {
      final dewormersResult = await _dewormerRepository.getDewormers();
      _dewormers.assignAll(dewormersResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
  
  void getTypeDewormers() async {
    try {
      final typeDewormersResult = await _typeDewormerRepository.getTypeDewormers();
      _typeDewormers.assignAll(typeDewormersResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
  
  void createDewormer() async {
    final dewormerCreate = DewormerCreate(
      date: dateController.text,
      applyDeworner: applyDewornerController.text == 'true',
      lot: lotController.text,
      expiration: expirationController.text,
      price: double.parse(priceController.text),
      weight: double.parse(weightController.text),
      typeDewormer: int.parse(typeDewormerController.text)
    );

    try {
      final createDewormer = await _dewormerRepository.createDewormer(dewormerCreate);
      _dewormers.add(createDewormer);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getDewormer(int dewormerId) async {
    try {
      final dewormerResult = await _dewormerRepository.getDewormer(dewormerId);
      _dewormer.value = dewormerResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateDewormer(Dewormer dewormer) async {
    try {
      final updateDewormerResult = await _dewormerRepository.updateDewormer(dewormer.id, dewormer);
      final index = _dewormers.indexWhere((dewormer) => dewormer.id == updateDewormerResult.id);
      _dewormers[index] = updateDewormerResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteDewormer(int dewormerId) async {
    try {
      await _dewormerRepository.deleteDewormer(dewormerId);
      _dewormers.removeWhere((dewormer) => dewormer.id == dewormerId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
  
}
