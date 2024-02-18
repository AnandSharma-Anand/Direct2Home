import 'dart:convert';

import 'package:direct2home/app/data/models/categoriesfeaturedResponse.dart';
import 'package:direct2home/common/constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/prefers.dart';
import 'all_api_url.dart';
import 'package:http/http.dart' as http;

import 'api_helper.dart';

class ApiHelperImpl extends GetConnect implements ApiHelper {
  @override
  void onInit() {
    httpClient.baseUrl = Constants.BASE_URL;
    httpClient.timeout = Constants.timeout;
    addRequestModifier();
    httpClient.addResponseModifier((request, response) {
      printInfo(
        info: 'Status Code: ${response.statusCode}\n'
            'Data: ${response.bodyString?.toString() ?? ''}',
      );
      return response;
    });
  }

  void addRequestModifier() {
    httpClient.addRequestModifier<dynamic>(
      (request) {
        //request.headers['Authorization'] = "Bearer "+Get.find<Prefs>().accessToken.val;

        printInfo(
          info: 'REQUEST ║ ${request.method.toUpperCase()}\n'
              'url: ${request.url}\n'
              'Headers: ${request.headers}\n'
              'Body: ${request.files?.toString() ?? ''}\n',
        );

        return request;
      },
    );
  }

  @override
  Future<Response<categoriesfeaturedResponse>>
      categoriesfeaturedListApi() async {
    // TODO: implement Section
    Response<categoriesfeaturedResponse> reslt = await get(
      Kcategoriesfeatured,
      decoder: (v) => categoriesfeaturedResponse.fromJson(v),
    );
    return reslt;
  }

  Future<dynamic> getHitAPI(BuildContext context, String funcName,
      {String? queryParamerter}) async {
    /* bool result = await InternetConnectionChecker().hasConnection;
    if (result != true) {
      return Future.error("Please Check Your Internet Connection");
    }*/

    var response = await http.get(
      Uri.parse("${Constants.BASE_URL}$funcName${queryParamerter ?? ""}"),
    );
    print("${Constants.BASE_URL}$funcName${queryParamerter ?? ""}");
    print(response.body);
    if (response.statusCode == 200) {
      Map responseMap = jsonDecode(response.body);
      if (responseMap["status"].toString().toUpperCase() ==
          "200".toUpperCase()) {
        return Future.value(responseMap);
      } else {
        return Future.error(responseMap["Message"]);
      }
    } else {
      return Future.error(
          "There are some Technical Problem\n Error Code : ${response.statusCode}");
    }
  }

  Future<dynamic> postHitAPI(
      BuildContext context, String funcName, Map requestMap,
      {String? queryParamerter}) async {
    /* bool result = await InternetConnectionChecker().hasConnection;
    if (result != true) {
      return Future.error("Please Check Your Internet Connection");
    }*/

    var response = await http.post(
        Uri.parse("${Constants.BASE_URL}$funcName${queryParamerter ?? ""}"),
        body: requestMap);
    print("${Constants.BASE_URL}$funcName${queryParamerter ?? ""}");
    print(response.body);
    if (response.statusCode == 200) {
      Map responseMap = jsonDecode(response.body);
      if (responseMap["status"].toString().toUpperCase() ==
          "200".toUpperCase()) {
        return Future.value(responseMap);
      } else {
        return Future.error(responseMap["Message"]);
      }
    } else {
      return Future.error(
          "There are some Technical Problem\n Error Code : ${response.statusCode}");
    }
  }
}
