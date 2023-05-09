
// userbase
// -email
// username
//user
//  -id
//userregister
// -password
class UserBase {
  String? username;
  String? email;

  UserBase({this.email, this.username});

  UserBase.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    return data;
  }
}

class User extends UserBase {
  int? id;

  User({this.id, required String username, required String email}) :
        super(username: username, email: email);


  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    email = json['email'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['email'] = email;
    return data;
  }

}
class UserRegister extends UserBase {
  String? password;

  UserRegister({this.password, required String username, required String email}):
        super(username: username, email: email);

  UserRegister.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    password = json['password'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['email'] = email;
    data['password'] = password;
    return data;
  }

}