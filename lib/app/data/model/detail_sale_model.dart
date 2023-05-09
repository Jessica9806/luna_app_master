class DetailSaleCreate {
  int? amount;
  double? price;
  double? tax;
  double? subtotal;
  double? discount;
  int? sale;
  int? product;


  DetailSaleCreate(
      {this.amount,
      this.price,
      this.tax,
      this.subtotal,
      this.discount,
      this.sale,
      this.product,
      });

  DetailSaleCreate.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    price = json['price'];
    tax = json['tax'];
    subtotal = json['subtotal'];
    discount = json['discount'];
    sale = json['sale'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['amount'] = amount;
    data['price'] = price;
    data['tax'] = tax;
    data['subtotal'] = subtotal;
    data['discount'] = discount;
    data['sale'] = sale;
    data['product'] = product;
    return data;
  }
}

class DetailSale extends DetailSaleCreate {
  int? id;

  DetailSale(
      {this.id,
      amount,
      price,
      tax,
      subtotal,
      discount,
      sale,
      product,
      })
      : super(
            amount: amount,
            price: price,
            tax: tax,
            subtotal: subtotal,
            discount: discount,
            sale: sale,
            product: product,
            );

  DetailSale.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    price = json['price'];
    tax = json['tax'];
    subtotal = json['subtotal'];
    discount = json['discount'];
    sale = json['sale'];
    product = json['product'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['amount'] = amount;
    data['price'] = price;
    data['tax'] = tax;
    data['subtotal'] = subtotal;
    data['discount'] = discount;
    data['sale'] = sale;
    data['product'] = product;
    return data;
  }
}
