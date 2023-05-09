import 'package:luna_app/app/data/model/appointment_model.dart';
import 'package:luna_app/app/data/providers/appointment_provider.dart';

class AppointmentRepository {
  final AppointmentProvider _appointmentProvider = AppointmentProvider();

  Future<List<Appointment>> getAppointments() async {
    final response = await _appointmentProvider.getAppointments();
    if (response.status.hasError) {
      throw Exception('Error al obtener las citas');
    } else {
      final List<dynamic> appointmentJson = response.body;
      return appointmentJson.map((json) => Appointment.fromJson(json)).toList();
    }
  }

  Future<Appointment> createAppointment(
      AppointmentCreate appointmentCreate) async {
    final response =
        await _appointmentProvider.createAppointment(appointmentCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear la cita');
    } else {
      final dynamic appointmentJson = response.body;
      return Appointment.fromJson(appointmentJson);
    }
  }

  Future deleteAppointment(int? appointmentId) async {
    final response =
        await _appointmentProvider.deleteAppointment(appointmentId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar cita');
    }
  }

  Future<Appointment> updateAppointment(
      int? appointmentId, Appointment appointment) async {
    final response = await _appointmentProvider.updateAppointment(
        appointmentId, appointment);
    if (response.status.hasError) {
      throw Exception('Error al actualizar la cita');
    } else {
      final dynamic appointmentJson = response.body;
      return Appointment.fromJson(appointmentJson);
    }
  }
}
