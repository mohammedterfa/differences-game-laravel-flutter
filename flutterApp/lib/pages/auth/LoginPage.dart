import 'package:flutter/material.dart';
import 'package:game/controllers/auth/LoginController.dart';
import 'package:game/utils/Images.dart';
import 'package:get/get.dart';

import '../../widgets/CustomButton.dart';
import '../../widgets/CustomText.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Image.asset(
                  MyImages.logo,
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: controller.emailCtrl,
                  hintText: "Email",
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email";
                    }
                  },
                ),
                CustomTextField(
                  controller: controller.passCtrl,
                  hintText: "Password",
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password";
                    }
                  },
                ),
                CustomButton(
                  onPressed: () => controller.login(),
                  label: "login",
                ),
                Row(
                  children: [
                    const Text("You don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.offAndToNamed('/signup');
                      },
                      child: const Text("Sign up"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
