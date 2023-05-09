import 'package:luna_app/app/data/model/hospitalization_model.dart';
import 'package:luna_app/app/data/providers/hospitalization_provider.dart';

class HospitalizationRepository {
  final HospitalizationProvider _hospitalizationProvider =
      HospitalizationProvider();

  Future<List<Hospitalization>> getHospitalizations() async {
    final response = await _hospitalizationProvider.getHospitalizations();
    if (response.status.hasError) {
      throw Exception('Error al mostrar las hospitalizaciones');
    } else {
      final List<dynamic> hospitalizationJson = response.body;
      return hospitalizationJson
          .map((json) => Hospitalization.fromJson(json))
          .toList();
    }
  }

  Future<Hospitalization> createHospitalization(
      HospitalizationCreate hospitalizationCreate) async {
    final response = await _hospitalizationProvider
        .createHospitalization(hospitalizationCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear hospitalizacion');
    } else {
      final dynamic hospitalizationJson = response.body;
      return Hospitalization.fromJson(hospitalizationJson);
    }
  }

  Future<Hospitalization> getHospitalization(int hospitalizationId) async {
    final response =
        await _hospitalizationProvider.getHospitalization(hospitalizationId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar hospitalizacion');
    } else {
      final dynamic hospitalizationJson = response.body;
      return Hospitalization.fromJson(hospitalizationJson);
    }
  }

  Future deleteHospitalization(int hospitalizationId) async {
    final response =
        await _hospitalizationProvider.deleteHospitalization(hospitalizationId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar hospitalizacion');
    }
  }

  Future<Hospitalization> updateHospitalization(
      int? hospitalizationId, Hospitalization hospitalization) async {
    final response = await _hospitalizationProvider.updateHospitalization(
        hospitalizationId, hospitalization);
    if (response.status.hasError) {
      throw Exception('Error al actualizar hospitalization');
    } else {
      final dynamic hospitalizationJson = response.body;
      return Hospitalization.fromJson(hospitalizationJson);
    }
  }
}
