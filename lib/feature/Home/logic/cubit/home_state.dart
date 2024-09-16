import 'package:the_good_doctor/core/networking/api_error_handler_model.dart';
import 'package:the_good_doctor/feature/Home/data/model/home_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState  with _$HomeState {
  /// TODO: Refactor this States
  const factory HomeState.initial() = _HomeInitialState;
  const factory HomeState.homeLoadingState() = HomeLoadingState;
  const factory HomeState.homeSuccessState(List<Doctorspecialization>? doctorspecialization) = HomeSuccessState;
  const factory HomeState.homeErrorState({required ApiErrorModel error}) = HomeErrorState;

/// Doctor Socialize States
const factory HomeState.doctorSocializeSuccess(List<Doctor>? doctorList ) = DoctorSocializeSuccess;
const factory HomeState.doctorSocializeError({required String error}) = DoctorSocializeError;
/////////
const factory HomeState.updateValue() = UpdateValue;


}
