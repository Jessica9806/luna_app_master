
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luna_app/app/constans/app_constants.dart';

import 'package:luna_app/app/data/model/client_model.dart';

class ClientProvider extends GetConnect {

  Future<Response> getClients() async {
    return await get(ApiPath.getClients);
  }

  Future<Response> createClient(
      ClientCreate clientCreate) {
    return post(ApiPath.createClient,
        clientCreate.toJson(),
        decoder: (data) => Client.fromJson(data)
    );
  }

  Future<Response> getClient(int client_id) {
    return get('$ApiPath.getClient$client_id');
  }

  Future<Response> deleteClient(int client_id) {
    return delete('$ApiPath.deleteClient$client_id');
  }

  Future<Response> updateClient(int? appointment_id, Client client) {
    return put('$ApiPath.updateClient$appointment_id',
        client.toJson(),
        decoder: (data) => Client.fromJson(data)
    );
  }
}
