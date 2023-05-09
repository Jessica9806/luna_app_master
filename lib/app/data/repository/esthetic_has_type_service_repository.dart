import 'package:luna_app/app/data/model/esthetic_has_type_service_model.dart';
import 'package:luna_app/app/data/providers/esthetic_has_type_service_provider.dart';

class EstheticHasTypeServiceRepository {
  final EstheticHasTypeServiceProvider _estheticHasTypeServiceProvider =
      EstheticHasTypeServiceProvider();

  Future<List<EstheticHasTypeService>> getEstheticsHasTypeServices() async {
    final response =
        await _estheticHasTypeServiceProvider.getEstheticHasTypeServices();
    if (response.status.hasError) {
      throw Exception('Error al mostrar esthetic has type service');
    } else {
      final List<dynamic> estheticHasTypeServiceJson = response.body;
      return estheticHasTypeServiceJson
          .map((json) => EstheticHasTypeService.fromJson(json))
          .toList();
    }
  }

  Future<EstheticHasTypeService> createEstheticHasTypeService(
      EstheticHasTypeServiceCreate estheticHasTypeServiceCreate) async {
    final response = await _estheticHasTypeServiceProvider
        .createEstheticHasTypeService(estheticHasTypeServiceCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear esthetic has type service');
    } else {
      final dynamic estheticHasTypeServiceJson = response.body;
      return EstheticHasTypeService.fromJson(estheticHasTypeServiceJson);
    }
  }

  Future<EstheticHasTypeService> getEstheticHasTypeService(
      int estheticHasTypeServiceId) async {
    final response = await _estheticHasTypeServiceProvider
        .getEstheticHasTypeService(estheticHasTypeServiceId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar esthetic has type service');
    } else {
      final dynamic esthetycHasTypeServiceJson = response.body;
      return EstheticHasTypeService.fromJson(esthetycHasTypeServiceJson);
    }
  }

  Future deleteEstheticHasTypeService(int estheticHasTypeServiceId) async {
    final response = await _estheticHasTypeServiceProvider
        .deleteEstheticHasTypeService(estheticHasTypeServiceId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar esthetic has type service');
    }
  }

  Future<EstheticHasTypeService> updateEstheticHasTypeService(
      int? estheticHasTypeServiceId,
      EstheticHasTypeService estheticHasTypeService) async {
    final response =
        await _estheticHasTypeServiceProvider.updateEstheticHasTypeService(
            estheticHasTypeServiceId, estheticHasTypeService);
    if (response.status.hasError) {
      throw Exception('Error al actualizar esthetic has type service');
    } else {
      final dynamic estheticHasTypeServiceJson = response.body;
      return EstheticHasTypeService.fromJson(estheticHasTypeServiceJson);
    }
  }
}
