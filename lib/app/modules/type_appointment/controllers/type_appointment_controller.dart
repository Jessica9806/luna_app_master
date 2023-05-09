import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/type_appointment_model.dart';
import 'package:luna_app/app/data/repository/type_appointment_repository.dart';

class TypeAppointmentController extends GetxController {
  final TypeAppointmentRepository _typeAppointmentRepository = TypeAppointmentRepository();

  RxList<TypeAppointment> _typeAppointments = <TypeAppointment>[].obs;

  Rx<TypeAppointment> _typeAppointment = TypeAppointment().obs;

  final nameController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void onInit() {
    getTypeAppointments();
    super.onInit();
  }

  void getTypeAppointments() async {
    try {
      final typeAppointmentsResult = await _typeAppointmentRepository.getTypeAppointments();
      _typeAppointments.assignAll(typeAppointmentsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createTypeAppoinment() async {
    final typeAppointmentCreate = TypeAppointmentCreate(
      name: nameController.text,
      description: descriptionController.text
    );
    try {
      final createTypeAppointment = await _typeAppointmentRepository.createTypeAppointment(typeAppointmentCreate);
      _typeAppointments.add(createTypeAppointment);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeAppointment(int typeAppointmentId) async {
    try {
      final typeAppointmentResult = await _typeAppointmentRepository.getTypeAppointment(typeAppointmentId);
      _typeAppointment.value = typeAppointmentResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateTypeAppointment(TypeAppointment typeAppointment) async {
    try {
      final updateTypeAppoinmentResult = await _typeAppointmentRepository.updateTypeAppointment(typeAppointment.id, typeAppointment);
      final index = _typeAppointments.indexWhere((typeAppointment) => typeAppointment.id == updateTypeAppoinmentResult.id);
      _typeAppointments[index] = updateTypeAppoinmentResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteTypeAppointment(int typeAppointmentId) async {
    try {
      await _typeAppointmentRepository.deleteTypeAppointment(typeAppointmentId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
