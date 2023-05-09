import 'package:luna_app/app/data/model/pet_daycare_model.dart';
import 'package:luna_app/app/data/providers/pet_daycare_provider.dart';

class PetDaycareRepository {
  final PetDaycareProvider _petDaycareProvider = PetDaycareProvider();

  Future<List<PetDaycare>> getPetDaycares() async {
    final response = await _petDaycareProvider.getPetDaycares();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar las guarderias');
    } else {
      final List<dynamic> petDaycareJson = response.body;
      return petDaycareJson.map((json) => PetDaycare.fromJson(json)).toList();
    }
  }

  Future<PetDaycare> createPetDaycare(PetDaycareCreate petDaycareCreate) async {
    final response =
        await _petDaycareProvider.createPetDaycare(petDaycareCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear guarderia');
    } else {
      final dynamic petDaycareJson = response.body;
      return PetDaycare.fromJson(petDaycareJson);
    }
  }

  Future<PetDaycare> getPetDaycare(int petDaycareId) async {
    final response = await _petDaycareProvider.getPetDaycare(petDaycareId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar guarderia');
    } else {
      final dynamic petDaycareJson = response.body;
      return PetDaycare.fromJson(petDaycareJson);
    }
  }

  Future deletePetDaycare(int petDaycareId) async {
    final response = await _petDaycareProvider.deletePetDaycare(petDaycareId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar guarderia');
    }
  }

  Future<PetDaycare> updatePetDaycare(
      int? petDaycareId, PetDaycare petDaycare) async {
    final response =
        await _petDaycareProvider.updatePetDaycare(petDaycareId, petDaycare);
    if (response.status.hasError) {
      throw Exception('Error al actualizar guarderia');
    } else {
      final dynamic petDaycareJson = response.body;
      return PetDaycare.fromJson(petDaycareJson);
    }
  }
}
