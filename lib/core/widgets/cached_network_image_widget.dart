import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../exports/exports.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({
    Key? key,
    required this.width,
    required this.height,
    required this.imageUrl,
    this.radius,
    this.shape,
    this.isRadius = true,
  }) : super(key: key);
  final bool isRadius;
  final String? imageUrl;
  final double width;
  final double height;
  final BorderRadius? radius;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: CachedNetworkImage(
        imageUrl: imageUrl ??
            'https://ami.by/thumbs/getthumb.php?w%5Cu003d190%5Cu0026h%5Cu003d142%5Cu0026src%5Cu003dimages/catalogue/items/dprima_mod1_014.jpg',
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            borderRadius: isRadius ? radius : null,
            shape: shape ?? BoxShape.rectangle,
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        placeholder: (context, url) => Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: ThemeHelper.blueGrey,
              shape: shape ?? BoxShape.rectangle,
            ),
          ),
        ),
        errorWidget: (context, url, error) => Image.asset(
          ImageHelper.imageNotFound,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
