import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../exports/exports.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key? key,
    required this.controller,
    this.keyboardType,
    this.maxLines,
    this.radius,
    required this.label,
    this.onChanged,
    this.validate,
    this.constraints,
    this.inputFormatters = const [],
  }) : super(key: key);

  final FormFieldValidator<String>? validate;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final double? radius;
  final String label;
  final ValueChanged<String>? onChanged;
  final BoxConstraints? constraints;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: TextInputAction.next,
      style: TextStyleHelper.f14w500.copyWith(decorationThickness: 0),
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyleHelper.f14w600,
        constraints: constraints ?? const BoxConstraints(),
        contentPadding: const EdgeInsets.only(top: 0.5, left: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: ThemeHelper.color414141),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: ThemeHelper.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: ThemeHelper.blueAccent),
        ),
      ),
      onChanged: onChanged,
      validator: validate,
    );
  }
}
