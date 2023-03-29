import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/widgets/app_bar_title.dart';
import 'package:my_family_flutter/core/widgets/custom_outlined_button_widget.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/details_content.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/image_content.dart';

import '../../data/models/id_card.dart';
import '../widgets/tab_bar_button.dart';

class DocumentDetailsScreen extends StatefulWidget {
  final String title;
  final IDCard idCard;

  const DocumentDetailsScreen({
    super.key,
    required this.title,
    required this.idCard,
  });

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
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          children: [
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(20),
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
              flex: 3,
              child: DefaultTabController(
                length: 2,
                child: TabBarView(
                  controller: tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: ImageContent(idCard: widget.idCard),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: DetailsContent(idCard: widget.idCard),
                    ),
                  ],
                ),
              ),
            ),
            CustomOutlinedButtonWidget(
              onPressed: () {},
              textButton: "Отправить документ",
              icon: Icons.ios_share,
            ),
          ],
        ),
      ),
    );
  }
}
