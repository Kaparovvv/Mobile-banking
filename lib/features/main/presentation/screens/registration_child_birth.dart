import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

class RegistrationChildBirthScreen extends StatelessWidget {
  const RegistrationChildBirthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.regisChild,
        ),
      ),
    );
  }
}
