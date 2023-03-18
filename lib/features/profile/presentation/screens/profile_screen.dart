import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';

import '../../../../core/widgets/app_bar_title.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.profile,
        ),
      ),
      body: Column(),
    );
  }
}
