import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_good_doctor/core/di/dependancy_inactions.dart';
import 'package:the_good_doctor/core/routing/app_router.dart';
import 'package:the_good_doctor/doc_app.dart';

void main() {
  setUp();

  runApp(
    DevicePreview(
      enabled: true,
      tools: const [
        ...DevicePreview.defaultTools,
        // CustomPlugin(),
      ],
      builder: (context) => DocApp(
        appRouter: AppRouter(),
      ),
    ),
  );
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     // statusBarColor: Colors.blue, // Set your desired color
  //     statusBarIconBrightness: Brightness.light, // For white icons
  //   ),
  // );
}
