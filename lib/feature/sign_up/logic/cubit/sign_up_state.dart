
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_good_doctor/core/networking/api_error_handler_model.dart';
import 'package:the_good_doctor/feature/sign_up/data/model/sign_up_response_model.dart';
part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _InitialSignUp;
  const factory SignUpState.loading() = LoadingSignUp;
  const factory SignUpState.success(SignUpResponseModel data) = SuccessSignUp;
  const factory SignUpState.error({required ApiErrorModel error}) = ErrorSignUp;
}

