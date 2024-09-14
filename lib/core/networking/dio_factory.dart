import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';
import 'package:the_good_doctor/core/shared_pref/shared_pref.dart';
// import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory(this.dio);

  Dio? dio;

  Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);

    if (dio != null) {
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      dio!
        ..options.headers = {
          'Content-Type': 'application/json',
          'Authorization':
              'Bearer ${SharedPref.getSecureString(AppConst.token)}',
        };

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
