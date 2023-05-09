class HospitalizationCreate {
  String? diagnosis;
  String? aspect;
  double? weight;
  String? feeding;
  String? observation;
  String? otherIndications;
  String? parameters;


  HospitalizationCreate(
      {this.diagnosis,
      this.aspect,
      this.weight,
      this.feeding,
      this.observation,
      this.otherIndications,
      this.parameters,
 });

  HospitalizationCreate.fromJson(Map<String, dynamic> json) {
    diagnosis = json['diagnosis'];
    aspect = json['aspect'];
    weight = json['weight'];
    feeding = json['feeding'];
    observation = json['observation'];
    otherIndications = json['other_indications'];
    parameters = json['parameters'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['diagnosis'] = diagnosis;
    data['aspect'] = aspect;
    data['weight'] = weight;
    data['feeding'] = feeding;
    data['observation'] = observation;
    data['other_indications'] = otherIndications;
    data['parameters'] = parameters;
    return data;
  }
}

class Hospitalization extends HospitalizationCreate {
  int? id;
  DateTime? data;

  Hospitalization(
      {this.id,
      diagnosis,
      aspect,
      weight,
      feeding,
      observation,
      otherIndications,
      parameters,
      this.data
      })
      : super(
            diagnosis: diagnosis,
            aspect: aspect,
            weight: weight,
            feeding: feeding,
            observation: observation,
            otherIndications: otherIndications,
            parameters: parameters,
            );

  Hospitalization.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    diagnosis = json['diagnosis'];
    aspect = json['aspect'];
    weight = json['weight'];
    feeding = json['feeding'];
    observation = json['observation'];
    otherIndications = json['other_indications'];
    parameters = json['parameters'];
    data = DateTime.parse(json['data']);
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['diagnosis'] = diagnosis;
    data['aspect'] = aspect;
    data['weight'] = weight;
    data['feeding'] = feeding;
    data['observation'] = observation;
    data['other_indications'] = otherIndications;
    data['parameters'] = parameters;
    data['data'] = this.data.toString();
    return data;
  }
}
