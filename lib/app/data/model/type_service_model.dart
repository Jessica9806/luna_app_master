class TypeServiceCreate {
  String? name;
  String? description;

  TypeServiceCreate({this.name, this.description});

  TypeServiceCreate.fromJson(Map<String, dynamic> json) {
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

class TypeService extends TypeServiceCreate {
  int? id;

  TypeService({this.id, name, description})
      : super(name: name, description: description);

  TypeService.fromJson(Map<String, dynamic> json) {
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