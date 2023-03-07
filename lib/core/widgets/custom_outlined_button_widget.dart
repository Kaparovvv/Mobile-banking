import 'package:flutter/material.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  const CustomOutlinedButtonWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
  });

  final Function() onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30),
      ),
      child: Text(
        textButton,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
