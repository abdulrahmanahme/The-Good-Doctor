import 'package:bloc/bloc.dart';
import 'package:the_good_doctor/core/networking/api_error_handler.dart';
import 'package:the_good_doctor/feature/Home/data/model/home_model.dart';
import 'package:the_good_doctor/feature/Home/data/repo/home_repo.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());
  int currentDoctorSelectedId = 0;

  int currentSpecializeSelected = 0;
  List<Doctorspecialization>? doctorspecialization = [];

  void onTapCurrentSpecializeSelected(int currentSpecializeSelected) {
    this.currentSpecializeSelected = currentSpecializeSelected;
    emit(const HomeState.updateValue());
  }

  Future<void> getHomeData() async {
    emit(const HomeState.homeLoadingState());
    final res = await homeRepo.homeRepo();
    res.when(success: (success) {
      doctorspecialization = success.doctorspecialization;
      getDoctorsFilteredList(selectedSpecializeId: doctorspecialization!.first.id!);
      return emit(
        HomeState.homeSuccessState(success.doctorspecialization),
      );
    }, failure: (failure) {
      return emit(
        HomeState.homeErrorState(error: failure),
      );
    });
  }

  Future<void> getDoctorsFilteredList(
      {required int selectedSpecializeId}) async {
    List<Doctor>? doctorList = filterDoctorsList(selectedSpecializeId);
    if (!(doctorList == null || doctorList.isEmpty)) {
      print('ssssaccccaa  ${doctorList.length}');

      emit(
        HomeState.doctorSocializeSuccess(doctorList),
      );
    } else {
      emit(
        const HomeState.doctorSocializeError(error: 'Some Errors Happened'),
      );
    }
  }

  List<Doctor>? filterDoctorsList(int selectedId) {
    return doctorspecialization
        ?.firstWhere((doctors) => doctors.id == selectedId)
        .doctors;
  }
}
