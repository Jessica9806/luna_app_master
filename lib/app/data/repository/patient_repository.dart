import 'package:luna_app/app/data/model/patient_model.dart';
import 'package:luna_app/app/data/providers/patient_provider.dart';

class PatientRepository {
  final PatientProvider _patientProvider = PatientProvider();

  Future<List<Patient>> getPatients() async {
    final response = await _patientProvider.getPatients();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar los pacientes');
    } else {
      final List<dynamic> patientJson = response.body;
      return patientJson.map((json) => Patient.fromJson(json)).toList();
    }
  }

  Future<Patient> createPatient(PatientCreate patientCreate) async {
    final response = await _patientProvider.createPatient(patientCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear el cliente');
    } else {
      final dynamic patientJson = response.body;
      return Patient.fromJson(patientJson);
    }
  }

  Future<Patient> getPatient(int patientId) async {
    final response = await _patientProvider.getPatient(patientId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar paciente');
    } else {
      final dynamic patientJson = response.body;
      return Patient.fromJson(patientJson);
    }
  }

  Future deletePatient(int patientId) async {
    final response = await _patientProvider.deletePatient(patientId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar paciente');
    }
  }

  Future<Patient> updatePatient(int? patientId, Patient patient) async {
    final response = await _patientProvider.updatePatient(patientId, patient);
    if (response.status.hasError) {
      throw Exception('Error al actualizar paciente');
    } else {
      final dynamic patientJson = response.body;
      return Patient.fromJson(patientJson);
    }
  }
}
