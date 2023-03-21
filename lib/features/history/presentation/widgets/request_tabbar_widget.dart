import 'package:flutter/material.dart';
import 'package:my_family_flutter/features/history/presentation/widgets/history_tabbar_widget.dart';
import 'package:my_family_flutter/features/history/presentation/widgets/list_of_request_widget.dart';

import '../../../../core/exports/exports.dart';

class RequestTabBarWidget extends StatelessWidget {
  const RequestTabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HistoryTabBarWidget(
          length: 2,
          buttonMargin: const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
          topPadding: 70,
          listOfTabs: requestTabs,
          listOfTabView: requestViews,
        ),
      ],
    );
  }

  static const List<Widget> requestViews = [
    ListOfRequestWidget(),
    ListOfRequestWidget(),
  ];

  static List<Widget> requestTabs = [
    Tab(
      text: TextHelper.archive.toUpperCase(),
    ),
    Tab(
      text: TextHelper.active.toUpperCase(),
    ),
  ];
}
