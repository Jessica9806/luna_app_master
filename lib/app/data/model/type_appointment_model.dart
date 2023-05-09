class TypeAppointmentCreate {
  String? name;
  String? description;

  TypeAppointmentCreate({this.name, this.description});

  TypeAppointmentCreate.fromJson(Map<String, dynamic> json) {
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

class TypeAppointment extends TypeAppointmentCreate {
  int? id;

  TypeAppointment({this.id, name, description})
      : super(name: name, description: description);

  TypeAppointment.fromJson(Map<String, dynamic> json) {
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
