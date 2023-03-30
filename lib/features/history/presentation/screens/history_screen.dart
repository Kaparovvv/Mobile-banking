import 'package:flutter/material.dart';
import 'package:my_family_flutter/features/history/presentation/widgets/history_tabbar_widget.dart';
import 'package:my_family_flutter/features/history/presentation/widgets/list_of_payments_widget.dart';
import 'package:my_family_flutter/features/history/presentation/widgets/request_tabbar_widget.dart';

import '../../../../core/exports/exports.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.history,
        ),
      ),
      body: SafeArea(
        child: HistoryTabBarWidget(
          length: 2,
          contentPadding: const EdgeInsets.symmetric(horizontal: 50),
          listOfTabs: [
            Tab(
              text: TextHelper.payments.toUpperCase(),
            ),
            Tab(
              text: TextHelper.request.toUpperCase(),
            ),
          ],
          listOfTabView: const [
            ListOfPaymentsWidget(),
            RequestTabBarWidget(),
          ],
        ),
      ),
    );
  }
}
