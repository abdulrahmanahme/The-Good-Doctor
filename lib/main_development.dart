import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:the_good_doctor/core/di/dependancy_inactions.dart';
import 'package:the_good_doctor/core/routing/app_router.dart';
import 'package:the_good_doctor/doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
 await checkUserLoggedIn();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
