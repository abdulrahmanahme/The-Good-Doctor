import 'package:flutter/material.dart';
import 'package:the_good_doctor/core/routing/routing.dart';

class AppRouter {
 static Route generateRout(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => Container(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => Container(),
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
