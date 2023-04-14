import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:my_family_flutter/features/profile/presentation/widgets/logout_dialog_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/widgets/icon_background_widget.dart';
import '../widgets/user_data_box_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.profile,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
        child: Column(
          children: [
            const UserDataBoxWidget(),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: ThemeHelper.white,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.all(15),
              child: BlocBuilder<ProfileBloc, ProfileState>(
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      customTextRow(
                        context: context,
                        iconUrl: IconHelper.call,
                        value: state is IndividalLoaded
                            ? state.profileData.phoneNumber
                            : "-",
                      ),
                      const Divider(),
                      customTextRow(
                        context: context,
                        iconUrl: IconHelper.identityCard,
                        value: state is IndividalLoaded
                            ? state.profileData.iin
                            : "-",
                      ),
                      const Divider(),
                      customTextRow(
                        context: context,
                        iconUrl: IconHelper.familyStatus,
                        value: state is IndividalLoaded
                            ? state.profileData.maritalStatus
                            : "-",
                      ),
                      const Divider(),
                      customTextRow(
                        context: context,
                        iconUrl: IconHelper.creditCard,
                        value: di.get<SharedPreferences>().getString(
                                  CachedNames.cardNumber,
                                ) ??
                            "-",
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
                              builder: (context) => const LogoutDialogWidget(),
                            );
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getFullName(IndividualEntity date) {
    return "${date.firstName} ${date.lastName} ${date.middleName}";
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
