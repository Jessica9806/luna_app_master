class Auth {
  String? username;
  String? password;

  Auth({this.username, this.password});

  Auth.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}