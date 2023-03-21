import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

class ListOfRequestWidget extends StatelessWidget {
  const ListOfRequestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: const EdgeInsets.only(top: 130, bottom: 20, left: 20, right: 20),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: ThemeHelper.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Three-line ListTile sufficiently long subtitle skdj skdj ksdj ',
              style: TextStyleHelper.f18w500,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '01.01.2023',
                  style: TextStyleHelper.f14w600,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'В прогрессе',
                  style: TextStyleHelper.f14w600
                      .copyWith(color: ThemeHelper.color5061FF),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
