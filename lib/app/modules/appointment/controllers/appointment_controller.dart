import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/appointment_model.dart';
import 'package:luna_app/app/data/model/client_model.dart';
import 'package:luna_app/app/data/model/patient_model.dart';
import 'package:luna_app/app/data/model/type_appointment_model.dart';
import 'package:luna_app/app/data/repository/appoinment_repository.dart';
import 'package:luna_app/app/data/repository/client_repository.dart';
import 'package:luna_app/app/data/repository/patient_repository.dart';
import 'package:luna_app/app/data/repository/type_appointment_repository.dart';

class AppointmentController extends GetxController {
  final AppointmentRepository _appointmentRepository = AppointmentRepository();
  final TypeAppointmentRepository _typeAppointmentRepository = TypeAppointmentRepository();
  final PatientRepository _patientRepository = PatientRepository();
  final ClientRepository _clientRepository = ClientRepository();

  final RxList<Appointment> _appointments = <Appointment>[].obs;
  final RxList<TypeAppointment> _typeAppointments = <TypeAppointment>[].obs;
  final RxList<Patient> _patient = <Patient>[].obs;
  final RxList<Client> _client = <Client>[].obs;

  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final dateController = TextEditingController();
  final hourController = TextEditingController();
  final reasonController = TextEditingController();
  final initerNotesController = TextEditingController();
  final activateReminderController = TextEditingController();
  final typeAppointmentController = TextEditingController();
  final patientController = TextEditingController();
  final clientController = TextEditingController();

  @override
  void onInit() {
    getAppointments();
    super.onInit();
  }

  void getAppointments() async {
    try {
      final appointmentsResult = await _appointmentRepository.getAppointments();
      _appointments.assignAll(appointmentsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getTypeAppointments() async {
    try {
      final typeAppointmentsResult = await _typeAppointmentRepository.getTypeAppointments();
      _typeAppointments.assignAll(typeAppointmentsResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getPatients() async {
    try {
      final patientResult = await _patientRepository.getPatients();
      _patient.assignAll(patientResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getClients() async {
    try {
      final clientResult = await _clientRepository.getClients();
      _client.assignAll(clientResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }


  void createAppointment() async {
    final appointmentCreate = AppointmentCreate(
      phone: phoneController.text,
      email: emailController.text,
      date: dateController.text,
      hour: hourController.text,
      reason: reasonController.text,
      initerNotes: initerNotesController.text,
      activateReminder: activateReminderController.text == 'true',
      typeAppointment: int.parse(typeAppointmentController.text),
      patient: int.parse(patientController.text),
      client: int.parse(clientController.text),
    );
    try {
      final createdAppointment = await _appointmentRepository.createAppointment(appointmentCreate);
      _appointments.add(createdAppointment);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateAppointment(Appointment appointment) async {
    try {
      final updateAppointmentResult = await _appointmentRepository.updateAppointment(appointment.id, appointment);
      final index = _appointments.indexWhere((appointment) => updateAppointmentResult.id == appointment.id);
      _appointments[index] = updateAppointmentResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }

  }

  void deleteAppointment(int appointmentId) async {
    try {
      await _appointmentRepository.deleteAppointment(appointmentId);
      _appointments.removeWhere((appointment) => appointment.id == appointmentId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}

