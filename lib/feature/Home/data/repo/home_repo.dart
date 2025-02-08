import 'package:dio/dio.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/core/networking/api_result.dart';
import 'package:the_good_doctor/core/networking/api_service.dart';
import 'package:the_good_doctor/feature/Home/data/model/home_model.dart';

class HomeRepo {
  HomeRepo(this._apiService);
  final ApiService _apiService;
  
  Future<ApiResult<DoctorModel>> homeRepo() async {
    final res = await _apiService.homeData();
    try {
      return ApiResult.success(res);
    } on DioException catch (error) {
      return ApiResult.failure(handleError(error));
    }
  }

}
