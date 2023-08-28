import 'package:flutter/material.dart';
import 'package:game/controllers/auth/LoginController.dart';
import 'package:game/utils/Images.dart';
import 'package:game/utils/colors.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                TextFormField(
                  controller: controller.emailCtrl,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Mycolors.blueBFD,
                    hintText: "email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email";
                    }
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: controller.passCtrl,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Mycolors.blueBFD,
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: BorderSide.none),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your password";
                    }
                  },
                ),
                const SizedBox(height: 20),
                FloatingActionButton.extended(
                  onPressed: () => controller.login(),
                  label: const Text("login"),
                  extendedPadding: const EdgeInsets.symmetric(horizontal: 70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
