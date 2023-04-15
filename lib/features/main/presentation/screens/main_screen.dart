import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart';
import 'package:my_family_flutter/core/widgets/custom_elevated_button_widget.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/bank_card_widget.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/widgets/cached_network_image_widget.dart';
import '../widgets/notification_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with AutoRouteAware {
  @override
  void initState() {
    loadUserData();
    super.initState();
  }

  loadUserData() {
    context.read<ProfileBloc>().add(const GetUserData());
    context.read<ProfileBloc>().add(const GetIndividual());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Material(
              child: InkWell(
                borderRadius: BorderRadius.circular(30),
                child: state.loaded
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CachedNetworkImageWidget(
                            width: context.width * 0.15,
                            height: context.height * 0.05,
                            shape: BoxShape.circle,
                            imageUrl: 'https://i.yapx.cc/EKqLO.jpg',
                          ),
                          const SizedBox(width: 5),
                          AppBarTitle(
                            title: state.profileData.firstName,
                          ),
                        ],
                      )
                    : const SizedBox(),
                onTap: () {
                  context.router.push(const ProfileScreenRoute());
                },
              ),
            ),
            actions: const [
              NotificationButtonWidget(),
            ],
          ),
          body: SafeArea(
            child: RefreshIndicator(
              color: ThemeHelper.color08B89D,
              onRefresh: () async => loadUserData(),
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Container(
                  height: context.height * 0.8,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: state.loaded
                      ? Column(
                          children: [
                            BankCardWidget(
                              bankAccount:
                                  di.get<SharedPreferences>().getString(
                                            CachedNames.cardNumber,
                                          ) ??
                                      "",
                              balance: di.get<SharedPreferences>().getDouble(
                                        CachedNames.cardBalance,
                                      ) ??
                                  state.userData.balance,
                            ),
                            const SizedBox(height: 40),
                            CustomElevatedButtonWidget(
                              textButton: TextHelper.publicServices,
                              iconUrl: IconHelper.publicServices,
                              onPressed: () => context.router.push(
                                const PublicServicesScreenRoute(),
                              ),
                            ),
                            const SizedBox(height: 20),
                            CustomElevatedButtonWidget(
                              textButton: TextHelper.myDocuments,
                              iconUrl: IconHelper.myDocument,
                              onPressed: () => context.router.push(
                                const DocumentsScreenRoute(),
                              ),
                            ),
                          ],
                        )
                      : const Center(child: CircularProgressIndicator()),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
