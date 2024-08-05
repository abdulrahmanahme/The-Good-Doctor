import 'package:get_it/get_it.dart';
import 'package:the_good_doctor/core/networking/api_service.dart';
import 'package:the_good_doctor/feature/login/data/repo/login_repo.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

setUp() {
  //Dio $ ApiService
  final dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  
 ////login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt.get()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt.get()));
}
