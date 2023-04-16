import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/custom_outlined_button_widget.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/details_content.dart';
import 'package:my_family_flutter/features/documents/presentation/widgets/image_content.dart';
import '../bloc/documents_bloc.dart';
import '../widgets/tab_bar_button.dart';

class DocumentDetailsScreen extends StatefulWidget {
  final String title;

  const DocumentDetailsScreen({
    super.key,
    required this.title,
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
    return BlocConsumer<DocumentsBloc, DocumentsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: AppBarTitle(title: widget.title),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: state.loading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : state.loaded
                    ? RefreshIndicator(
                        onRefresh: () async {
                          if (state.isDriverLicense) {
                            context.read<DocumentsBloc>().add(
                                  const GetDriverLicenseEvent(),
                                );
                          } else {
                            context.read<DocumentsBloc>().add(
                                  const GetPasportEvent(),
                                );
                          }
                        },
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: SizedBox(
                            height: context.height * 0.85,
                            child: Column(
                              children: [
                                Flexible(
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    height: 80,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: TabBarButton(
                                            title: "Документ",
                                            selected: tabController.index == 0,
                                            onTap: () => setState(() =>
                                                tabController.animateTo(0)),
                                          ),
                                        ),
                                        const SizedBox(width: 5),
                                        Expanded(
                                          child: TabBarButton(
                                            title: "Реквизиты",
                                            selected: tabController.index == 1,
                                            onTap: () => setState(() =>
                                                tabController.animateTo(1)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(height: 0.5),
                                tabBarView(state.passport),
                                CustomOutlinedButtonWidget(
                                  onPressed: () {},
                                  textButton: "Отправить документ",
                                  icon: Icons.ios_share,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : const Center(child: Text("Reload")),
          ),
        );
      },
    );
  }

  Flexible tabBarView(DocumentEntity document) {
    return Flexible(
      flex: 3,
      child: DefaultTabController(
        length: 2,
        child: TabBarView(
          controller: tabController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: ImageContent(),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: DetailsContent(document: document)),
          ],
        ),
      ),
    );
  }
}
