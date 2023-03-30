import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';

import '../../../../core/exports/exports.dart';
import '../../../../core/widgets/custom_elevated_button_widget.dart';

class PublicServicesScreen extends StatelessWidget {
  const PublicServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.publicServices,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            CustomElevatedButtonWidget(
              textButton: TextHelper.myFamily,
              iconUrl: IconHelper.myFamily,
              onPressed: () => context.router.push(
                const ServicesForMyFamilyScreenRoute(),
              ),
            ),
            // const SizedBox(height: 20),
            // CustomElevatedButtonWidget(
            //   textButton: TextHelper.myDocuments,
            //   iconUrl: IconHelper.myDocument,
            //   onPressed: () => context.router.push(
            //     const DocumentsScreenRoute(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
