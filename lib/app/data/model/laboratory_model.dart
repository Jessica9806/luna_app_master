class LaboratoryCreate {
  String? name;
  String? description;


  LaboratoryCreate({this.name, this.description});

  LaboratoryCreate.fromJson(Map<String, dynamic> json) {
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

class Laboratory extends LaboratoryCreate {
  int? id;

  Laboratory({this.id, name, description}) : super(name: name, description: description);

  Laboratory.fromJson(Map<String, dynamic> json) {
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
