import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/register_baby/register_baby_bloc.dart';

import '../../../../core/exports/exports.dart';

class RegistrationChildBirthScreen extends StatefulWidget {
  const RegistrationChildBirthScreen({super.key});

  @override
  State<RegistrationChildBirthScreen> createState() =>
      _RegistrationChildBirthScreenState();
}

class _RegistrationChildBirthScreenState
    extends State<RegistrationChildBirthScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool switcher = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const AppBarTitle(
            title: TextHelper.regisChild,
          ),
        ),
        body: BlocConsumer<RegisterBabyBloc, RegisterBabyState>(
          listener: (context, state) {},
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                _formKey.currentState!.reset();
                context.read<RegisterBabyBloc>().add(const Started());
              },
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20.0),
                physics: const AlwaysScrollableScrollPhysics(),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Сведения о матери:",
                        style: TextStyleHelper.f14w700,
                      ),
                      // MOTHER first name
                      motherFields(context, state),
                      const SizedBox(height: 30),
                      _fatherFields(),
                      // FATHER first name
                      fatherFields(context, state),
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.maxFinite,
                        height: 45,
                        child: CustomElevatedButtonWidget(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.router.push(const ChildInfoScreenRoute());
                            }
                          },
                          title: 'Далее',
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Column motherFields(BuildContext context, RegisterBabyState state) {
    return Column(
      children: [
        const SizedBox(height: 10),
        CustomTextFieldWidget(
          label: TextHelper.firstName,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validate: (value) => ValidatesHelper.nameValidate(
            value ?? "",
            TextHelper.firstName,
          ),
          onChanged: (value) => context
              .read<RegisterBabyBloc>()
              .add(ParamsChanged(state.params.copyWith(
                motherFirstName: value,
              ))),
        ),
        const SizedBox(height: 10),
        CustomTextFieldWidget(
          label: TextHelper.lastName,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validate: (value) => ValidatesHelper.nameValidate(
            value ?? "",
            TextHelper.lastName,
          ),
          onChanged: (value) => context
              .read<RegisterBabyBloc>()
              .add(ParamsChanged(state.params.copyWith(
                motherLastName: value,
              ))),
        ),
        const SizedBox(height: 10),
        const CustomTextFieldWidget(
          label: TextHelper.middleName,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          hintText: "Не обязательно",
        ),
        const SizedBox(height: 10),
        CustomTextFieldWidget(
          label: TextHelper.iin,
          keyboardType: TextInputType.number,
          inputFormatters: [Masks.identificationNumber],
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validate: (value) => ValidatesHelper.identityNumberValidate(
            value ?? "",
            TextHelper.iin,
          ),
          onChanged: (value) => context
              .read<RegisterBabyBloc>()
              .add(ParamsChanged(state.params.copyWith(
                motherIin: value,
              ))),
        ),
      ],
    );
  }

  Column fatherFields(BuildContext context, RegisterBabyState state) {
    return Column(
      children: [
        CustomTextFieldWidget(
          label: TextHelper.firstName,
          enabled: switcher,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validate: (value) => ValidatesHelper.nameValidate(
            value ?? "",
            TextHelper.firstName,
          ),
          onChanged: (value) => context
              .read<RegisterBabyBloc>()
              .add(ParamsChanged(state.params.copyWith(
                fatherFirstName: value,
              ))),
        ),
        const SizedBox(height: 10),
        // last name
        CustomTextFieldWidget(
          label: TextHelper.lastName,
          enabled: switcher,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validate: (value) => ValidatesHelper.nameValidate(
            value ?? "",
            TextHelper.lastName,
          ),
          onChanged: (value) => context
              .read<RegisterBabyBloc>()
              .add(ParamsChanged(state.params.copyWith(
                fatherLastName: value,
              ))),
        ),
        const SizedBox(height: 10),
        // middle name
        CustomTextFieldWidget(
          label: TextHelper.middleName,
          enabled: switcher,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(height: 10),
        // father iin
        CustomTextFieldWidget(
          label: TextHelper.iin,
          enabled: switcher,
          keyboardType: TextInputType.number,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: [Masks.identificationNumber],
          validate: (value) => switcher
              ? ValidatesHelper.identityNumberValidate(
                  value ?? "", TextHelper.iin)
              : null,
          onChanged: (value) => context
              .read<RegisterBabyBloc>()
              .add(ParamsChanged(state.params.copyWith(
                fatherIin: value,
              ))),
        ),
      ],
    );
  }

  Row _fatherFields() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Сведения об отце:",
          style: TextStyleHelper.f14w700,
        ),
        Switch(
          value: switcher,
          onChanged: (nextValue) {
            setState(() => switcher = !switcher);
            if (!switcher) _formKey.currentState!.validate();
          },
        ),
      ],
    );
  }
}
