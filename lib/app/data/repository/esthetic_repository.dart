import 'package:luna_app/app/data/model/esthetic_model.dart';
import 'package:luna_app/app/data/providers/esthetic_provider.dart';

class EstheticRepository {
  final EstheticProvider _estheticProvider = EstheticProvider();

  Future<List<Esthetic>> getEsthetics() async {
    final response = await _estheticProvider.getEsthetics();
    if (response.status.hasError) {
      throw Exception('Error al mostrar la esteticas');
    } else {
      final List<dynamic> estheticJson = response.body;
      return estheticJson.map((json) => Esthetic.fromJson(json)).toList();
    }
  }

  Future<Esthetic> createEsthetic(
    EstheticCreate estheticCreate
  ) async {
    final response = await _estheticProvider.createEsthetic(estheticCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear la extetica');
    } else {
      final dynamic estheticJson = response.body;
      return Esthetic.fromJson(estheticJson);
    }
  }

  Future<Esthetic> getEsthetic(int estheticId) async {
    final response = await _estheticProvider.getEsthetic(estheticId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar la estetica');
    } else {
      final dynamic estheticJson = response.body;
      return Esthetic.fromJson(estheticJson);
    }
  }

  Future deleteEsthetic(int estheticId) async {
    final response = await _estheticProvider.deleteEsthetic(estheticId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar la estetica');
    }
  }

  Future<Esthetic> updateEsthetic(int? estheticId, Esthetic esthetic) async {
    final response =
        await _estheticProvider.updateEsthetic(estheticId, esthetic);
    if (response.status.hasError) {
      throw Exception('Error al actualizar la estetica');
    } else {
      final dynamic estheticJson = response.body;
      return Esthetic.fromJson(estheticJson);
    }
  }
}
