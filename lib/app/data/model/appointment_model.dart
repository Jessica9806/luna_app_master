class AppointmentCreate {
  String? phone;
  String? email;
  String? date;
  String? hour;
  String? reason;
  String? initerNotes;
  bool? activateReminder;
  int? typeAppointment;
  int? patient;
  int? client;

  AppointmentCreate({
    this.phone,
    this.email,
    this.date,
    this.hour,
    this.reason,
    this.initerNotes,
    this.activateReminder,
    this.typeAppointment,
    this.patient,
    this.client,
  });

  AppointmentCreate.fromJson(Map<String, dynamic> json) {
    phone = json['phone'];
    email = json['email'];
    date = json['date'];
    hour = json['hour'];
    reason = json['reason'];
    initerNotes = json['initer_notes'];
    activateReminder = json['activate_reminder'];
    typeAppointment = json['type_appointment'];
    patient = json['patient'];
    client = json['client'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['phone'] = phone;
    data['email'] = email;
    data['date'] = date;
    data['hour'] = hour;
    data['reason'] = reason;
    data['initer_notes'] = initerNotes;
    data['activate_reminder'] = activateReminder;
    data['type_appointment'] = typeAppointment;
    data['patient'] = patient;
    data['client'] = client;
    return data;
  }
}


class Appointment extends AppointmentCreate {

  int? id;
  int? user;
  DateTime? createdAt;

  Appointment(
      {
        this.id,
        this.createdAt,
        this.user,
        String? phone,
        String? email,
        String? date,
        String? hour,
        String? reason,
        String? initerNotes,
        bool? activateReminder,
        int? typeAppointment,
        int? patient,
        int? client,
      }) : super(
        phone: phone,
        email: email,
        date: date,
        hour: hour,
        reason: reason,
        initerNotes: initerNotes,
        activateReminder: activateReminder,
        typeAppointment: typeAppointment,
        patient: patient,
        client: client,
      );

  Appointment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    createdAt = json['created_at'];
  }

  @override
  Map<String, dynamic> toJson() {

    final data = <String, dynamic>{};
    data['id'] = id;
    data['user'] = user;
    data['created_at'] = createdAt;
    return data;
  }
}


