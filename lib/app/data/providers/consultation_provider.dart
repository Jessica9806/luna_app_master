import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/consultation_model.dart';

class ConsultationProvider extends GetConnect {
  final token = GetStorage().read('token');

  Future<Response> getConsultations() {
    return get(ApiPath.getConsultations,
        headers: {
          'Authorization': 'Bearer $token',
        }
    );
  }

  Future<Response> createConsultation(
      ConsultationCreate consultationCreate) {
    return post(ApiPath.createConsultation,
        consultationCreate.toJson(),
        decoder: (data) => Consultation.fromJson(data),
        headers: {
          'Authorization': 'Bearer $token',
        }
    );
  }

  Future<Response> getConsultation(int consultation_id) {
    return get('$ApiPath.getConsultation$consultation_id');
  }

  Future<Response> deleteConsultation(int consultation_id) {
    return delete('$ApiPath.deleteConsultation$consultation_id');
  }

  Future<Response> updateConsultation(int? consultation_id, Consultation consultation) {
    return put('$ApiPath.updateConsultation$consultation_id/update',
        consultation.toJson(),
        decoder: (data) => Consultation.fromJson(data)
    );
  }
}
