import 'package:get_storage/get_storage.dart';
import '../../app/data/models/loginResponse.dart';

class Prefs {
  final apiKey = ''.val('apiKey');
  final accessToken = ''.val('accessToken');
  final profileImage = ''.val('profileImage');
  final onlineMode = ''.val('onlineMode');
  final logindata = LoginResponse().val('loginresponse');
/*  final attendance = AttendanceResponse().val('attendance');
  final dynamicModule = DynamicModuleResponse().val('dynamicModule');
  final offlineDataModule = offlineDataResponse().val('offlineModule');*/
  final email = ''.val('email');
  final password = ''.val('password');
  final remember = false.val('rememeber');
  final selectedTab = 1.val('selectedTab');
  final fcmToken = "".val('fcmToken');
  final latestVersion = "1.0.28".val('latestVersion');

  clear() {
    accessToken.val = "";
    logindata.val="" as LoginResponse;
    //attendance.val="" as AttendanceResponse;
    apiKey.val = "";
  }
/*  clearDM(){
    dynamicModule.val.data=null;
    dynamicModule.val.contentlibrary=null;

  }*/
}