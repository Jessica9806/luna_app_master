import 'package:luna_app/app/data/model/breed_model.dart';
import 'package:luna_app/app/data/providers/breed_provider.dart';

class BreedRepository {
  final BreedProvider _breedProvider = BreedProvider();

  Future<List<Breed>> getBreed() async {
    final response = await _breedProvider.getBreed();
    if (response.status.hasError) {
      throw Exception('Error al obtener las breed');
    } else {
      final List<dynamic> breedJson = response.body;
      return breedJson.map((json) => Breed.fromJson(json)).toList();
    }
  }

  Future<Breed> createBreed(
    BreedCreate breedCreate,
  ) async {
    final response = await _breedProvider.createBreed(breedCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear la breed');
    } else {
      final dynamic breedJson = response.body;
      return Breed.fromJson(breedJson);
    }
  }

  Future deleteBreed(int breedId) async {
    final response = await _breedProvider.deleteBreed(breedId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar breed');
    }
  }

  Future<Breed> updateBreed(int? breedId, Breed breed) async {
    final response = await _breedProvider.updateBreed(breedId, breed);
    if (response.status.hasError) {
      throw Exception('Error al actualizar la breed');
    } else {
      final dynamic breedJson = response.body;
      return Breed.fromJson(breedJson);
    }
  }
}
