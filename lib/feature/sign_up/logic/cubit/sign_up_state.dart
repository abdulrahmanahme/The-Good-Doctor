
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/core/networking/api_error_handler_model.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _InitialSignUp;
  const factory SignUpState.loading() = LoadingSignUp;
  const factory SignUpState.success(T data) = SuccessSignUp<T>;
  const factory SignUpState.error({required ApiErrorModel error}) = ErrorSignUp<T>;
}

