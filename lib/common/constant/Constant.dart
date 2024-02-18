import 'package:flutter/services.dart';

class Constants {
  const Constants._();
// BASE URL only working office network
  //static const String BASE_URL = 'http://10.0.8.245/mobileapp/api/v3/';
// static const String BASE_URL = 'http://10.0.8.245/erplive/api/v2/';
// static const String BASE_URL = 'http://10.0.8.245/erpbeta/api/';
  static const String CHATBOAT_BASE_URL = 'https://chatbot.aasoka.com/';
  // todo=====* Note: E-Vox Base Url *======
  static const String E_VOX_BASE_URL = 'https://ell.adurox.com/mbd-api/';
  // todo=====* Note: base Url Of Ask Question *======
  static const String ASK_QUESTION_BASE_URL = 'http://10.0.8.246:5000/';
// todo=====* Note: before deploy need to update latest version *======
  static const String LATEST_VERSION = '1.0.28';
// todo=====* BASE URL Working all Networks *======
  static const String BASE_URL = 'https://direct2home.shop/admin/api/v2/';
 //static const String BASE_URL = 'http://mobileapi.aasoka.com/api/v3/';
//  static const String BASE_URL = 'https://alts.aasoka.com/api/v2/';
//  static const String BASE_URL = 'https://alts.aasoka.com/api/';

  //call method channel only android for native code
  static const platformMethodChannel = MethodChannel('com.erp_school/erpnative');
  static const String nativeMessage = '';
  static const timeout = Duration(minutes: 8);
  static const String TOKEN = 'authToken';
  static const String SUPPORTBOARDTOKEN = '8b61e12454d10ee54868e9fbd56111761a786b67';
  static const String USER_DATA='userData';
  static const String DYAMICMODULE_Response='dynamicmoduleResponse';
  static const String OFFLINEDATA_RESPONSE='offlineDataResponse';
  static const String USER_DATA_LIST='userDataList';
  static const String PARENT_DATA_LIST='parentDataList';
  static const String EMAIL='email';

  static const String PASSWORD='password';
  static const String REMEMBER_ME='rememberme';
  static const String USER_PROFILE='userProfile';
}
