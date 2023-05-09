import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/esthetic_model.dart';

class EstheticProvider extends GetConnect {


  Future<Response> getEsthetics() {
    return get(ApiPath.getAesthetic);
  }

  Future<Response> createEsthetic(
      EstheticCreate estheticCreate) {
    return post(ApiPath.createEsthetic,
        estheticCreate.toJson(),
        decoder: (data) => Esthetic.fromJson(data)
    );
  }

  Future<Response> getEsthetic(int esthetic_id) {
    return get('$ApiPath.getEsthetic$esthetic_id');
  }

  Future<Response> deleteEsthetic(int esthetic_id) {
    return delete('$ApiPath.deleteEsthetic$esthetic_id');
  }

  Future<Response> updateEsthetic(int? esthetic_id, Esthetic esthetic) {
    return put('$ApiPath.updateEsthetic$esthetic_id/update',
        esthetic.toJson(),
        decoder: (data) => Esthetic.fromJson(data)
    );
  }
}
