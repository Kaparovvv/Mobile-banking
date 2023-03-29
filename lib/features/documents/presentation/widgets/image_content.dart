import 'package:flutter/material.dart';

import '../../../../core/widgets/cached_network_image_widget.dart';
import '../../data/models/id_card.dart';

class ImageContent extends StatelessWidget {
  final IDCard idCard;

  const ImageContent({super.key, required this.idCard});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImageWidget(
          height: 200,
          width: double.maxFinite,
          radius: BorderRadius.circular(15),
          imageUrl: idCard.frontImageURL,
        ),
        const SizedBox(height: 30),
        CachedNetworkImageWidget(
          height: 200,
          width: double.maxFinite,
          radius: BorderRadius.circular(15),
          imageUrl: idCard.backImageURL,
        ),
      ],
    );
  }
}
