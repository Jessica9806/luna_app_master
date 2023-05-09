import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/type_dewormer_model.dart';

class TypeDewormerProvider extends GetConnect {

  Future<Response> getTypeDewormers() {
    return get(ApiPath.getTypeDewormer);
  }

  Future<Response> createTypeDewormer(
      TypeDewormerCreate typeDewormerCreate) {
    return post(ApiPath.createTypeDewormer,
        typeDewormerCreate.toJson(),
        decoder: (data) => TypeDewormer.fromJson(data)
    );
  }

  Future<Response> getTypeDewormer(int type_dewormer_id) {
    return get('$ApiPath.getTypeDewormer$type_dewormer_id');
  }

  Future<Response> deleteTypeDewormer(int type_dewormer_id) {
    return delete('$ApiPath.deleteTypeDewormer$type_dewormer_id');
  }

  Future<Response> updateTypeDewormer(int? type_dewormer_id, TypeDewormer typeDewormer) {
    return put('$ApiPath.updateTypeDewormer$type_dewormer_id/update',
        typeDewormer.toJson(),
        decoder: (data) => TypeDewormer.fromJson(data)
    );
  }
}
