import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

class MarriageRegistrationScreen extends StatelessWidget {
  const MarriageRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextHelper.marriageRegis,
          style: TextStyleHelper.f20w600.copyWith(letterSpacing: 3),
        ),
      ),
    );
  }
}
