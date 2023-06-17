import 'package:flutter/material.dart';

class ImageContent extends StatelessWidget {
  const ImageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 200,
          width: double.maxFinite,
          child: Placeholder(),
        ),
        SizedBox(height: 30),
        SizedBox(
          height: 200,
          width: double.maxFinite,
          child: Placeholder(),
        ),
        // CachedNetworkImageWidget(
        //   height: 200,
        //   width: double.maxFinite,
        //   radius: BorderRadius.circular(15),
        //   imageUrl: idCard.individual.photo,
        // ),
        // CachedNetworkImageWidget(
        //   height: 200,
        //   width: double.maxFinite,
        //   radius: BorderRadius.circular(15),
        //   imageUrl: idCard.individual.photo,
        // ),
      ],
    );
  }
}
