import 'package:flutter/material.dart';
import 'package:game/controllers/auth/LoginController.dart';
import 'package:game/utils/Images.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [Image.asset(MyImages.logo)],
            ),
          ),
        ),
      ),
    );
  }
}
