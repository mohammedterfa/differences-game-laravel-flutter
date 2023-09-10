import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, // Use Key? key instead of super.key
    required this.controller,
    required this.hintText,
    this.validator,
    required this.obscureText,
  });

  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            filled: true,
            fillColor: Mycolors.blueBFD,
            hintText: hintText,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide.none),
          ),
          validator: validator,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
