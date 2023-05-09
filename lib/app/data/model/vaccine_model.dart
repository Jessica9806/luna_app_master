class VaccineCreate {
  String? date;
  String? lot;
  bool? applyVaccine;
  String? expiration;
  double? price;
  double? weight;
  bool? previousVaccinations;
  int? typeVaccine;

  VaccineCreate(
      {this.date,
      this.lot,
      this.applyVaccine,
      this.expiration,
      this.price,
      this.weight,
      this.previousVaccinations,
      this.typeVaccine,
     });

  VaccineCreate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    lot = json['lot'];
    applyVaccine = json['apply_vaccine'];
    expiration = json['expiration'];
    price = json['price'];
    weight = json['weight'];
    previousVaccinations = json['previous_vaccinations'];
    typeVaccine = json['type_vaccine'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['lot'] = lot;
    data['apply_vaccine'] = applyVaccine;
    data['expiration'] = expiration;
    data['price'] = price;
    data['weight'] = weight;
    data['previous_vaccinations'] = previousVaccinations;
    data['type_vaccine'] = typeVaccine;
    return data;
  }
}

class Vaccine extends VaccineCreate {
  int? id;
  DateTime? createdAt;

  Vaccine(
      {this.id,
      this.createdAt,
      date,
      lot,
      applyVaccine,
      expiration,
      price,
      weight,
      previousVaccinations,
      typeVaccine,
      })
      : super(
            date: date,
            lot: lot,
            applyVaccine: applyVaccine,
            expiration: expiration,
            price: price,
            weight: weight,
            previousVaccinations: previousVaccinations,
            typeVaccine: typeVaccine,
            );

  Vaccine.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = DateTime.parse(json['created_at']);
    date = json['date'];
    lot = json['lot'];
    applyVaccine = json['apply_vaccine'];
    expiration = json['expiration'];
    price = json['price'];
    weight = json['weight'];
    previousVaccinations = json['previous_vaccinations'];
    typeVaccine = json['type_vaccine'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['date'] = date;
    data['lot'] = lot;
    data['apply_vaccine'] = applyVaccine;
    data['expiration'] = expiration;
    data['price'] = price;
    data['weight'] = weight;
    data['previous_vaccinations'] = previousVaccinations;
    data['type_vaccine'] = typeVaccine;
    return data;
  }
}