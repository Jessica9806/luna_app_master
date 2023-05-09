import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/clinic_model.dart';

class ClinicProvider extends GetConnect {
  final token = GetStorage().read('token');
  Future<Response> getClinics() {
    return get(ApiPath.getClinics,
        headers: {
          'Authorization': 'Bearer $token',
        }
    );
  }

  Future<Response> createClinic(
      ClinicCreate clinicCreate) {
    return post(ApiPath.createClinic,
        clinicCreate.toJson(),
        decoder: (data) => Clinic.fromJson(data),
        headers: {
          'Authorization': 'Bearer $token',
        }
    );
  }

  Future<Response> getClinic(int clinic_id) {
    return get('$ApiPath.getClinic$clinic_id');
  }

  Future<Response> deleteClinic(int clinic_id) {
    return delete('$ApiPath.deleteClinic$clinic_id');
  }

  Future<Response> updateClinic(int? clinic_id, Clinic clinic) {
    return put('$ApiPath.updateClinic$clinic_id/update',
        clinic.toJson(),
        decoder: (data) => Clinic.fromJson(data)
    );
  }
}
