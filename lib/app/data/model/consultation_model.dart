class ConsultationCreate {
  String? date;
  String? reasonVisit;
  String? anommesis;
  String? physicalExam;
  String? diagnosis;
  String? pathology;
  String? treatment;
  String? recipe;
  double? price;
  bool? sendWhatsapp;
  bool? sendEmail;
  bool? sendSms;
  String? formPayment;
  bool? isPaid;
  int? vaccine;
  int? dewormer;
  int? patient;


  ConsultationCreate(
      {this.date,
      this.reasonVisit,
      this.anommesis,
      this.physicalExam,
      this.diagnosis,
      this.pathology,
      this.treatment,
      this.recipe,
      this.price,
      this.sendWhatsapp,
      this.sendEmail,
      this.sendSms,
      this.formPayment,
      this.isPaid,
      this.vaccine,
      this.dewormer,
      this.patient,
      });

  ConsultationCreate.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    reasonVisit = json['reason_visit'];
    anommesis = json['anommesis'];
    physicalExam = json['physical_exam'];
    diagnosis = json['diagnosis'];
    pathology = json['pathology'];
    treatment = json['treatment'];
    recipe = json['recipe'];
    price = json['price'];
    sendWhatsapp = json['send_whatsapp'];
    sendEmail = json['send_email'];
    sendSms = json['send_sms'];
    formPayment = json['form_payment'];
    isPaid = json['is_paid'];
    vaccine = json['vaccine'];
    dewormer = json['dewormer'];
    patient = json['patient'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['date'] = date;
    data['reason_visit'] = reasonVisit;
    data['anommesis'] = anommesis;
    data['physical_exam'] = physicalExam;
    data['diagnosis'] = diagnosis;
    data['pathology'] = pathology;
    data['treatment'] = treatment;
    data['recipe'] = recipe;
    data['price'] = price;
    data['send_whatsapp'] = sendWhatsapp;
    data['send_email'] = sendEmail;
    data['send_sms'] = sendSms;
    data['form_payment'] = formPayment;
    data['is_paid'] = isPaid;
    data['vaccine'] = vaccine;
    data['dewormer'] = dewormer;
    data['patient'] = patient;
    return data;
  }
}

class Consultation extends ConsultationCreate {
  int? id;
  int? user;
  DateTime? createdAt;

  Consultation(
      {this.id,
      this.createdAt,
      String? date,
      String? reasonVisit,
      String? anommesis,
      String? physicalExam,
      String? diagnosis,
      String? pathology,
      String? treatment,
      String? recipe,
      double? price,
      bool? sendWhatsapp,
      bool? sendEmail,
      bool? sendSms,
      String? formPayment,
      bool? isPaid,
      this.user,
      int? vaccine,
      int? dewormer,
      int? patient,
      })
      : super(
            date: date,
            reasonVisit: reasonVisit,
            anommesis: anommesis,
            physicalExam: physicalExam,
            diagnosis: diagnosis,
            pathology: pathology,
            treatment: treatment,
            recipe: recipe,
            price: price,
            sendWhatsapp: sendWhatsapp,
            sendEmail: sendEmail,
            sendSms: sendSms,
            formPayment: formPayment,
            isPaid: isPaid,
            vaccine: vaccine,
            dewormer: dewormer,
            patient: patient,
            );

  Consultation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    date = json['date'];
    reasonVisit = json['reason_visit'];
    anommesis = json['anommesis'];
    physicalExam = json['physical_exam'];
    diagnosis = json['diagnosis'];
    pathology = json['pathology'];
    treatment = json['treatment'];
    recipe = json['recipe'];
    price = json['price'];
    sendWhatsapp = json['send_whatsapp'];
    sendEmail = json['send_email'];
    sendSms = json['send_sms'];
    formPayment = json['form_payment'];
    isPaid = json['is_paid'];
    user = json['user'];
    vaccine = json['vaccine'];
    dewormer = json['dewormer'];
    patient = json['patient'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['date'] = date;
    data['reason_visit'] = reasonVisit;
    data['anommesis'] = anommesis;
    data['physical_exam'] = physicalExam;
    data['diagnosis'] = diagnosis;
    data['pathology'] = pathology;
    data['treatment'] = treatment;
    data['recipe'] = recipe;
    data['price'] = price;
    data['send_whatsapp'] = sendWhatsapp;
    data['send_email'] = sendEmail;
    data['send_sms'] = sendSms;
    data['form_payment'] = formPayment;
    data['is_paid'] = isPaid;
    data['user'] = user;
    data['vaccine'] = vaccine;
    data['dewormer'] = dewormer;
    data['patient'] = patient;
    return data;
  }
}
