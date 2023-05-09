import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/type_appointment_model.dart';
class TypeAppointmentProvider extends GetConnect {


  Future<Response> getTypeAppointments() {
    return get(ApiPath.getTypeAppointments);
  }

  Future<Response> createTypeAppointment(
      TypeAppointmentCreate typeAppointmentCreate) {
    return post(ApiPath.createTypeAppointment,
        typeAppointmentCreate.toJson(),
        decoder: (data) => TypeAppointment.fromJson(data)
    );
  }

  Future<Response> getTypeAppointment(int type_appointment_id) {
    return get('$ApiPath.getTypeAppointment$type_appointment_id');
  }

  Future<Response> deleteTypeAppointment(int type_appointment_id) {
    return delete('$ApiPath.deleteTypeAppointment$type_appointment_id');
  }

  Future<Response> updateTypeAppointment(int? type_appointment_id, TypeAppointment typeAppointment) {
    return put('$ApiPath.updateTypeAppointment$type_appointment_id/update',
        typeAppointment.toJson(),
        decoder: (data) => TypeAppointment.fromJson(data)
    );
  }
}
