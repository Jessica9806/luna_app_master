import 'package:luna_app/app/data/model/type_service_model.dart';
import 'package:luna_app/app/data/providers/type_service_provider.dart';

class TypeServiceRepository {
  final TypeServiceProvider _typeServiceProvider = TypeServiceProvider();

  Future<List<TypeService>> getTypeServices() async {
    final response = await _typeServiceProvider.getTypeServices();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar tipo servicio');
    } else {
      final List<dynamic> typeServiceJson = response.body;
      return typeServiceJson.map((json) => TypeService.fromJson(json)).toList();
    }
  }

  Future<TypeService> createTypeService(
      TypeServiceCreate typeServiceCreate) async {
    final response =
        await _typeServiceProvider.createTypeService(typeServiceCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear tipo servicio');
    } else {
      final dynamic typeServiceJson = response.body;
      return TypeService.fromJson(typeServiceJson);
    }
  }

  Future<TypeService> getTypeService(int typeServiceId) async {
    final response = await _typeServiceProvider.getTypeService(typeServiceId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar tipo servicio');
    } else {
      final dynamic typeServiceJson = response.body;
      return TypeService.fromJson(typeServiceJson);
    }
  }

  Future<void> deleteTypeService(int id) async {
    final response = await _typeServiceProvider.deleteTypeService(id);
    if (response.status.hasError) {
      throw Exception('Error al eliminar tipo servicio');
    }
  }

  Future<TypeService> updateTypeService(
      int? typeServiceId, TypeService typeService) async {
    final response = await _typeServiceProvider.updateTypeService(
        typeServiceId, typeService);
    if (response.status.hasError) {
      throw Exception('Error al actualizar tipo servicio');
    } else {
      final dynamic typeServiceJson = response.body;
      return TypeService.fromJson(typeServiceJson);
    }
  }
}
