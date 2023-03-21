import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

import '../../../../core/exports/exports.dart';

class HistoryTabBarWidget extends StatelessWidget {
  const HistoryTabBarWidget({
    super.key,
    required this.length,
    required this.listOfTabs,
    required this.listOfTabView,
    this.buttonMargin,
    this.contentPadding,
    this.topPadding,
  });

  final int length;
  final List<Widget> listOfTabs;
  final List<Widget> listOfTabView;
  final EdgeInsets? buttonMargin;
  final EdgeInsets? contentPadding;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length,
      child: SizedBox(
        width: context.width,
        height: context.height * 0.8255,
        child: Stack(
          children: <Widget>[
            TabBarView(children: listOfTabView),
            Positioned(
              top: topPadding ?? 20,
              child: ButtonsTabBar(
                radius: 15,
                buttonMargin: buttonMargin ??
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                contentPadding: contentPadding ??
                    const EdgeInsets.symmetric(horizontal: 30),
                borderWidth: 2,
                borderColor: Colors.transparent,
                unselectedBorderColor: ThemeHelper.blueGrey,
                unselectedDecoration:
                    const BoxDecoration(color: ThemeHelper.white),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      ThemeHelper.colorA0D39F,
                      ThemeHelper.color08B89D,
                    ],
                  ),
                ),
                unselectedLabelStyle: TextStyleHelper.f15w900
                    .copyWith(color: ThemeHelper.color414141),
                labelStyle:
                    TextStyleHelper.f15w900.copyWith(color: ThemeHelper.white),
                tabs: listOfTabs,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
