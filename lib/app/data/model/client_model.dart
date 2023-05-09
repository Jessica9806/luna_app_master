class ClientCreate {
  String? fullName;
  String? phone;
  String? address;
  String? identificationCard;
  String? email;
  String? city;

  ClientCreate(
      {this.fullName,
      this.phone,
      this.address,
      this.identificationCard,
      this.email,
      this.city,
      });

  ClientCreate.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    phone = json['phone'];
    address = json['address'];
    identificationCard = json['identification_card'];
    email = json['email'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['full_name'] = fullName;
    data['phone'] = phone;
    data['address'] = address;
    data['identification_card'] = identificationCard;
    data['email'] = email;
    data['city'] = city;
    return data;
  }
}

class Client extends ClientCreate {
  int? id;

  Client(
      {this.id,
      fullName,
      phone,
      address,
      identificationCard,
      email,
      city,
      })
      : super(
            fullName: fullName,
            phone: phone,
            address: address,
            identificationCard: identificationCard,
            email: email,
            city: city,
            );

  Client.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    phone = json['phone'];
    address = json['address'];
    identificationCard = json['identification_card'];
    email = json['email'];
    city = json['city'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['full_name'] = fullName;
    data['phone'] = phone;
    data['address'] = address;
    data['identification_card'] = identificationCard;
    data['email'] = email;
    data['city'] = city;
    return data;
  }
}