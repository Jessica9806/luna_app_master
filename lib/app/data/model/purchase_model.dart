class PurchaseCreate {
  double? total;
  String? image;


  PurchaseCreate({this.total, this.image});

  PurchaseCreate.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    image = json['image'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['total'] = total;
    data['image'] = image;
    return data;
  }
}

class Purchase extends PurchaseCreate {
  int? id;
  DateTime? date;
  bool? status;

  Purchase({this.id, this.date, this.status, total, image}) : super(total: total, image: image);

  Purchase.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = DateTime.parse(json['date']);
    status = json['status'];
    total = json['total'];
    image = json['image'];

  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['status'] = status;
    data['total'] = total;
    data['image'] = image;
    return data;
  }
}
