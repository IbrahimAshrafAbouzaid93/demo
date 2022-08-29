import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

import 'view/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: GetMaterialApp(
        // initialBinding: HomeBinding(),
        debugShowCheckedModeBanner: false,
        title: 'task2',

        theme: ThemeData(),
        home: const SplashScreen(),

        locale: const Locale('ar'),
      ),
    );
  }
}
