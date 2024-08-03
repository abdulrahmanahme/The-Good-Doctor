import 'package:flutter/material.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import '../../feature/onBorading/ui/login/login_screen.dart';
import '../../feature/onBorading/ui/onBorading/onBorading_screen.dart';

class AppRouter {
 static Route generateRout(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) =>const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
        default:
         return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No routes defined for this page ${routeSettings.name}'
              ),
            ),
          ),
        );
    }
  }
}
