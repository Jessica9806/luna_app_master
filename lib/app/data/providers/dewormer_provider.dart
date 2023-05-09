import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/dewormer_model.dart';

class DewormerProvider extends GetConnect {

  Future<Response> getDewormers() {
    return get(ApiPath.getDewormers);
  }

  Future<Response> createDewormer(
      DewormerCreate dewormerCreate) {
    return post(ApiPath.createDewormer,
        dewormerCreate.toJson(),
        decoder: (data) => Dewormer.fromJson(data)
    );
  }

  Future<Response> getDewormer(int dewormer_id) {
    return get('$ApiPath.getDewormer$dewormer_id');
  }

  Future<Response> deleteDewormer(int dewormer_id) {
    return delete('$ApiPath.deleteDewormer$dewormer_id');
  }

  Future<Response> updateDewormer(int? dewormer_id, Dewormer dewormer) {
    return put('$ApiPath.updateDewormer$dewormer_id/update',
        dewormer.toJson(),
        decoder: (data) => Dewormer.fromJson(data)
    );
  }
}
