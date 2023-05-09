import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/patient_model.dart';

class PatientProvider extends GetConnect {

  Future<Response> getPatients() {
    return get(ApiPath.getPatients);
  }

  Future<Response> createPatient(
      PatientCreate patientCreate) {
    return post(ApiPath.createConsultation,
        patientCreate.toJson(),
        decoder: (data) => Patient.fromJson(data)
    );
  }

  Future<Response> getPatient(int patient_id) {
    return get('$ApiPath.getPatient$patient_id');
  }

  Future<Response> deletePatient(int patient_id) {
    return delete('$ApiPath.deletePatient$patient_id');
  }

  Future<Response> updatePatient(int? patient_id, Patient patient) {
    return put('$ApiPath.updatePatient$patient_id/update',
        patient.toJson(),
        decoder: (data) => Patient.fromJson(data)
    );
  }
}
