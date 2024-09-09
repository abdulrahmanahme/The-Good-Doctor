import 'package:the_good_doctor/core/networking/api_error_handler_model.dart';
import 'package:the_good_doctor/feature/Home/data/model/home_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState  with _$HomeState {
  const factory HomeState.initial() = _HomeInitialState;
  const factory HomeState.homeLoadingState() = HomeLoadingState;
  const factory HomeState.homeSuccessState(DoctorModel doctorModel) = HomeSuccessState;
  const factory HomeState.homeErrorState({required ApiErrorModel error}) = HomeErrorState;

}
