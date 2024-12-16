import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';
import 'package:the_good_doctor/core/shared_pref/shared_pref.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

 static Dio? dio;

 static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      addDioInterceptor();
      addHeaders();
      return dio!;
    } else {
      return dio!;
    }
  }

 static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        // requestHeader: true,
        responseHeader: true,
      ),
    );
  }

 static Future<void> addHeaders() async {
    dio!
      ..options.headers = {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer ${await SharedPref.getSecureString(AppConst.token)}',
      };
  }
   static void setTokenIntoHeaderAfterLogin(String token) {
    dio!.options.headers = {
      'Authorization': 'Bearer $token',
    };
  }
}
