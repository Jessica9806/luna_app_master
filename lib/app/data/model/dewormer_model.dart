class DewormerCreate {
  String? date;
  bool? applyDeworner;
  String? lot;
  String? expiration;
  double? price;
  double? weight;
  int? typeDewormer;


  DewormerCreate(
      {this.date,
      this.applyDeworner,
      this.lot,
      this.expiration,
      this.price,
      this.weight,
      this.typeDewormer,
      });

  DewormerCreate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    applyDeworner = json['apply_deworner'];
    lot = json['lot'];
    expiration = json['expiration'];
    price = json['price'];
    weight = json['weight'];
    typeDewormer = json['type_dewormer'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['apply_deworner'] = applyDeworner;
    data['lot'] = lot;
    data['expiration'] = expiration;
    data['price'] = price;
    data['weight'] = weight;
    data['type_dewormer'] = typeDewormer;
    return data;
  }
}

class Dewormer extends DewormerCreate {
  int? id;

  Dewormer(
      {this.id,
      date,
      applyDeworner,
      lot,
      expiration,
      price,
      weight,
      typeDewormer,
      })
      : super(
            date: date,
            applyDeworner: applyDeworner,
            lot: lot,
            expiration: expiration,
            price: price,
            weight: weight,
            typeDewormer: typeDewormer,
            );

  Dewormer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    applyDeworner = json['apply_deworner'];
    lot = json['lot'];
    expiration = json['expiration'];
    price = json['price'];
    weight = json['weight'];
    typeDewormer = json['type_dewormer'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['apply_deworner'] = applyDeworner;
    data['lot'] = lot;
    data['expiration'] = expiration;
    data['price'] = price;
    data['weight'] = weight;
    data['type_dewormer'] = typeDewormer;
    return data;
  }
}