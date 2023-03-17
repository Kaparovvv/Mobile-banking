import 'package:flutter/material.dart';
import '../../commons/text_style_helper.dart';

class AppBarTitle extends StatelessWidget {
  final String title;
  const AppBarTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyleHelper.f18w500,
      textAlign: TextAlign.center,
      maxLines: 3,
    );
  }
}
