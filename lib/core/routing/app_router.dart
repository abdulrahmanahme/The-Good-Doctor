import 'package:flutter/material.dart';
import 'package:the_good_doctor/core/di/dependancy_inactions.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import 'package:the_good_doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:the_good_doctor/feature/onBorading/ui/Home/ui/home_screen.dart';
import '../../feature/onBorading/ui/login/login_screen.dart';
import '../../feature/onBorading/ui/onBorading/onBorading_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class AppRouter {
  static Route generateRout(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
         case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
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
