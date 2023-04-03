import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../exports/exports.dart';

class CustomTextFieldWidget extends StatefulWidget {
  const CustomTextFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType,
    this.maxLines,
    this.radius,
    this.label,
    this.hintText,
    this.onChanged,
    this.validate,
    this.constraints,
    this.inputFormatters = const [],
    this.enabled = true,
    this.value = '',
    this.autoFocus = false,
    this.textInputAction = TextInputAction.next,
  }) : super(key: key);

  final FormFieldValidator<String>? validate;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxLines;
  final double? radius;
  final String? label;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final BoxConstraints? constraints;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final String value;
  final bool autoFocus;
  final TextInputAction textInputAction;

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  void initState() {
    widget.controller?.text = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      maxLines: widget.maxLines ?? 1,
      enabled: widget.enabled,
      autofocus: widget.autoFocus,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      textInputAction: widget.textInputAction,
      style: TextStyleHelper.f14w500.copyWith(decorationThickness: 0),
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        hintText: widget.hintText ?? '',
        hintStyle: TextStyleHelper.f14w600,
        labelText: widget.label ?? '',
        labelStyle: TextStyleHelper.f14w600,
        constraints: widget.constraints ?? const BoxConstraints(),
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
      onChanged: widget.onChanged,
      validator: widget.validate,
    );
  }
}
