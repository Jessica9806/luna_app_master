class PetDaycareCreate {
  String? timeEat;
  String? notes;
  String? departureDate;
  String? momentPayment;
  double? price;
  String? formPayment;
  bool? isPaid;
  int? patient;


  PetDaycareCreate(
      {this.timeEat,
      this.notes,
      this.departureDate,
      this.momentPayment,
      this.price,
      this.formPayment,
      this.isPaid,
      this.patient,
     });

  PetDaycareCreate.fromJson(Map<String, dynamic> json) {
    timeEat = json['time_eat'];
    notes = json['notes'];
    departureDate = json['departure_date'];
    momentPayment = json['moment_payment'];
    price = json['price'];
    formPayment = json['form_payment'];
    isPaid = json['is_paid'];
    patient = json['patient'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['time_eat'] = timeEat;
    data['notes'] = notes;
    data['departure_date'] = departureDate;
    data['moment_payment'] = momentPayment;
    data['price'] = price;
    data['form_payment'] = formPayment;
    data['is_paid'] = isPaid;
    data['patient'] = patient;
    return data;
  }
}

class PetDaycare extends PetDaycareCreate {
  int? id;
  DateTime? admissionDate;

  PetDaycare(
      {this.id,
      String? timeEat,
      String? notes,
      String? departureDate,
      String? momentPayment,
      double? price,
      String? formPayment,
      bool? isPaid,
      int? patient,
        this.admissionDate
      })
      : super(
            timeEat: timeEat,
            notes: notes,
            departureDate: departureDate,
            momentPayment: momentPayment,
            price: price,
            formPayment: formPayment,
            isPaid: isPaid,
            patient: patient,
            );

  PetDaycare.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    timeEat = json['time_eat'];
    notes = json['notes'];
    departureDate = json['departure_date'];
    momentPayment = json['moment_payment'];
    price = json['price'];
    formPayment = json['form_payment'];
    isPaid = json['is_paid'];
    patient = json['patient'];
    admissionDate = DateTime.parse(json['admission_date']);
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['time_eat'] = timeEat;
    data['notes'] = notes;
    data['departure_date'] = departureDate;
    data['moment_payment'] = momentPayment;
    data['price'] = price;
    data['form_payment'] = formPayment;
    data['is_paid'] = isPaid;
    data['patient'] = patient;
    data['admission_date'] = admissionDate;
    return data;
  }
}