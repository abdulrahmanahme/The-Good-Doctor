import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_good_doctor/core/routing/app_router.dart';
import 'package:the_good_doctor/core/routing/routing.dart';
import 'package:the_good_doctor/core/theming/colors.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Doc App',
        theme: ThemeData(
          primaryColor: ColorManger.primaryColor,
          scaffoldBackgroundColor: ColorManger.whiteColor,
        ),
        showSemanticsDebugger: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: AppRouter.generateRout,
      ),
    );
  }
}
