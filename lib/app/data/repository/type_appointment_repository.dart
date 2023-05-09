import 'package:luna_app/app/data/model/type_appointment_model.dart';
import 'package:luna_app/app/data/providers/type_appointment_provider.dart';

class TypeAppointmentRepository {
  final TypeAppointmentProvider _typeAppointmentProvider =
      TypeAppointmentProvider();

  Future<List<TypeAppointment>> getTypeAppointments() async {
    final response = await _typeAppointmentProvider.getTypeAppointments();
    if (response.status.hasError) {
      throw Exception('Error al mostrar typo de cita');
    } else {
      final List<dynamic> typeAppointmentJson = response.body;
      return typeAppointmentJson
          .map((json) => TypeAppointment.fromJson(json))
          .toList();
    }
  }

  Future<TypeAppointment> createTypeAppointment(
      TypeAppointmentCreate typeAppointmentCreate) async {
    final response = await _typeAppointmentProvider
        .createTypeAppointment(typeAppointmentCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear tipo de cita');
    } else {
      final dynamic typeAppointmentJson = response.body;
      return TypeAppointment.fromJson(typeAppointmentJson);
    }
  }

  Future<TypeAppointment> getTypeAppointment(int typeAppointmentId) async {
    final response =
        await _typeAppointmentProvider.getTypeAppointment(typeAppointmentId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar tipo de cita');
    } else {
      final dynamic typeAppointmentJson = response.body;
      return TypeAppointment.fromJson(typeAppointmentJson);
    }
  }

  Future deleteTypeAppointment(int typeAppointmentId) async {
    final response =
        await _typeAppointmentProvider.deleteTypeAppointment(typeAppointmentId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar tipo cita');
    }
  }

  Future<TypeAppointment> updateTypeAppointment(
      int? typeAppointmentId, TypeAppointment typeAppointment) async {
    final response = await _typeAppointmentProvider.updateTypeAppointment(typeAppointmentId, typeAppointment);
    if (response.status.hasError) {
      throw Exception('Error al actualizar tipo cita');
    } else {
      final dynamic typeAppointmentJson = response.body;
      return TypeAppointment.fromJson(typeAppointmentJson);
    }
  }
}
