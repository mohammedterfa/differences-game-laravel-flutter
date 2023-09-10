import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.label,
    required this.onPressed,
  });

  final void Function()? onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: onPressed, // Call the function onPressed
      label: Text(
        label,
      ),
      extendedPadding: const EdgeInsets.symmetric(horizontal: 70),
    );
  }
}
