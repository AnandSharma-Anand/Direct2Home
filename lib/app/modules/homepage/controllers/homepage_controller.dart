import 'package:direct2home/common/Api/data/api_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../data/models/allProduct.dart';
import '../../../data/models/allSliderResponse.dart';
import '../../../data/models/bannerResponse.dart';
import '../../../data/models/brandResponse.dart';
import '../../../data/models/categoriesfeaturedResponse.dart';

class HomepageController extends GetxController {
  final ApiHelper _apiHelper = Get.find();
  final _body = <String, dynamic>{};
  final _body1 = <String, dynamic>{};
  final _body2 = <String, dynamic>{};
  final _body3 = <String, dynamic>{};
  final _body4 = <String, dynamic>{};

  RxList<CategoryFeaturedDataList> getCategoriyFeaturelist = <CategoryFeaturedDataList>[].obs;
  RxList<BannerDataList> getBannerlist = <BannerDataList>[].obs;
  RxList<SlidetDataList> getSliderlist = <SlidetDataList>[].obs;
  RxList<AllProductDataList> getAllProductlist = <AllProductDataList>[].obs;

  final TextEditingController searchController = TextEditingController();
  RxBool _shimmerStatus  = true.obs;
  bool get shimmerStatus => _shimmerStatus.value;
  set shimmerStatus(bool v) => _shimmerStatus.value = v;

  List<String> bannerImages = [
    'assets/ban1.jpg',
    'assets/ban2.jpg',
    'assets/ban3.jpg',
  ];
  @override
  void onInit() {
    super.onInit();

  }

  @override
  void onReady() {
    super.onReady();
    categoryFeatureApiPost();
    bannerListApiPost();
    allProductListApiPost();
    getSliderListApiPost();

  }

  @override
  void onClose() {
    super.onClose();
  }
  void categoryFeatureApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Kcategoriesfeatured).then((value) {
      categoriesfeaturedResponse responseModel=categoriesfeaturedResponse.fromJson(value);
print(responseModel.data!.length);
getCategoriyFeaturelist.addAll(responseModel.data!);
getCategoriyFeaturelist.refresh();
    },onError: (error,stackTrace){print(error);print(stackTrace
    );});

  }

  void bannerListApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Kbanners).then((value) {
      bannerResponse bannerModel=bannerResponse.fromJson(value);
      print("banner : ${bannerModel.data!.length}");
      getBannerlist.addAll(bannerModel.data!);
      getBannerlist.refresh();
      shimmerStatus=false;
    },
        onError: (error,stackTrace){
      print(error);
      print(stackTrace);
    });

  }
  void getSliderListApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Ksliders).then((value) {
      AllSliderResponse sliderModel=AllSliderResponse.fromJson(value);
      print("slider : ${sliderModel.data!.length}");
      getSliderlist.addAll(sliderModel.data!);
      getSliderlist.refresh();
      shimmerStatus=false;
    },
        onError: (error,stackTrace){
      print(error);
      print(stackTrace);
    });

  }
  void allProductListApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  KproductbyID,queryParamerter: "?page=1").then((value) {
      AllProductResponse allProductModel=AllProductResponse.fromJson(value);
      print("banner : ${allProductModel.data!.length}");
      getAllProductlist.addAll(allProductModel.data!);
      getAllProductlist.refresh();
      shimmerStatus=false;
    },onError: (error,stackTrace){print(error);print(stackTrace
    );});

  }



}
