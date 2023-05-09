import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/type_vaccine_model.dart';

class TypeVaccineProvider extends GetConnect {

  Future<Response> getTypeVaccines() {
    return get(ApiPath.getTypeVaccines);
  }

  Future<Response> createTypeVaccine(
      TypeVaccineCreate typeVaccineCreate) {
    return post(ApiPath.createTypeVaccine,
        typeVaccineCreate.toJson(),
        decoder: (data) => TypeVaccine.fromJson(data)
    );
  }

  Future<Response> getTypeVaccine(int type_vaccine_id) {
    return get('$ApiPath.getTypeVaccine$type_vaccine_id');
  }

  Future<Response> deleteTypeVaccine(int type_vaccine_id) {
    return delete('$ApiPath.deleteTypeVaccine$type_vaccine_id');
  }

  Future<Response> updateTypeVaccine(int? type_vaccine_id, TypeVaccine typeVaccine) {
    return put('$ApiPath.updateTypeVaccine$type_vaccine_id/update',
        typeVaccine.toJson(),
        decoder: (data) => TypeVaccine.fromJson(data)
    );
  }

}
