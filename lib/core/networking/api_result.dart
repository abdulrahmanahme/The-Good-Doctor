import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/core/networking/api_error_handler_model.dart';
part 'api_result.freezed.dart';
@Freezed()
class ApiResult<T> with _$ApiResult<T>{
  const factory ApiResult.success(T data)=Success<T>;
  const factory ApiResult.failure(ApiErrorModel message)=Failure<T>;
}