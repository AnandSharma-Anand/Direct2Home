class AllSliderResponse {
  List<SlidetDataList>? data;
  bool? success;
  int? status;

  AllSliderResponse({this.data, this.success, this.status});

  AllSliderResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <SlidetDataList>[];
      json['data'].forEach((v) {
        data!.add(new SlidetDataList.fromJson(v));
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

class SlidetDataList {
  String? photo;

  SlidetDataList({this.photo});

  SlidetDataList.fromJson(Map<String, dynamic> json) {
    photo = json['photo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['photo'] = this.photo;
    return data;
  }
}
