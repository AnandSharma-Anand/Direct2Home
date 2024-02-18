class bannerResponse {
  List<BannerDataList>? data;
  bool? success;
  int? status;

  bannerResponse({this.data, this.success, this.status});

  bannerResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <BannerDataList>[];
      json['data'].forEach((v) {
        data!.add(new BannerDataList.fromJson(v));
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

class BannerDataList {
  String? photo;
  String? url;
  int? position;

  BannerDataList({this.photo, this.url, this.position});

  BannerDataList.fromJson(Map<String, dynamic> json) {
    photo = json['photo'];
    url = json['url'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['photo'] = this.photo;
    data['url'] = this.url;
    data['position'] = this.position;
    return data;
  }
}