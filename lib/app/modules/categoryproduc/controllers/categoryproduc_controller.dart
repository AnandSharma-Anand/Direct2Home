import 'package:direct2home/common/Api/data/api_helper_imp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../data/models/productByCategoriesResponse.dart';

class CategoryproducController extends GetxController {

  final TextEditingController searchController = TextEditingController();
  RxList<ProductByCategoriesDataList> getProduct = <ProductByCategoriesDataList>[].obs;

  RxBool _shimmerStatus  = true.obs;
  bool get shimmerStatus => _shimmerStatus.value;
  set shimmerStatus(bool v) => _shimmerStatus.value = v;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    categoryProductApiPost();
  }


  void categoryProductApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  Kproductbycategories,queryParamerter: "/${Get.arguments}").then((value) {
      ProductByCategoriesResponse responseModel=ProductByCategoriesResponse.fromJson(value);
      print(responseModel.data!.length);
      getProduct.addAll(responseModel.data!);
      getProduct.refresh();
      shimmerStatus=false;
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }
}
