class DetailPurchaseCreate {
  int? amount;
  double? price;
  double? subtotal;
  double? tax;
  double? profitPercentage;
  int? purchase;
  int? product;


  DetailPurchaseCreate(
      {this.amount,
      this.price,
      this.subtotal,
      this.tax,
      this.profitPercentage,
      this.purchase,
      this.product,
      });

  DetailPurchaseCreate.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    price = json['price'];
    subtotal = json['subtotal'];
    tax = json['tax'];
    profitPercentage = json['profit_percentage'];
    purchase = json['purchase'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['amount'] = amount;
    data['price'] = price;
    data['subtotal'] = subtotal;
    data['tax'] = tax;
    data['profit_percentage'] = profitPercentage;
    data['purchase'] = purchase;
    data['product'] = product;
    return data;
  }
}

class DetailPurchase extends DetailPurchaseCreate {
  int? id;

  DetailPurchase(
      {this.id,
      amount,
      price,
      subtotal,
      tax,
      profitPercentage,
      purchase,
      product,
      })
      : super(
            amount: amount,
            price: price,
            subtotal: subtotal,
            tax: tax,
            profitPercentage: profitPercentage,
            purchase: purchase,
            product: product,
            );

  DetailPurchase.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    price = json['price'];
    subtotal = json['subtotal'];
    tax = json['tax'];
    profitPercentage = json['profit_percentage'];
    purchase = json['purchase'];
    product = json['product'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['amount'] = amount;
    data['price'] = price;
    data['subtotal'] = subtotal;
    data['tax'] = tax;
    data['profit_percentage'] = profitPercentage;
    data['purchase'] = purchase;
    data['product'] = product;
    return data;
  }
}
