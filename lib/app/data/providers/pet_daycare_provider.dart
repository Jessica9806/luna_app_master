import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/pet_daycare_model.dart';

class PetDaycareProvider extends GetConnect {

  Future<Response> getPetDaycares() {
    return get(ApiPath.getPetDaycares);
  }

  Future<Response> createPetDaycare(
      PetDaycareCreate petDaycareCreate) {
    return post(ApiPath.createPetDaycare,
        petDaycareCreate.toJson(),
        decoder: (data) => PetDaycare.fromJson(data)
    );
  }

  Future<Response> getPetDaycare(int pet_daycare_id) {
    return get('$ApiPath.getPetDaycare$pet_daycare_id');
  }

  Future<Response> deletePetDaycare(int pet_daycare_id) {
    return delete('$ApiPath.deletePetDaycare$pet_daycare_id');
  }

  Future<Response> updatePetDaycare(int? pet_daycare_id, PetDaycare petDaycare) {
    return put('$ApiPath.updatePetDaycare$pet_daycare_id/update',
        petDaycare.toJson(),
        decoder: (data) => PetDaycare.fromJson(data)
    );
  }
}
