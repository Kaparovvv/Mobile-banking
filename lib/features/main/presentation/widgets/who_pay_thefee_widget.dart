import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

typedef WhoIsPay = void Function(bool? isUser);

class WhoPayTheFeeWidget extends StatefulWidget {
  final WhoIsPay whoIsPay;
  const WhoPayTheFeeWidget({
    super.key,
    required this.whoIsPay,
  });

  @override
  State<WhoPayTheFeeWidget> createState() => _WhoPayTheFeeWidgetState();
}

class _WhoPayTheFeeWidgetState extends State<WhoPayTheFeeWidget> {
  var firstButton = false;
  var secondButton = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          TextHelper.whoPaysTheFee,
          style: TextStyleHelper.f14w600,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            selectedButton(
              title: TextHelper.you,
              onPressed: () => setState(() {
                firstButton = !firstButton;
                if (firstButton == true) {
                  secondButton = false;
                  widget.whoIsPay(true);
                } else {
                  secondButton = true;
                }
              }),
              isSelected: firstButton,
              context: context,
            ),
            selectedButton(
              title: TextHelper.partner,
              onPressed: () => setState(() {
                secondButton = !secondButton;
                if (secondButton == true) {
                  firstButton = false;
                  widget.whoIsPay(false);
                } else {
                  firstButton = true;
                }
              }),
              isSelected: secondButton,
              context: context,
            ),
          ],
        ),
      ],
    );
  }

  Widget selectedButton({
    required String title,
    required Function() onPressed,
    required bool isSelected,
    required BuildContext context,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(context.width * 0.35, context.height * 0.05),
        backgroundColor:
            isSelected ? ThemeHelper.color5061FF : ThemeHelper.white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: ThemeHelper.color5061FF),
        ),
      ),
      child: Text(
        title.toUpperCase(),
        style: TextStyleHelper.f14w600.copyWith(
          color: isSelected ? ThemeHelper.white : ThemeHelper.color414141,
        ),
      ),
      onPressed: () => onPressed(),
    );
  }
}
