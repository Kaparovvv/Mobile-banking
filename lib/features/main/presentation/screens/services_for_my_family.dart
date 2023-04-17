import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/features/main/domain/usecases/get_cities_case.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/cities_bloc/cities_bloc.dart';

import '../../../../core/exports/exports.dart';
import '../../../../core/router/app_router.gr.dart';
import '../../../../core/widgets/custom_elevated_button_widget.dart';

class ServicesForMyFamilyScreen extends StatelessWidget {
  const ServicesForMyFamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.myFamily,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
        child: Column(
          children: [
            CustomElevatedButtonWidget(
              textButton: TextHelper.marriageRegis,
              iconUrl: IconHelper.marriage,
              onPressed: () {
                context.read<CitiesBloc>().add(const CitiesFetched(
                      CitiesRequestType.MARRIAGE,
                    ));
                context.router.push(
                  const MarriageRegistrationScreenRoute(),
                );
              },
            ),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              textButton: TextHelper.regisChild,
              iconUrl: IconHelper.child,
              onPressed: () {
                context.read<CitiesBloc>().add(const CitiesFetched(
                      CitiesRequestType.BABY_BIRTH,
                    ));
                context.router.push(const ChildInfoScreenRoute());
                // context.router.push(
                //   const RegistrationChildBirthScreenRoute(),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
