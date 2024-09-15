import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:the_good_doctor/core/app_const/app_const.dart';
import 'package:the_good_doctor/core/di/dependancy_inactions.dart';
import 'package:the_good_doctor/core/routing/app_router.dart';
import 'package:the_good_doctor/doc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Hive.initFlutter();

  await Hive.openBox(AppConst.saveEmailAndPassword);
  await setUp();
  await checkUserLoggedIn();
  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}
