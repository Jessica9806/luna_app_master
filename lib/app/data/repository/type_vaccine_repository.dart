import 'package:luna_app/app/data/model/type_vaccine_model.dart';
import 'package:luna_app/app/data/providers/type_vaccine_provider.dart';

class TypeVaccineRepository {
  final TypeVaccineProvider _typeVaccineProvider = TypeVaccineProvider();

  Future<List<TypeVaccine>> getTypeVaccines() async {
    final response = await _typeVaccineProvider.getTypeVaccines();
    if (response.status.hasError) {
      throw Exception('Error al mostrar tipos vacunas');
    } else {
      final List<dynamic> typeVaccinesJson = response.body;
      return typeVaccinesJson
          .map((json) => TypeVaccine.fromJson(json))
          .toList();
    }
  }

  Future<TypeVaccine> createTypeVaccine(
      TypeVaccineCreate typeVaccineCreate) async {
    final response =
        await _typeVaccineProvider.createTypeVaccine(typeVaccineCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear tipo vacuna');
    } else {
      final dynamic typeVaccineJson = response.body;
      return TypeVaccine.fromJson(typeVaccineJson);
    }
  }

  Future<TypeVaccine> getTypeVaccine(int typeVaccineId) async {
    final response = await _typeVaccineProvider.getTypeVaccine(typeVaccineId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar typo vacuna');
    } else {
      final dynamic typeVaccineJson = response.body;
      return TypeVaccine.fromJson(typeVaccineJson);
    }
  }

  Future deleteTypeVaccine(int typeVaccineId) async {
    final response =
        await _typeVaccineProvider.deleteTypeVaccine(typeVaccineId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar tipo vacuna');
    }
  }

  Future<TypeVaccine> updateTypeVaccine(
      int? typeVaccineId, TypeVaccine typeVaccine) async {
    final response = await _typeVaccineProvider.updateTypeVaccine(
        typeVaccineId, typeVaccine);
    if (response.status.hasError) {
      throw Exception('Error al actualizar tipo vacuna');
    } else {
      final dynamic typeVaccineJson = response.body;
      return TypeVaccine.fromJson(typeVaccineJson);
    }
  }
}
