import 'package:flutter/material.dart';
import 'package:game/controllers/auth/SignupController.dart';
import 'package:game/utils/Images.dart';
import 'package:get/get.dart';

import '../../widgets/CustomButton.dart';
import '../../widgets/CustomText.dart';

class SignUpPage extends GetView<SignUpController> {
  const SignUpPage({super.key});

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
                  controller: controller.nameCtrl,
                  hintText: "Name",
                  obscureText: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Name";
                    }
                  },
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
                CustomTextField(
                  controller: controller.passConfirmCtrl,
                  hintText: "Password Confirmation",
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password Confirmation";
                    }

                    if (value != controller.passCtrl.text) {
                      return "Not Match Password";
                    }
                  },
                ),
                CustomButton(
                  onPressed: () => controller.signUp(),
                  label: "signup",
                ),
                Row(
                  children: [
                    const Text("Do you have account"),
                    TextButton(
                      onPressed: () {
                        Get.offAndToNamed('/login');
                      },
                      child: const Text("login"),
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
