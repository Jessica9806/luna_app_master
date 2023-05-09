import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/esthetic_has_type_service_model.dart';

class EstheticHasTypeServiceProvider extends GetConnect {

  Future<Response> getEstheticHasTypeServices() {
    return get(ApiPath.getEstheticHasTypeServices);
  }

  Future<Response> createEstheticHasTypeService(
      EstheticHasTypeServiceCreate estheticHasTypeServiceCreate) {
    return post(ApiPath.createEstheticHasTypeService,
        estheticHasTypeServiceCreate.toJson(),
        decoder: (data) => EstheticHasTypeService.fromJson(data)
    );
  }

  Future<Response> getEstheticHasTypeService(int esthetic_has_type_service_id) {
    return get('$ApiPath.getEstheticHasTypeService$esthetic_has_type_service_id');
  }

  Future<Response> deleteEstheticHasTypeService(int esthetic_has_type_service_id) {
    return delete('$ApiPath.deleteEstheticHasTypeService$esthetic_has_type_service_id');
  }

  Future<Response> updateEstheticHasTypeService(int? esthetic_has_type_service_id, EstheticHasTypeService estheticHasTypeService) {
    return put('$ApiPath.updateEstheticHasTypeService$esthetic_has_type_service_id/update',
        estheticHasTypeService.toJson(),
        decoder: (data) => EstheticHasTypeService.fromJson(data)
    );
  }
}
