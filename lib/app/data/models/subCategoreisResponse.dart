class SubCategoriesResponse {
  List<SubCategoriesListData>? data;
  bool? success;
  int? status;

  SubCategoriesResponse({this.data, this.success, this.status});

  SubCategoriesResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <SubCategoriesListData>[];
      json['data'].forEach((v) {
        data!.add(SubCategoriesListData.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['status'] = status;
    return data;
  }
}

class SubCategoriesListData {
  int? id;
  String? name;
  String? banner;
  String? icon;
  int? numberOfChildren;
  Links? links;

  SubCategoriesListData(
      {this.id,
        this.name,
        this.banner,
        this.icon,
        this.numberOfChildren,
        this.links});

  SubCategoriesListData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    banner = json['banner'];
    icon = json['icon'];
    numberOfChildren = json['number_of_children'];
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['banner'] = banner;
    data['icon'] = icon;
    data['number_of_children'] = numberOfChildren;
    if (links != null) {
      data['links'] = links!.toJson();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['products'] = products;
    data['sub_categories'] = subCategories;
    return data;
  }
}
