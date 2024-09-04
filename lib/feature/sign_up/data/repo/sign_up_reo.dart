import 'package:dio/dio.dart';
import 'package:the_good_doctor/core/networking/api_result.dart';
import 'package:the_good_doctor/feature/sign_up/data/model/sign_up_request_model.dart';
import 'package:the_good_doctor/feature/sign_up/data/model/sign_up_response_model.dart';
import '../../../../core/networking/api_error_handler.dart';
import '../../../../core/networking/api_service.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);

  Future<ApiResult<SignUpResponseModel>> signUp(
      SignUpRequestModel signUpRequestModel) async {
    try {
      final res = await _apiService.signUp(signUpRequestModel);
   return   ApiResult.success(res);
    }on DioException catch (error) {
    return  ApiResult.failure(handleError(error));
    }
  }
}
