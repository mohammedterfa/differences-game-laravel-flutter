import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void login() {
    if (formKey.currentState!.validate()) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
  }
}
