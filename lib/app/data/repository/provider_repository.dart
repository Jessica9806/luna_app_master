import 'package:luna_app/app/data/model/provider_model.dart';
import 'package:luna_app/app/data/providers/provider_provider.dart';

class ProviderRepository {
  final ProviderProvider _providerProvider = ProviderProvider();

  Future<List<Provider>> getProviders() async {
    final response = await _providerProvider.getProviders();
    if (response.statusCode == 200) {
      throw Exception('Error al mostrar los proveedores');
    } else {
      final List<dynamic> providerJson = response.body;
      return providerJson.map((json) => Provider.fromJson(json)).toList();
    }
  }

  Future<Provider> createProvider(ProviderCreate providerCreate) async {
    final response = await _providerProvider.createProvider(providerCreate);
    if (response.status.hasError) {
      throw Exception('Error al crear proveedor');
    } else {
      final dynamic providerJson = response.body;
      return Provider.fromJson(providerJson);
    }
  }

  Future<Provider> getProvider(int providerId) async {
    final response = await _providerProvider.getProvider(providerId);
    if (response.status.hasError) {
      throw Exception('Error al mostrar proveedor');
    } else {
      final dynamic providerJson = response.body;
      return Provider.fromJson(providerJson);
    }
  }

  Future deleteProvider(int providerId) async {
    final response = await _providerProvider.deleteProvider(providerId);
    if (response.status.hasError) {
      throw Exception('Error al eliminar proveedor');
    }
  }

  Future<Provider> updateProvider(int? providerId, Provider provider) async {
    final response =
        await _providerProvider.updateProvider(providerId, provider);
    if (response.status.hasError) {
      throw Exception('Error al actualizar proveedor');
    } else {
      final dynamic providerJson = response.body;
      return Provider.fromJson(providerJson);
    }
  }
}
