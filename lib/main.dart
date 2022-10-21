import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaushalsir/Splash/introductionscreen.dart';
import 'Splash/splashscreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
       debugShowCheckedModeBanner: false,
      getPages: [
      GetPage(name: Routes.SPLASH_SCREEN, page: ()=>const SplashScreen())
      ],
      initialRoute: Routes.SPLASH_SCREEN,
      home: const IntroductionScreen(),
    );
  }
}

class Routes {
  static const String SPLASH_SCREEN = "/";
}

