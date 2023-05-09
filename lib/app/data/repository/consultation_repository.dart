import 'package:luna_app/app/data/model/consultation_model.dart';
import 'package:luna_app/app/data/providers/consultation_provider.dart';

class ConsultationRepository {
  final ConsultationProvider _consultationProvider = ConsultationProvider();

  Future<List<Consultation>> getConsultations() async {
    final response = await _consultationProvider.getConsultations();
    if (response.status.hasError) {
      throw Exception('Error al mostrar las consultas');
    } else {
      final List<dynamic> consultationJson = response.body;
      return consultationJson
          .map((json) => Consultation.fromJson(json))
          .toList();
    }
  }

  Future<Consultation> createConsultation(
    ConsultationCreate consultationCreate,
  ) async {
    final response =
        await _consultationProvider.createConsultation(consultationCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear la consulta');
    } else {
      final dynamic consultationJson = response.body;
      return Consultation.fromJson(consultationJson);
    }
  }

  Future<Consultation> getConsultation(int consultationId) async {
    final response =
        await _consultationProvider.getConsultation(consultationId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar la consulta');
    } else {
      final dynamic consultationJson = response.body;
      return Consultation.fromJson(consultationJson);
    }
  }

  Future deleteConsultation(int consultationId) async {
    final response =
        await _consultationProvider.deleteConsultation(consultationId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar la consulta');
    }
  }

  Future<Consultation> updateConsultation(
      int? consultationId, Consultation consultation) async {
    final response = await _consultationProvider.updateConsultation(
        consultationId, consultation);
    if (response.status.hasError) {
      throw Exception('Error al actualizar la consulta');
    } else {
      final dynamic consultationJson = response.body;
      return Consultation.fromJson(consultationJson);
    }
  }
}
