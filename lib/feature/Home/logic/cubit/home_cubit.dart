import 'package:bloc/bloc.dart';
import 'package:the_good_doctor/feature/Home/data/repo/home_repo.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeRepo homeRepo;
  HomeCubit(this.homeRepo) : super(const HomeState.initial());

  Future<void> getHomeData() async {
    emit(const HomeState.homeLoadingState());

    final res = await homeRepo.homeRepo();
    res.when(success: (success) {
      return emit(HomeState.homeSuccessState(success));
    }, failure: (failure) {
      return emit(HomeState.homeErrorState(error: failure));
    });
  }
}
