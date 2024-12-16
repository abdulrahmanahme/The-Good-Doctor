import 'package:dio/dio.dart';
import 'package:the_good_doctor/core/networking/api_error_handler_model.dart';

ApiErrorModel handleError(DioException error) {
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return ApiErrorModel(
        message: "Connection to server failed",
      );
    case DioExceptionType.sendTimeout:
      return ApiErrorModel(
        message: "Request to the server was cancelled",
      );
    case DioExceptionType.receiveTimeout:
      return ApiErrorModel(
        message: "Receive timeout in connection with the server",
      );
    case DioExceptionType.badResponse:
      return ApiErrorModel.fromJson(error.response?.data);
    case DioExceptionType.unknown:
      return ApiErrorModel(
        message: "Connection to the server failed due to internet connection",
      );
    case DioExceptionType.cancel:
      return ApiErrorModel(
        message: "Request to the server was cancelled",
      );
    case DioExceptionType.connectionError:
      return ApiErrorModel(
        message: "Send timeout in connection with the server",
      );
    case DioExceptionType.badCertificate:
      return ApiErrorModel(
        message: "Send timeout in connection with the server",
      );
  }
}
