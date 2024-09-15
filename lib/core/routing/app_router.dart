import 'package:flutter/material.dart';
import 'package:the_good_doctor/core/di/dependancy_inactions.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import 'package:the_good_doctor/feature/Home/logic/cubit/home_cubit.dart';
import 'package:the_good_doctor/feature/Home/ui/home_screen.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/login/login_screen.dart';
import 'package:the_good_doctor/feature/onBorading/ui/onBorading/onBorading_screen.dart';
import 'package:the_good_doctor/feature/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:the_good_doctor/feature/sign_up/ui/sign_up_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route generateRout(RouteSettings routeSettings) {
    var args = routeSettings.arguments;

    switch (routeSettings.name) {
      
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) =>const OnBoardingScreen()
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>()..setPasswordAndEmail(),
            child: LoginScreen(),
          ),
        );
      case Routes.homeScreen:
      // final String userName;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<HomeCubit>()..getHomeData(),
            child:  HomeScreen(userName: 'Abdo',),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignUpCubit>(),
            child: SignUPScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child:
                  Text('No routes defined for this page ${routeSettings.name}'),
            ),
          ),
        );
    }
  }
}
