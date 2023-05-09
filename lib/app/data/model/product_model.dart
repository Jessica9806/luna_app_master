class ProductCreate {
  String? name;
  String? internalCode;
  String? barcode;
  double? price;
  int? stock;
  int? minimunAmount;
  String? dueDate;
  String? location;
  int? productCategory;
  int? provider;


  ProductCreate(
      {this.name,
      this.internalCode,
      this.barcode,
      this.price,
      this.stock,
      this.minimunAmount,
      this.dueDate,
      this.location,
      this.productCategory,
      this.provider,
     });

  ProductCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    internalCode = json['internal_code'];
    barcode = json['barcode'];
    price = json['price'];
    stock = json['stock'];
    minimunAmount = json['minimun_amount'];
    dueDate = json['due_date'];
    location = json['location'];
    productCategory = json['product_category'];
    provider = json['provider'];

  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['internal_code'] = internalCode;
    data['barcode'] = barcode;
    data['price'] = price;
    data['stock'] = stock;
    data['minimun_amount'] = minimunAmount;
    data['due_date'] = dueDate;
    data['location'] = location;
    data['product_category'] = productCategory;
    data['provider'] = provider;
    return data;
  }
}

class Product extends ProductCreate {
  int? id;

  Product(
      {this.id,
      name,
      internalCode,
      barcode,
      price,
      stock,
      minimunAmount,
      dueDate,
      location,
      productCategory,
      provider, int? minimumAmount,
     })
      : super(
            name: name,
            internalCode: internalCode,
            barcode: barcode,
            price: price,
            stock: stock,
            minimunAmount: minimunAmount,
            dueDate: dueDate,
            location: location,
            productCategory: productCategory,
            provider: provider,
           );

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    internalCode = json['internal_code'];
    barcode = json['barcode'];
    price = json['price'];
    stock = json['stock'];
    minimunAmount = json['minimun_amount'];
    dueDate = json['due_date'];
    location = json['location'];
    productCategory = json['product_category'];
    provider = json['provider'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['internal_code'] = internalCode;
    data['barcode'] = barcode;
    data['price'] = price;
    data['stock'] = stock;
    data['minimun_amount'] = minimunAmount;
    data['due_date'] = dueDate;
    data['location'] = location;
    data['product_category'] = productCategory;
    data['provider'] = provider;
    return data;
  }
}