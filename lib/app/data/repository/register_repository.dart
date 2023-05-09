import 'package:luna_app/app/data/model/user_model.dart';
import 'package:luna_app/app/data/providers/register_provider.dart';

RegisterProvider _registerProvider = RegisterProvider();

class RegisterRepository {
  Future<User> registerDataUser(UserRegister userRegister) async {
    final response = await _registerProvider.registerUser(userRegister);
    if (response.status.hasError) {
      throw Exception('Error al crear el usuario');
    } else {
      final dynamic userJson = response.body;
      return User.fromJson(userJson);
    }
  }
}
