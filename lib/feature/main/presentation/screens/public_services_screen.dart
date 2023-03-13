import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';
import '../../../../core/widgets/custom_elevated_button_widget.dart';

class PublicServicesScreen extends StatelessWidget {
  const PublicServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextHelper.publicServices,
          style: TextStyleHelper.f20w600.copyWith(letterSpacing: 3),
        ),
      ),
      body: ListView.separated(
        itemCount: listofServices.length,
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        itemBuilder: (context, index) {
          return CustomElevatedButtonWidget(
            textButton: listofServices[index].name,
            iconUrl: listofServices[index].icon,
            onPressed: () {},
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 20),
      ),
    );
  }
}

final List<Services> listofServices = [
  Services(IconHelper.myFamily, TextHelper.myFamily),
  Services(IconHelper.myDocument, TextHelper.myDocuments),
];

class Services {
  final String icon;
  final String name;

  Services(this.icon, this.name);
}
