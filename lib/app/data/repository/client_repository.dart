import 'package:luna_app/app/data/providers/client_provider.dart';
import 'package:luna_app/app/data/model/client_model.dart';

class ClientRepository {
  final ClientProvider _clientProvider = ClientProvider();

  Future<List<Client>> getClients() async {
    final response = await _clientProvider.getClients();
    if (response.status.hasError) {
      return throw ('Error al obtener los clientes');
    } else {
      final List<dynamic> clientJson = response.body;
      return clientJson.map((json) => Client.fromJson(json)).toList();
    }
  }

  Future<Client> createClient(ClientCreate clientCreate) async {
    final response = await _clientProvider.createClient(clientCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear cliente');
    } else {
      final dynamic clientJson = response.body;
      return Client.fromJson(clientJson);
    }
  }

  Future<Client> getClient(int clientId) async {
    final response = await _clientProvider.getClient(clientId);
    if (response.status.hasError) {
      throw Exception('Error al obtener el cliente');
    } else {
      final dynamic clientJson = response.body;
      return Client.fromJson(clientJson);
    }
  }

  Future deleteClient(int clientId) async {
    final response = await _clientProvider.deleteClient(clientId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar el cliente');
    }
  }

  Future<Client> updateClient(int? clientId, Client client) async {
    final response = await _clientProvider.updateClient(clientId, client);
    if (response.status.hasError) {
      throw Exception('Error al actualizar el cliente');
    } else {
      final dynamic clientJson = response.body;
      return Client.fromJson(clientJson);
    }
  }
}
