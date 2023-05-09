class SaleCreate {
  double? total;


  SaleCreate({this.total});

  SaleCreate.fromJson(Map<String, dynamic> json) {
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['total'] = total;
    return data;
  }
}

class Sale extends SaleCreate {
  int? id;
  DateTime? date;
  bool? status;

  Sale({this.id, this.date, this.status, total}) : super(total: total);

  Sale.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = DateTime.parse(json['date']);
    status = json['status'];
    total = json['total'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['status'] = status;
    data['total'] = total;
    return data;
  }
}