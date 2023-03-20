import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

class PasswordTextFieldWidget extends StatefulWidget {
  final FormFieldValidator<String>? validate;
  final String label;
  final TextEditingController controller;

  const PasswordTextFieldWidget({
    super.key,
    required this.label,
    required this.controller,
    this.validate,
  });

  @override
  State<PasswordTextFieldWidget> createState() =>
      _PasswordTextFieldWidgetState();
}

class _PasswordTextFieldWidgetState extends State<PasswordTextFieldWidget> {
  bool _isObscureWidget = false;
  bool _isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      textInputAction: TextInputAction.next,
      style: TextStyleHelper.f14w500.copyWith(decorationThickness: 0),
      obscureText: _isObscureText,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: TextStyleHelper.f14w600,
        errorMaxLines: 3,
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
        suffixIcon: _isObscureWidget
            ? IconButton(
                icon: Icon(
                  _isObscureText
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: ThemeHelper.color414141,
                ),
                onPressed: () {
                  setState(() {
                    _isObscureText = !_isObscureText;
                  });
                },
              )
            : const SizedBox(),
      ),
      onChanged: (value) {
        setState(() {
          value.isNotEmpty ? _isObscureWidget = true : _isObscureWidget = false;
        });
      },
      validator: widget.validate,
    );
  }

  passValidate(String? password) {
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(password!);
  }
}
