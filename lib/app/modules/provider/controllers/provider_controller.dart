import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:luna_app/app/data/model/provider_model.dart';
import 'package:luna_app/app/data/repository/provider_repository.dart';

class ProviderController extends GetxController {
  final ProviderRepository _providerRepository = ProviderRepository();

  RxList<Provider> _providers = <Provider>[].obs;

  Rx<Provider> _provider = Provider().obs;

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final rucController = TextEditingController();
  final emailController = TextEditingController();
  final countryController = TextEditingController();
  final provinceController = TextEditingController();
  final cityController = TextEditingController();
  final addressController = TextEditingController();
  final postalCodeController = TextEditingController();

  void onInit() {
    getProviders();
    super.onInit();
  }

  void getProviders() async {
    try {
      final providersResult = await _providerRepository.getProviders();
      _providers.assignAll(providersResult);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void createProvider() async {
    final providerCreate = ProviderCreate(
      name: nameController.text,
      phone: phoneController.text,
      ruc: rucController.text,
      email: emailController.text,
      country: countryController.text,
      province: provinceController.text,
      city: cityController.text,
      address: addressController.text,
      postalCode: postalCodeController.text
    );
    try {
      final createProvider = await _providerRepository.createProvider(providerCreate);
      _providers.add(createProvider);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void getProvider(int providerId) async {
    try {
      final providerResult = await _providerRepository.getProvider(providerId);
      _provider.value = providerResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void updateProvider(Provider provider) async {
    try {
      final updateProviderResult = await _providerRepository.updateProvider(provider.id, provider);
      final index = _providers.indexWhere((provider) => provider.id == updateProviderResult.id);
      _providers[index] = updateProviderResult;
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }

  void deleteProvider(int providerId) async {
    try {
      await _providerRepository.deleteProvider(providerId);
      _providers.removeWhere((provider) => provider.id == providerId);
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
