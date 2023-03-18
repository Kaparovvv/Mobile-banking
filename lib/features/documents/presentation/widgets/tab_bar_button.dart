import 'package:flutter/material.dart';

import '../../../../commons/text_style_helper.dart';
import '../../../../commons/theme_helper.dart';

class TabBarButton extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final bool selected;
  const TabBarButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.black38),
          color: selected ? ThemeHelper.color001645 : Colors.transparent,
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyleHelper.f12w400.copyWith(
            color: selected ? ThemeHelper.white : ThemeHelper.color414141,
          ),
        ),
      ),
    );
  }
}
