import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/vaccine_model.dart';

class VaccineProvider extends GetConnect {

  Future<Response> getVaccines() {
    return get(ApiPath.getVaccines);
  }

  Future<Response> createVaccine(
      VaccineCreate vaccineCreate) {
    return post(ApiPath.createVaccine,
        vaccineCreate.toJson(),
        decoder: (data) => Vaccine.fromJson(data)
    );
  }

  Future<Response> getVaccine(int vaccine_id) {
    return get('$ApiPath.getVaccine$vaccine_id');
  }

  Future<Response> deleteVaccine(int vaccine_id) {
    return delete('$ApiPath.deleteVaccine$vaccine_id');
  }

  Future<Response> updateVaccine(int? consultation_id, Vaccine vaccine) {
    return put('$ApiPath.updateConsultation$consultation_id/update',
        vaccine.toJson(),
        decoder: (data) => Vaccine.fromJson(data)
    );
  }
}
