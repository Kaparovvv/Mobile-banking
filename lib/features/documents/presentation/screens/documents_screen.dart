import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_elevated_button_widget.dart';
import '../../../../core/exports/exports.dart';

class DocumentsScreen extends StatefulWidget {
  const DocumentsScreen({super.key});

  @override
  State<DocumentsScreen> createState() => _DocumentsScreenState();
}

class _DocumentsScreenState extends State<DocumentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.myDocuments,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomElevatedButtonWidget(
              textButton: TextHelper.idCard,
              iconUrl: IconHelper.identityCard,
              onPressed: () => context.router.push(
                DocumentDetailsScreenRoute(title: TextHelper.idCard),
              ),
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              textButton: TextHelper.driverCard,
              iconUrl: IconHelper.driverCard,
              onPressed: () => context.router.push(
                DocumentDetailsScreenRoute(title: TextHelper.driverCard),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
