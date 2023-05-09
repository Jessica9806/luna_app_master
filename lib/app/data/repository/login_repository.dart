import 'package:luna_app/app/data/model/token_model.dart';
import 'package:luna_app/app/data/providers/login_provider.dart';
import '../model/auth_model.dart';

class LoginRepository {
  final LoginProvider _loginProvider = LoginProvider();

  Future<Token> getTokenUser(Auth auth) async {
    final response = await _loginProvider.loginUser(auth);
    if (response.status.hasError) {
      throw Exception('Error al llamar al token');
    } else {
      final dynamic tokenJson = response.body;
      return Token.fromJson(tokenJson);
    }
  }
}
