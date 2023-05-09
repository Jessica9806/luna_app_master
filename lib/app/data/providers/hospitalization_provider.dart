import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/hospitalization_model.dart';

class HospitalizationProvider extends GetConnect {

  Future<Response> getHospitalizations() {
    return get(ApiPath.getHospitalizations);
  }

  Future<Response> createHospitalization(
      HospitalizationCreate hospitalizationCreate) {
    return post(ApiPath.createHospitalization,
        hospitalizationCreate.toJson(),
        decoder: (data) => Hospitalization.fromJson(data),
    );
  }

  Future<Response> getHospitalization(int hospitalization_id) {
    return get('$ApiPath.getHospitalization$hospitalization_id');
  }

  Future<Response> deleteHospitalization(int hospitalization_id) {
    return delete('$ApiPath.deleteHospitalization$hospitalization_id');
  }

  Future<Response> updateHospitalization(int? hospitalization_id, Hospitalization hospitalization) {
    return put('$ApiPath.updateHospitalization$hospitalization_id/update',
        hospitalization.toJson(),
        decoder: (data) => Hospitalization.fromJson(data)
    );
  }
}
