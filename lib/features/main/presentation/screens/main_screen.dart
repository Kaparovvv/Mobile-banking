import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/custom_elevated_button_widget.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/bank_card_widget.dart';

import '../../../../core/widgets/app_bar_title.dart';
import '../../../../core/widgets/cached_network_image_widget.dart';

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
        automaticallyImplyLeading: false,
        title: Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CachedNetworkImageWidget(
                  width: context.width * 0.15,
                  height: context.height * 0.05,
                  shape: BoxShape.circle,
                  imageUrl: 'https://i.yapx.cc/EKqLO.jpg',
                ),
                const SizedBox(width: 5),
                const AppBarTitle(
                  title: 'Thor',
                ),
              ],
            ),
            onTap: () => context.router.push(const ProfileScreenRoute()),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
          child: Column(
            children: [
              const BankCardWidget(
                bankAccount: '2647485679374989',
                balance: 245030.67,
              ),
              const SizedBox(height: 40),
              CustomElevatedButtonWidget(
                textButton: TextHelper.publicServices,
                iconUrl: IconHelper.publicServices,
                onPressed: () => context.router.push(
                  const PublicServicesScreenRoute(),
                ),
              ),
              const SizedBox(height: 20),
              CustomElevatedButtonWidget(
                textButton: TextHelper.myDocuments,
                iconUrl: IconHelper.myDocument,
                onPressed: () => context.router.push(
                  const DocumentsScreenRoute(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
