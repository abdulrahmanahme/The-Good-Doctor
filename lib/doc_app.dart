import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';
import 'package:the_good_doctor/core/routing/app_router.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import 'package:the_good_doctor/core/shared_pref/shared_pref.dart';
import 'package:the_good_doctor/core/theming/colors.dart';

bool isLoggedIn = false;

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App ',
        theme: ThemeData(
            primaryColor: ColorManger.primaryColor,
            scaffoldBackgroundColor: ColorManger.whiteColor,
            fontFamily: 'Inter'),
        showSemanticsDebugger: false,
        initialRoute: isLoggedIn ? Routes.homeScreen : Routes.onBoardingScreen,
        onGenerateRoute: AppRouter.generateRout,
      ),
    );
  }
}

Future<void> checkUserLoggedIn() async {
  String? token = await SharedPref.getSecureString(AppConst.token);
  
  if (token != null && token.isNotEmpty) {
    isLoggedIn = true;
  } else {
    isLoggedIn = false;
  }
}
