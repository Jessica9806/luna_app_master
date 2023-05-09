import 'package:luna_app/app/data/model/clinic_model.dart';
import 'package:luna_app/app/data/providers/clinic_provider.dart';

class ClinicRepository {
  final ClinicProvider _clinicProvider = ClinicProvider();

  Future<List<Clinic>> getClinics() async {
    final response = await _clinicProvider.getClinics();

    if (response.status.hasError) {
      throw Exception('Error al cargar las clinicas');
    } else {
      final List<dynamic> clinicJson = response.body;
      return clinicJson.map((json) => Clinic.fromJson(json)).toList();
    }
  }

  Future<Clinic> createClinic(
    ClinicCreate clinicCreate,
  ) async {
    final response = await _clinicProvider.createClinic(clinicCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear la clinica');
    } else {
      final dynamic clinicJson = response.body;
      return Clinic.fromJson(clinicJson);
    }
  }

  Future<Clinic> getClinic(int clinicId) async {
    final response = await _clinicProvider.getClinic(clinicId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar una clinica');
    } else {
      final dynamic clinicJson = response.body;
      return Clinic.fromJson(clinicJson);
    }
  }

  Future deleteClinic(int clinicId) async {
    final response = await _clinicProvider.deleteClinic(clinicId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar clinica');
    }
  }

  Future<Clinic> updateClinic(int? clinicId, Clinic clinic) async {
    final response = await _clinicProvider.updateClinic(clinicId, clinic);
    if (response.status.hasError) {
      throw Exception('Error al actualizar la clinica');
    } else {
      final dynamic clinicJson = response.body;
      return Clinic.fromJson(clinicJson);
    }
  }
}
