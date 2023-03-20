import 'package:flutter/material.dart';

import '../../../../commons/text_style_helper.dart';
import '../../../../commons/theme_helper.dart';

class DetailItem extends StatelessWidget {
  const DetailItem({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: ThemeHelper.color414141,
            width: 0.2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyleHelper.f12w400,
                ),
                const SizedBox(height: 5),
                Text(
                  content,
                  style: TextStyleHelper.f16w500,
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.copy,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
