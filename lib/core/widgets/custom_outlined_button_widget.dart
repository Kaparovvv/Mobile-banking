import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  const CustomOutlinedButtonWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.icon,
  });

  final Function() onPressed;
  final String textButton;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => onPressed(),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.only(
          right: 30,
          left: icon != null ? 20 : 30,
          top: icon != null ? 10 : 0,
          bottom: icon != null ? 10 : 0,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon != null
              ? Icon(
                  icon,
                  color: ThemeHelper.black,
                  size: 20,
                )
              : const SizedBox(),
          SizedBox(width: icon != null ? 8 : 0),
          Text(
            textButton,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
