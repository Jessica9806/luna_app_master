class EstheticCreate {
  String? date;
  String? hour;
  bool? activateNotification;
  double? price;
  String? formPayment;
  bool? isPaid;
  int? patient;


  EstheticCreate(
      {this.date,
      this.hour,
      this.activateNotification,
      this.price,
      this.formPayment,
      this.isPaid,
      this.patient,
      });

  EstheticCreate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    hour = json['hour'];
    activateNotification = json['activate_notification'];
    price = json['price'];
    formPayment = json['form_payment'];
    isPaid = json['is_paid'];
    patient = json['patient'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['hour'] = hour;
    data['activate_notification'] = activateNotification;
    data['price'] = price;
    data['form_payment'] = formPayment;
    data['is_paid'] = isPaid;
    data['patient'] = patient;
    return data;
  }
}

class Esthetic extends EstheticCreate {
  int? id;


  Esthetic(
      {this.id,
      String? date,
      String? hour,
      bool? activateNotification,
      double? price,
      String? formPayment,
      bool? isPaid,
      int? patient,
      })
      : super(
            date: date,
            hour: hour,
            activateNotification: activateNotification,
            price: price,
            formPayment: formPayment,
            isPaid: isPaid,
            patient: patient,
            );

  Esthetic.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    hour = json['hour'];
    activateNotification = json['activate_notification'];
    price = json['price'];
    formPayment = json['form_payment'];
    isPaid = json['is_paid'];
    patient = json['patient'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['hour'] = hour;
    data['activate_notification'] = activateNotification;
    data['price'] = price;
    data['form_payment'] = formPayment;
    data['is_paid'] = isPaid;
    data['patient'] = patient;
    return data;
  }
}
