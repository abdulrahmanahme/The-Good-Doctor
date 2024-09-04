import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:the_good_doctor/core/netwoking.dart';
import 'package:the_good_doctor/core/networking/api_service.dart';
import 'package:the_good_doctor/feature/login/data/repo/login_repo.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/sign_up/data/repo/sign_up_reo.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_cubit.dart';

import '../networking/dio_factory.dart';

final getIt = GetIt.instance;
setUp() {
  //Dio $ ApiService
//  final dio=NetWorkManger.init();
final dio=Dio();
  // DioFactory(dio);
  final dioFactory = DioFactory(dio);
  dioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  
 ////login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt.get()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt.get()));

 ////SignUp
getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt.get()));
getIt.registerLazySingleton<SignUpCubit>(() => SignUpCubit(getIt.get()));

}
