import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/widgets/app_bar_title.dart';

import '../widgets/tab_bar_button.dart';

class DocumentDetailsScreen extends StatefulWidget {
  final String title;
  const DocumentDetailsScreen({super.key, required this.title});

  @override
  State<DocumentDetailsScreen> createState() => _DocumentDetailsScreenState();
}

class _DocumentDetailsScreenState extends State<DocumentDetailsScreen>
    with TickerProviderStateMixin {
  int selectedTab = 0;

  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(title: widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Flexible(
              child: SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TabBarButton(
                        title: "Документ",
                        selected: tabController.index == 0,
                        onTap: () => setState(() => tabController.animateTo(0)),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: TabBarButton(
                        title: "Реквизиты",
                        selected: tabController.index == 1,
                        onTap: () => setState(() => tabController.animateTo(1)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 0.5),
            Flexible(
              child: DefaultTabController(
                length: 2,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Text("Left"),
                    Text("Right"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
