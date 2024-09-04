import 'package:dio/dio.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/core/networking/api_service.dart';
import '../../../../core/networking/api_result.dart';
import '../model/login_request_body.dart';
import '../model/login_response.dart';

class LoginRepo {
  LoginRepo(this._apiService);
  final ApiService _apiService;

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final res = await _apiService.login(loginRequestBody);
      return ApiResult.success(res);
    }on DioException catch (error) {
      return ApiResult.failure(handleError(error));
    }
  }
}
