class BreedCreate {
  String? name;
  String? description;
  int? species;


  BreedCreate({this.name, this.description, this.species});

  BreedCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    species = json['species'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['species'] = species;
    return data;
  }
}

class Breed extends BreedCreate {
  int? id;

  Breed({this.id, name, description, species}) : super(name: name, description: description, species: species);

  Breed.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    species = json['species'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['species'] = species;
    return data;
  }
}

