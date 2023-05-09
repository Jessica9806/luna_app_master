import 'package:get/get.dart';
import 'package:luna_app/app/constans/app_constants.dart';
import 'package:get_storage/get_storage.dart';
import '../model/appointment_model.dart';


class AppointmentProvider extends GetConnect {
  final String token;
  AppointmentProvider() : token = GetStorage().read('token');
  Future<Response> getAppointments()  {
    return get(ApiPath.getAppoinments,
      headers: {
        'Authorization': 'Bearer $token',
      }
    );
  }

  Future<Response> createAppointment(
        AppointmentCreate appointmentCreate) {
    return post(ApiPath.createAppointment,
          appointmentCreate.toJson(),
          decoder: (data) => Appointment.fromJson(data),
          headers: {
            'Authorization': 'Bearer $token',
          }
    );
  }

  Future<Response> deleteAppointment(int? appointmentId)  {
    return delete('$ApiPath.deleteAppointment$appointmentId',
        headers: {
          'Authorization': 'Bearer $token',
        }
    );
  }

  Future<Response> updateAppointment(int? appointmentId, Appointment appointment) {
    return put('$ApiPath.updateAppointment$appointmentId',
        appointment.toJson(),
        decoder: (data) => Appointment.fromJson(data)
    );
  }
}
