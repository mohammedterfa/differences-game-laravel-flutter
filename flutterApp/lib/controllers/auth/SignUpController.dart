import 'package:game/apis/auth/SignUpApi.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  final nameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final passConfirmCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();

  Future signUp() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus!.unfocus();

      final data = await SignUpApi().data(
          name: nameCtrl.text, email: emailCtrl.text, pass: passCtrl.text);
      if (data!.code == 200) {
        Get.toNamed('/home');
        Get.snackbar("Success", data!.msg);
      } else {
        Get.snackbar("Error", data!.data);
      }
    }
  }
}
