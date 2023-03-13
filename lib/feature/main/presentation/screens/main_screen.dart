import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_elevated_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextHelper.mobileBanking,
          style: TextStyleHelper.f20w600.copyWith(letterSpacing: 3),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButtonWidget(
              textButton: TextHelper.publicServices,
              iconUrl: IconHelper.publicServices,
              onPressed: () =>
                  context.router.push(const PublicServicesScreenRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
