import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_good_doctor/core/di/dependancy_inactions.dart';
import 'package:the_good_doctor/core/routing/app_router.dart';
import 'package:the_good_doctor/doc_app.dart';

void main() {
  setUp();

  runApp(
   DocApp(
        appRouter: AppRouter(),
      ),
  );
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     // statusBarColor: Colors.blue, // Set your desired color
  //     statusBarIconBrightness: Brightness.light, // For white icons
  //   ),
  // );
}
