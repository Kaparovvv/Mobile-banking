import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

Widget nothingHereYet(BuildContext context) {
  return Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          width: context.width * 0.2,
          height: context.height * 0.08,
          IconHelper.empty,
        ),
        const SizedBox(height: 10),
        const Text(
          TextHelper.nothingHereYet,
          style: TextStyleHelper.f16w500,
        ),
      ],
    ),
  );
}
