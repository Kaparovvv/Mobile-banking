import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:my_family_flutter/features/profile/presentation/widgets/logout_dialog_widget.dart';

import '../../../../core/widgets/icon_background_widget.dart';
import '../widgets/user_data_box_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.profile,
        ),
      ),
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetIndividal) {
            final name =
                "${state.profileData.firstName} ${state.profileData.lastName} ${state.profileData.middleName}";
            return Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                children: [
                  UserDataBoxWidget(
                    name: name,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    decoration: BoxDecoration(
                      color: ThemeHelper.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        customTextRow(
                          context: context,
                          iconUrl: IconHelper.call,
                          value: state.profileData.phoneNumber,
                        ),
                        const Divider(),
                        customTextRow(
                          context: context,
                          iconUrl: IconHelper.identityCard,
                          value: state.profileData.iin,
                        ),
                        const Divider(),
                        customTextRow(
                          context: context,
                          iconUrl: IconHelper.familyStatus,
                          value: state.profileData.maritalStatus,
                        ),
                        const Divider(),
                        customTextRow(
                          context: context,
                          iconUrl: IconHelper.creditCard,
                          value: '8990 7383 8293 7328',
                        ),
                        const Divider(),
                        Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(10),
                            child: customTextRow(
                              context: context,
                              iconUrl: IconHelper.exit,
                              value: 'выйти',
                            ),
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) =>
                                    const LogoutDialogWidget(),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const Center(child: Text("Error"));
          }
        },
      ),
    );
  }

  Row customTextRow({
    required BuildContext context,
    required String iconUrl,
    required String value,
  }) {
    return Row(
      children: [
        IconBackgroundWidget(
          width: context.width * 0.1389,
          height: context.height * 0.0616,
          iconUrl: iconUrl,
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: context.width * 0.65,
          child: Text(
            value.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyleHelper.f16w700.copyWith(
              letterSpacing: 1,
              color: ThemeHelper.color414141,
            ),
          ),
        ),
      ],
    );
  }
}
