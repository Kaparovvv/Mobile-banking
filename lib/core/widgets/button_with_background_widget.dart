import 'package:flutter/material.dart';

import '../exports/exports.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.enabled = true,
  });

  final String title;
  final void Function() onPressed;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 8,
        ),
        backgroundColor: enabled ? ThemeHelper.color5061FF : ThemeHelper.grey,
        foregroundColor: ThemeHelper.white,
      ),
      child: Text(
        title.toUpperCase(),
        style: TextStyleHelper.f14w500.copyWith(color: ThemeHelper.white),
      ),
      onPressed: () => onPressed(),
    );
  }
}
