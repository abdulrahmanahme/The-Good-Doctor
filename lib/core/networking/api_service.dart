import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:the_good_doctor/core/networking/api_constants.dart';
import '../../feature/login/data/model/login_request_body.dart';
import '../../feature/login/data/model/login_response.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
   @Body() LoginRequestBody loginRequestBody);
}
