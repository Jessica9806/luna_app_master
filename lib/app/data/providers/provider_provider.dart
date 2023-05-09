import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/provider_model.dart';

class ProviderProvider extends GetConnect {

  Future<Response> getProviders() {
    return get(ApiPath.getProviders);
  }

  Future<Response> createProvider(
      ProviderCreate providerCreate) {
    return post(ApiPath.createProvider,
        providerCreate.toJson(),
        decoder: (data) => Provider.fromJson(data)
    );
  }

  Future<Response> getProvider(int provider_id) {
    return get('$ApiPath.getProvider$provider_id');
  }

  Future<Response> deleteProvider(int provider_id) {
    return delete('$ApiPath.deleteProvider$provider_id');
  }

  Future<Response> updateProvider(int? provider_id, Provider provider) {
    return put('$ApiPath.updateProvider$provider_id/update',
        provider.toJson(),
        decoder: (data) => Provider.fromJson(data)
    );
  }
}
