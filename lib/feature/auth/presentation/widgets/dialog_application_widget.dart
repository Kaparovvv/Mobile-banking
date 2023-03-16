import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

import '../../../../core/widgets/custom_outlined_button_widget.dart';

class DialogApplicationWidget extends StatelessWidget {
  final String statusIcon;
  final String content;
  const DialogApplicationWidget({
    super.key,
    required this.statusIcon,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(15),
      content: Column(
        mainAxisSize: MainAxisSize.min,
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
          CustomOutlinedButtonWidget(
            textButton: TextHelper.well.toUpperCase(),
            onPressed: () => context.router.pop(),
          ),
        ],
      ),
    );
  }
}
