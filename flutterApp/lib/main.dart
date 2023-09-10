import 'package:flutter/material.dart';
import 'package:game/bindings/HomeController.dart';
import 'package:game/bindings/auth/LoginBinding.dart';
import 'package:game/bindings/auth/SignUpBinding.dart';
import 'package:game/pages/HomePage.dart';
import 'package:game/pages/auth/LoginPage.dart';
import 'package:game/pages/auth/SignupPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/signup',
      getPages: [
        GetPage(
          name: '/login',
          page: () => const LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          binding: HomeBinding(),
        ),
        GetPage(
          name: '/signup',
          page: () => const SignUpPage(),
          binding: SignUpBinding(),
        ),
      ],
    );
  }
}
