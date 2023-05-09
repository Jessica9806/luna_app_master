import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/type_service_model.dart';

class TypeServiceProvider extends GetConnect {

  Future<Response> getTypeServices() {
    return get(ApiPath.getTypeServices);
  }

  Future<Response> createTypeService(
      TypeServiceCreate typeServiceCreate) {
    return post(ApiPath.createTypeService,
        typeServiceCreate.toJson(),
        decoder: (data) => TypeService.fromJson(data)
    );
  }

  Future<Response> getTypeService(int type_service_id) {
    return get('$ApiPath.getTypeService$type_service_id');
  }

  Future<Response> deleteTypeService(int type_service_id) {
    return delete('$ApiPath.deleteTypeService$type_service_id');
  }

  Future<Response> updateTypeService(int? type_service_id, TypeService typeService) {
    return put('$ApiPath.updateTypeService$type_service_id/update',
        typeService.toJson(),
        decoder: (data) => TypeService.fromJson(data)
    );
  }
}
