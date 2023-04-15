import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

class CustomOutlinedButtonWidget extends StatelessWidget {
  const CustomOutlinedButtonWidget({
    super.key,
    required this.onPressed,
    required this.textButton,
    this.icon,
    this.theme,
  });

  final Function() onPressed;
  final String textButton;
  final IconData? icon;
  final Color? theme;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: ThemeHelper.black, width: 0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
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
                  size: 20,
                )
              : const SizedBox(),
          SizedBox(width: icon != null ? 8 : 0),
          Text(
            textButton,
            style: TextStyleHelper.f14w600
                .copyWith(color: theme ?? ThemeHelper.color414141),
          ),
        ],
      ),
      onPressed: () => onPressed(),
    );
  }
}
