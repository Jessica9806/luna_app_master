import 'package:get/get.dart';

import 'package:luna_app/app/data//model/token_model.dart';

class TokenProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Token.fromJson(map);
      if (map is List) return map.map((item) => Token.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Token?> getToken(int id) async {
    final response = await get('token/$id');
    return response.body;
  }

  Future<Response<Token>> postToken(Token token) async =>
      await post('token', token);
  Future<Response> deleteToken(int id) async => await delete('token/$id');
}
