import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/laboratory_model.dart';

class LaboratoryProvider extends GetConnect {

  Future<Response> getLaboratories() {

    return get(ApiPath.getLaboratories);
  }

  Future<Response> createLaboratory(
      LaboratoryCreate laboratoryCreate) {
    return post(ApiPath.createLaboratory,
        laboratoryCreate.toJson(),
        decoder: (data) => Laboratory.fromJson(data)
    );
  }

  Future<Response> getLaboratory(int laboratory_id) {
    return get('$ApiPath.getLaboratory$laboratory_id');
  }

  Future<Response> deleteLaboratory(int laboratory_id) {
    return delete('$ApiPath.deleteLaboratory$laboratory_id');
  }

  Future<Response> updateLaboratory(int? laboratory_id, Laboratory laboratory) {
    return put('$ApiPath.updateLaboratory$laboratory_id/update',
        laboratory.toJson(),
        decoder: (data) => Laboratory.fromJson(data)
    );
  }
}
