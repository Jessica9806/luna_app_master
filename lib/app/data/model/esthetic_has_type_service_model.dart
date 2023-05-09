class EstheticHasTypeServiceCreate {
  int? esthetic;
  int? typeService;


  EstheticHasTypeServiceCreate({this.esthetic, this.typeService});

  EstheticHasTypeServiceCreate.fromJson(Map<String, dynamic> json) {
    esthetic = json['esthetic'];
    typeService = json['type_service'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['esthetic'] = esthetic;
    data['type_service'] = typeService;
    return data;
  }
}

class EstheticHasTypeService extends EstheticHasTypeServiceCreate {
  int? id;

  EstheticHasTypeService({this.id, esthetic, typeService}) : super(esthetic: esthetic, typeService: typeService);

  EstheticHasTypeService.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    esthetic = json['esthetic'];
    typeService = json['type_service'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['esthetic'] = esthetic;
    data['type_service'] = typeService;
    return data;
  }
}
