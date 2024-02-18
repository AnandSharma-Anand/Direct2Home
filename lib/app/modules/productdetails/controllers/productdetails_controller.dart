import 'package:direct2home/app/modules/cart/views/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/Api/data/all_api_url.dart';
import '../../../../common/Api/data/api_helper_imp.dart';
import '../../../data/models/productByCategoriesResponse.dart';
import '../../../data/models/productDetailsResponse.dart';
import '../../../data/models/relatedProductResponse.dart';
import '../../../data/models/topSellerProductResponse.dart';

class ProductdetailsController extends GetxController {
  //TODO: Implement ProductdetailsController
  RxList<ProductDetailsData> getproductbyIdList = <ProductDetailsData>[].obs;
  RxList<RelatedProductData> getRelatedproductbyIdList = <RelatedProductData>[].obs;
  RxList<TopSellerProductData> getTopSellerproductbyIdList = <TopSellerProductData>[].obs;
  RxInt quantity = 1.obs;
  final count = 0.obs;
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
    relatedProductApiPost();
    topSellerProductApiPost();
  }

  @override
  void onClose() {
    super.onClose();
  }
  void categoryProductApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  KproductbyID,queryParamerter: "/${Get.arguments}").then((value) {
      ProductDetailsResponse responseModel=ProductDetailsResponse.fromJson(value);
      print(responseModel.data!.length);
      getproductbyIdList.addAll(responseModel.data!);
      getproductbyIdList.refresh();
      shimmerStatus=false;
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }
  void relatedProductApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  KrelatedProduct,queryParamerter: "/${Get.arguments}").then((value) {
      RelatedProductResponse relatedProduct=RelatedProductResponse.fromJson(value);
      print(relatedProduct.data!.length);
      getRelatedproductbyIdList.addAll(relatedProduct.data!);
      getRelatedproductbyIdList.refresh();
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }
  void topSellerProductApiPost() {
    ApiHelperImpl().getHitAPI(Get.overlayContext!,  KtopSellerProduct,queryParamerter: "/${Get.arguments}").then((value) {
      TopsellerProductResponse topProduct=TopsellerProductResponse.fromJson(value);
      print(topProduct.data!.length);
      getTopSellerproductbyIdList.addAll(topProduct.data!);
      getTopSellerproductbyIdList.refresh();
    },onError: (error,stackTrace){print(error);
    print(stackTrace);
    });

  }

  OutlinedButton btnAddToCart(BuildContext context, product) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            animationDuration: const Duration(seconds: 5),
            backgroundColor: product.color,
            side: const BorderSide(width: 1, color: Colors.white),
            padding: const EdgeInsets.all(10)),
        // onPressed: () => Get.toNamed(() );
        onPressed: () {  },
        child: const Text(
          'ADD TO CART',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
  Container showImageView(BuildContext context, product) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = (screenSize.height);
    return Container(
      padding: const EdgeInsets.all(20),
      color: product.color,
      child: Image.asset(
        product.image,
        alignment: Alignment.centerRight,
        height: screenHeight * 50,
      ),
    );
  }
  Row buildRowPriceRating(product) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Price: \$${product.price}",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
        //showStarRating(3.0, Colors.white)
      ],
    );
  }
}
