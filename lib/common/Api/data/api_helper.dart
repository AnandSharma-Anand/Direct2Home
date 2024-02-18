import 'package:direct2home/app/data/models/categoriesfeaturedResponse.dart';
import 'package:get/get.dart';
export 'package:direct2home/common/api/utils/extension.dart';
export 'package:direct2home/common/api/utils/utils.dart';

abstract class ApiHelper {
  Future<Response<categoriesfeaturedResponse>> categoriesfeaturedListApi();

}