import 'package:luna_app/app/data/model/species_model.dart';
import 'package:luna_app/app/data/providers/species_provider.dart';

class SpeciesRepository {
  final SpeciesProvider _speciesProvider = SpeciesProvider();

  Future<List<Species>> getSpecies() async {
    final response = await _speciesProvider.getSpecies();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar especies');
    } else {
      final List<dynamic> speciesJson = response.body;
      return speciesJson.map((json) => Species.fromJson(json)).toList();
    }
  }

  Future<Species> createSpecies(SpeciesCreate speciesCreate) async {
    final response = await _speciesProvider.createSpecies(speciesCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear especies');
    } else {
      final dynamic speciesJson = response.body;
      return Species.fromJson(speciesJson);
    }
  }

  Future<Species> getSpecie(int speciesId) async {
    final response = await _speciesProvider.getSpecie(speciesId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar especies');
    } else {
      final dynamic speciesJson = response.body;
      return Species.fromJson(speciesJson);
    }
  }

  Future deleteSpecie(int speciesId) async {
    final response = await _speciesProvider.deleteSpecies(speciesId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar especie');
    }
  }

  Future<Species> updateSpecie(int? speciesId, Species species) async {
    final response = await _speciesProvider.updateSpecies(speciesId, species);
    if (response.status.hasError) {
      throw Exception('Error al actualizar tipo especies');
    } else {
      final dynamic speciesJson = response.body;
      return Species.fromJson(speciesJson);
    }
  }
}
