class TypeVaccineCreate {
  String? name;
  String? description;

  TypeVaccineCreate({this.name, this.description});

  TypeVaccineCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

class TypeVaccine extends TypeVaccineCreate {
  int? id;

  TypeVaccine({this.id, name, description})
      : super(name: name, description: description);

  TypeVaccine.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

