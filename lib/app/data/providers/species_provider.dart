import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/species_model.dart';

class SpeciesProvider extends GetConnect {

  Future<Response> getSpecies() {
    return get(ApiPath.getSpecies);
  }

  Future<Response> createSpecies(
      SpeciesCreate speciesCreate) {
    return post(ApiPath.createSpecies,
        speciesCreate.toJson(),
        decoder: (data) => Species.fromJson(data)
    );
  }

  Future<Response> getSpecie(int species_id) {
    return get('$ApiPath.getSpecie$species_id');
  }

  Future<Response> deleteSpecies(int species_id) {
    return delete('$ApiPath.deleteSpecies$species_id');
  }

  Future<Response> updateSpecies(int? species_id, Species species) {
    return put('$ApiPath.updateSpecies$species_id/update',
        species.toJson(),
        decoder: (data) => Species.fromJson(data)
    );
  }
}
