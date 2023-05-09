import 'package:luna_app/app/data/model/vaccine_model.dart';
import 'package:luna_app/app/data/providers/vaccine_provider.dart';

class VaccineRepository {
  final VaccineProvider _vaccineProvider = VaccineProvider();

  Future<List<Vaccine>> getVaccines() async {
    final response = await _vaccineProvider.getVaccines();
    if (response.status.hasError) {
      throw Exception('Error al mostrar vacunas');
    } else {
      final List<dynamic> vaccineJson = response.body;
      return vaccineJson.map((json) => Vaccine.fromJson(json)).toList();
    }
  }

  Future<Vaccine> createVaccine(VaccineCreate vaccineCreate) async {
    final response = await _vaccineProvider.createVaccine(vaccineCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear vacuna');
    } else {
      final dynamic vaccineJson = response.body;
      return Vaccine.fromJson(vaccineJson);
    }
  }

  Future<Vaccine> getVaccine(int vaccineId) async {
    final response = await _vaccineProvider.getVaccine(vaccineId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar vacuna');
    } else {
      final dynamic vaccineJson = response.body;
      return Vaccine.fromJson(vaccineJson);
    }
  }

  Future deleteVaccine(int vaccineId) async {
    final response = await _vaccineProvider.deleteVaccine(vaccineId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar vacuna');
    }
  }

  Future<Vaccine> updateVaccine(int? vaccineId, Vaccine vaccine) async {
    final response = await _vaccineProvider.updateVaccine(vaccineId, vaccine);
    if (response.status.hasError) {
      throw Exception('Error al actualizar vacuna');
    } else {
      final dynamic vaccineJson = response.body;
      return Vaccine.fromJson(vaccineJson);
    }
  }
}
