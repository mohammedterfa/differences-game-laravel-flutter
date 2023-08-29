import 'package:flutter/material.dart';
import 'package:game/apis/auth/LoginApi.dart';
import 'package:game/models/auth/LoginModel.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();

  LoginModel? loginModel;

  Future login() async {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus!.unfocus();

      loginModel =
          await LoginApi().data(email: emailCtrl.text, pass: passCtrl.text);
      if (loginModel!.code == 200) {
        Get.toNamed('/home');
        Get.snackbar("Success", loginModel!.msg);
      } else {
        Get.snackbar("Error", loginModel!.msg);
      }
    }
  }
}
