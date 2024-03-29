class categoriesResponse {
  List<CategoriesDataList>? data;
  bool? success;
  int? status;

  categoriesResponse({this.data, this.success, this.status});

  categoriesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CategoriesDataList>[];
      json['data'].forEach((v) {
        data!.add(new CategoriesDataList.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = this.success;
    data['status'] = this.status;
    return data;
  }
}

class CategoriesDataList {
  int? id;
  String? name;
  String? banner;
  String? icon;
  int? numberOfChildren;
  Links? links;

  CategoriesDataList(
      {this.id,
        this.name,
        this.banner,
        this.icon,
        this.numberOfChildren,
        this.links});

  CategoriesDataList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    banner = json['banner'];
    icon = json['icon'];
    numberOfChildren = json['number_of_children'];
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['banner'] = this.banner;
    data['icon'] = this.icon;
    data['number_of_children'] = this.numberOfChildren;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class Links {
  String? products;
  String? subCategories;

  Links({this.products, this.subCategories});

  Links.fromJson(Map<String, dynamic> json) {
    products = json['products'];
    subCategories = json['sub_categories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['products'] = this.products;
    data['sub_categories'] = this.subCategories;
    return data;
  }
}