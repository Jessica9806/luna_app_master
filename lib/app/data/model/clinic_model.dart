class ClinicCreate {
  String? name;
  String? addres;
  String? city;
  String? phone;
  String? ruc;

  ClinicCreate(
      {this.name,
      this.addres,
      this.city,
      this.phone,
      this.ruc,
      });

  ClinicCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    addres = json['addres'];
    city = json['city'];
    phone = json['phone'];
    ruc = json['ruc'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['addres'] = addres;
    data['city'] = city;
    data['phone'] = phone;
    data['ruc'] = ruc;
    return data;
  }
}

class Clinic extends ClinicCreate {
  int? id;
  int? user;
  DateTime? createdAt;

  Clinic({this.id, name, addres, city, phone, ruc, this.user, this.createdAt}) : super(name: name, addres: addres, city: city, phone: phone, ruc: ruc);

  Clinic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    addres = json['addres'];
    city = json['city'];
    phone = json['phone'];
    ruc = json['ruc'];
    user = json['user'];
    createdAt = DateTime.parse(json['created_at']);
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['addres'] = addres;
    data['city'] = city;
    data['phone'] = phone;
    data['ruc'] = ruc;
    data['user'] = user;
    data['created_at'] = createdAt!.toIso8601String();
    return data;
  }
}
