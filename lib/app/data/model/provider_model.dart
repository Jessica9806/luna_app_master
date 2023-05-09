class ProviderCreate {
  String? name;
  String? phone;
  String? ruc;
  String? email;
  String? country;
  String? province;
  String? city;
  String? address;
  String? postalCode;

  ProviderCreate(
      {this.name,
      this.phone,
      this.ruc,
      this.email,
      this.country,
      this.province,
      this.city,
      this.address,
      this.postalCode,
     });

  ProviderCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    ruc = json['ruc'];
    email = json['email'];
    country = json['country'];
    province = json['province'];
    city = json['city'];
    address = json['address'];
    postalCode = json['postal_code'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['phone'] = phone;
    data['ruc'] = ruc;
    data['email'] = email;
    data['country'] = country;
    data['province'] = province;
    data['city'] = city;
    data['address'] = address;
    data['postal_code'] = postalCode;
    return data;
  }
}

class Provider extends ProviderCreate {
  int? id;

  Provider(
      {this.id,
      name,
      phone,
      ruc,
      email,
      country,
      province,
      city,
      address,
      postalCode,
      })
      : super(
            name: name,
            phone: phone,
            ruc: ruc,
            email: email,
            country: country,
            province: province,
            city: city,
            address: address,
            postalCode: postalCode,
            );

  Provider.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    ruc = json['ruc'];
    email = json['email'];
    country = json['country'];
    province = json['province'];
    city = json['city'];
    address = json['address'];
    postalCode = json['postal_code'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['ruc'] = ruc;
    data['email'] = email;
    data['country'] = country;
    data['province'] = province;
    data['city'] = city;
    data['address'] = address;
    data['postal_code'] = postalCode;
    return data;
  }
}