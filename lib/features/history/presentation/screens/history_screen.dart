import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';
import '../../../../core/widgets/app_bar_title.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.history,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(),
      ),
    );
  }
}
