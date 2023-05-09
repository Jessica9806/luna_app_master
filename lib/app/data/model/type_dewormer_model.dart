class TypeDewormerCreate {
  String? name;
  String? description;

  TypeDewormerCreate({this.name, this.description});

  TypeDewormerCreate.fromJson(Map<String, dynamic> json) {
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

class TypeDewormer extends TypeDewormerCreate {
  int? id;

  TypeDewormer({this.id, name, description})
      : super(name: name, description: description);

  TypeDewormer.fromJson(Map<String, dynamic> json) {
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
