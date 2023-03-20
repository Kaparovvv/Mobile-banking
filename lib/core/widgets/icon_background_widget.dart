import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

class IconBackgroundWidget extends StatelessWidget {
  const IconBackgroundWidget({
    super.key,
    required this.width,
    required this.height,
    required this.iconUrl,
  });

  final double width;
  final double height;
  final String iconUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: ThemeHelper.colorF8F8F8,
        shape: BoxShape.circle,
      ),
      child: iconUrl.isNotEmpty ? Image.asset(iconUrl) : const Placeholder(),
    );
  }
}
