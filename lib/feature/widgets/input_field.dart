import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String? Function(String?) validator;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final bool obscureText;
  final int? maxLength;
  final TextEditingController? controller;

  const InputField(
      {super.key,
      required this.labelText,
      required this.validator,
      this.keyboardType = TextInputType.none,
      this.inputFormatters = const [],
      this.obscureText = false,
      this.maxLength,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      cursorColor: Colors.black,
      validator: validator,
      keyboardType: keyboardType,
      maxLength: maxLength,
      decoration: InputDecoration(
        label: Text(
          labelText,
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
