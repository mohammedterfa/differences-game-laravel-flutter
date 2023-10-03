import 'package:flutter/material.dart';
import 'package:game/bindings/GameBinding.dart';
import 'package:game/bindings/HomeBinding.dart';
import 'package:game/bindings/auth/LoginBinding.dart';
import 'package:game/bindings/auth/SignUpBinding.dart';
import 'package:game/pages/GamePage.dart';
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
      initialRoute: '/game',
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
        GetPage(
          name: '/game',
          page: () => const GamePage(),
          binding: GameBinding(),
        ),
      ],
    );
  }
}
