import 'package:luna_app/app/data/model/laboratory_model.dart';
import 'package:luna_app/app/data/providers/laboratory_provider.dart';

class LaboratoryRepository {
  final LaboratoryProvider _laboratoryProvider = LaboratoryProvider();

  Future<List<Laboratory>> getLaboratories() async {
    final response = await _laboratoryProvider.getLaboratories();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar los laboratorios');
    } else {
      final List<dynamic> laboratoryJson = response.body;
      return laboratoryJson.map((json) => Laboratory.fromJson(json)).toList();
    }
  }

  Future<Laboratory> createLaboratory(LaboratoryCreate laboratoryCreate) async {
    final response =
        await _laboratoryProvider.createLaboratory(laboratoryCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear laboratorio');
    } else {
      final dynamic laboratoryJson = response.body;
      return Laboratory.fromJson(laboratoryJson);
    }
  }

  Future<Laboratory> getLaboratory(int laboratoryId) async {
    final response = await _laboratoryProvider.getLaboratory(laboratoryId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar laboratorio');
    } else {
      final dynamic laboratoryJson = response.body;
      return Laboratory.fromJson(laboratoryJson);
    }
  }

  Future deleteLaboratory(int laboratoryId) async {
    final response = await _laboratoryProvider.deleteLaboratory(laboratoryId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar laboratorio');
    }
  }

  Future<Laboratory> updateLaboratory(
      int? laboratoryId, Laboratory laboratory) async {
    final response =
        await _laboratoryProvider.updateLaboratory(laboratoryId, laboratory);
    if (response.status.hasError) {
      throw Exception('Error al actualizar laboratorio');
    } else {
      final dynamic laboratoryJson = response.body;
      return Laboratory.fromJson(laboratoryJson);
    }
  }
}
