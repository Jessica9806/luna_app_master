import 'package:luna_app/app/data/model/dewormer_model.dart';
import 'package:luna_app/app/data/providers/dewormer_provider.dart';

class DewormerRepository {
  final DewormerProvider _dewormerProvider = DewormerProvider();

  Future<List<Dewormer>> getDewormers() async {
    final response = await _dewormerProvider.getDewormers();
    if (response.status.hasError) {
      throw Exception('Error al mostrar dewormers');
    } else {
      final List<dynamic> dewormerJson = response.body;
      return dewormerJson.map((json) => Dewormer.fromJson(json)).toList();
    }
  }

  Future<Dewormer> createDewormer(DewormerCreate dewormerCreate) async {
    final response = await _dewormerProvider.createDewormer(dewormerCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear dewormer');
    } else {
      final dynamic dewormeJson = response.body;
      return Dewormer.fromJson(dewormeJson);
    }
  }

  Future<Dewormer> getDewormer(int dewormerId) async {
    final response = await _dewormerProvider.getDewormer(dewormerId);
    if (response.status.hasError) {
      throw Exception('Error al mostras dewormer');
    } else {
      final dynamic dewormerJson = response.body;
      return Dewormer.fromJson(dewormerJson);
    }
  }

  Future deleteDewormer(int dewormerId) async {
    final response = await _dewormerProvider.deleteDewormer(dewormerId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar dewormer');
    }
  }

  Future<Dewormer> updateDewormer(int? dewormerId, Dewormer dewormer) async {
    final response =
        await _dewormerProvider.updateDewormer(dewormerId, dewormer);
    if (response.status.hasError) {
      throw Exception('Error al actualizar dewormer');
    } else {
      final dynamic dewormerJson = response.body;
      return Dewormer.fromJson(dewormerJson);
    }
  }
}
