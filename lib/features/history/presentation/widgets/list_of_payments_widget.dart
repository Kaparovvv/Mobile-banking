import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/icon_background_widget.dart';

class ListOfPaymentsWidget extends StatelessWidget {
  const ListOfPaymentsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      padding: const EdgeInsets.only(top: 80, bottom: 20, left: 20, right: 20),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
          color: ThemeHelper.white,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconBackgroundWidget(
                  width: context.width * 0.12,
                  height: context.height * 0.062,
                  padding: const EdgeInsets.all(10),
                  iconUrl: IconHelper.tenge,
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: context.width * 0.65,
                  child: const Text(
                    'Three-line ListTile sufficiently long subtitle skdj skdj ksdj ',
                    style: TextStyleHelper.f16w700,
                    softWrap: true,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: context.width * 0.48,
                  child: const Text(
                    '+7-777-111-22-33',
                    style: TextStyleHelper.f14w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '5567.0 тенге',
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
