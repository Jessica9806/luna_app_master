class SpeciesCreate {
  String? name;
  String? description;


  SpeciesCreate({this.name, this.description});

  SpeciesCreate.fromJson(Map<String, dynamic> json) {
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

class Species extends SpeciesCreate {
  int? id;

  Species({this.id, name, description}) : super(name: name, description: description);

  Species.fromJson(Map<String, dynamic> json) {
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