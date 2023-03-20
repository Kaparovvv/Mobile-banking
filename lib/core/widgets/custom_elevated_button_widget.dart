import 'package:flutter/material.dart';

import 'package:my_family_flutter/core/widgets/icon_background_widget.dart';

import '../exports/exports.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    super.key,
    required this.textButton,
    required this.iconUrl,
    required this.onPressed,
  });

  final String textButton;
  final String iconUrl;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        backgroundColor: ThemeHelper.white,
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          IconBackgroundWidget(
            width: context.width * 0.15,
            height: context.height * 0.065,
            iconUrl: iconUrl,
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: context.width * 0.55,
            child: Text(
              textButton,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyleHelper.f16w500,
            ),
          )
        ],
      ),
    );
  }
}
