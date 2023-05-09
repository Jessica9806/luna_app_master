class ProductCategoryCreate {
  String? name;
  String? photo;
  String? description;

  ProductCategoryCreate({this.name, this.photo, this.description});

  ProductCategoryCreate.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['photo'] = photo;
    data['description'] = description;
    return data;
  }
}

class ProductCategory extends ProductCategoryCreate {
  int? id;

  ProductCategory({this.id, name, photo, description})
      : super(name: name, photo: photo, description: description);

  ProductCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photo = json['photo'];
    description = json['description'];
  }

  @override
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['photo'] = photo;
    data['description'] = description;
    return data;
  }
}