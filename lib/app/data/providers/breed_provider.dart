import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/breed_model.dart';

class BreedProvider extends GetConnect {
  Future<Response> getBreed() {
    return get(ApiPath.getBreed
    );
  }

  Future<Response> createBreed(
      BreedCreate breedCreate) {
    return post(ApiPath.createBreed,
        breedCreate.toJson(),
        decoder: (data) => Breed.fromJson(data)
    );
  }

  Future<Response> deleteBreed(int breed_id) {
    return delete('$ApiPath.deleteBreed$breed_id');
  }

  Future<Response> updateBreed(int? breed_id, Breed breed) {
    return put('$ApiPath.updateBreed$breed_id',
        breed.toJson(),
        decoder: (data) => Breed.fromJson(data)
    );
  }
}
