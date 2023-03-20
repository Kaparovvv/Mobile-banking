import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

import 'custom_outlined_button_widget.dart';

class DialogApplicationWidget extends StatelessWidget {
  const DialogApplicationWidget({
    super.key,
    required this.statusIcon,
    required this.content,
    this.buttonTitle,
    this.isLogout = false,
    this.logout,
  });

  final String statusIcon;
  final String content;
  final String? buttonTitle;
  final bool isLogout;
  final void Function()? logout;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(15),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            statusIcon,
            width: context.width * 0.2,
            height: context.height * 0.0887,
          ),
          const SizedBox(height: 30),
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyleHelper.f16w700,
          ),
          const SizedBox(height: 20),
          isLogout
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomOutlinedButtonWidget(
                      textButton: TextHelper.back.toUpperCase(),
                      onPressed: () => context.router.pop(),
                    ),
                    const SizedBox(width: 10),
                    CustomOutlinedButtonWidget(
                      theme: ThemeHelper.red,
                      textButton: TextHelper.exit.toUpperCase(),
                      onPressed: () => isLogout ? logout!() : {},
                    ),
                  ],
                )
              : CustomOutlinedButtonWidget(
                  textButton: (buttonTitle ?? '').toUpperCase(),
                  onPressed: () => context.router.pop(),
                ),
        ],
      ),
    );
  }
}
