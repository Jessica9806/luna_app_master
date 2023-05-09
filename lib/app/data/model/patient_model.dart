class PatientCreate {
  String? name;
  DateTime? birthday;
  int? years;
  int? months;
  String? gender;
  String? fur;
  String? foodConsumer;
  bool? isHeat;
  bool? isPedigree;
  bool? isReproductive;
  bool? isCastrated;
  String? pathologies;
  String? photo;
  String? chip;
  double? aggressive;
  int? specie;
  int? breed;
  int? client;


  PatientCreate(
      {this.name,
      this.birthday,
      this.years,
      this.months,
      this.gender,
      this.fur,
      this.foodConsumer,
      this.isHeat,
      this.isPedigree,
      this.isReproductive,
      this.isCastrated,
      this.pathologies,
      this.photo,
      this.chip,
      this.aggressive,
      this.specie,
      this.breed,
      this.client,
      });

  PatientCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    birthday = json['birthday'];
    years = json['years'];
    months = json['months'];
    gender = json['gender'];
    fur = json['fur'];
    foodConsumer = json['food_consumer'];
    isHeat = json['is_heat'];
    isPedigree = json['is_pedigree'];
    isReproductive = json['is_reproductive'];
    isCastrated = json['is_castrated'];
    pathologies = json['pathologies'];
    photo = json['photo'];
    chip = json['chip'];
    aggressive = json['aggressive'];
    specie = json['specie'];
    breed = json['breed'];
    client = json['client'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['birthday'] = birthday;
    data['years'] = years;
    data['months'] = months;
    data['gender'] = gender;
    data['fur'] = fur;
    data['food_consumer'] = foodConsumer;
    data['is_heat'] = isHeat;
    data['is_pedigree'] = isPedigree;
    data['is_reproductive'] = isReproductive;
    data['is_castrated'] = isCastrated;
    data['pathologies'] = pathologies;
    data['photo'] = photo;
    data['chip'] = chip;
    data['aggressive'] = aggressive;
    data['specie'] = specie;
    data['breed'] = breed;
    data['client'] = client;
    return data;
  }
}

class Patient extends PatientCreate {
  int? id;
  bool? isDead;

  Patient(
      {this.id,
      name,
      birthday,
      years,
      months,
      gender,
      fur,
      foodConsumer,
      isHeat,
      isPedigree,
      isReproductive,
      isCastrated,
      pathologies,
      photo,
      chip,
      aggressive,
      specie,
      breed,
      client,
      this.isDead});

  Patient.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    birthday = json['birthday'];
    years = json['years'];
    months = json['months'];
    gender = json['gender'];
    fur = json['fur'];
    foodConsumer = json['food_consumer'];
    isHeat = json['is_heat'];
    isPedigree = json['is_pedigree'];
    isReproductive = json['is_reproductive'];
    isCastrated = json['is_castrated'];
    pathologies = json['pathologies'];
    photo = json['photo'];
    chip = json['chip'];
    aggressive = json['aggressive'];
    specie = json['specie'];
    breed = json['breed'];
    client = json['client'];
    isDead = json['is_dead'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['birthday'] = birthday;
    data['years'] = years;
    data['months'] = months;
    data['gender'] = gender;
    data['fur'] = fur;
    data['food_consumer'] = foodConsumer;
    data['is_heat'] = isHeat;
    data['is_pedigree'] = isPedigree;
    data['is_reproductive'] = isReproductive;
    data['is_castrated'] = isCastrated;
    data['pathologies'] = pathologies;
    data['photo'] = photo;
    data['chip'] = chip;
    data['aggressive'] = aggressive;
    data['specie'] = specie;
    data['breed'] = breed;
    data['client'] = client;
    data['is_dead'] = isDead;
    return data;
  }
}