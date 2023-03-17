import 'package:flutter/material.dart';
import 'package:my_family_flutter/feature/documents/data/models/id_card.dart';

class ImageContent extends StatelessWidget {
  final IDCard idCard;

  const ImageContent({
    super.key,
    required this.idCard,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Placeholder(
          child: SizedBox(
            height: 200,
            width: double.maxFinite,
            child: Center(child: Text("Front image ID Card")),
          ),
        ),
        SizedBox(height: 15),
        Placeholder(
          child: SizedBox(
            height: 200,
            width: double.maxFinite,
            child: Center(child: Text("Back image ID Card")),
          ),
        ),
      ],
    );
  }
}
