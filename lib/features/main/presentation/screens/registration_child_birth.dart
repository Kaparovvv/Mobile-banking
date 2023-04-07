import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/custom_drop_down_widget.dart';

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
  late List<TextEditingController> _fieldControllers;

  final List<String> _fieldNames = [
    "Имя",
    "Фамилия",
    "Отчество",
    "ИИН",
  ];

  @override
  void initState() {
    super.initState();
    _fieldControllers = List.generate(8, (i) => TextEditingController());
  }

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
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Сведения о матери:",
                  style: TextStyleHelper.f14w700,
                ),
                for (int i = 0; i < 4; i++) ...[
                  const SizedBox(height: 15),
                  CustomTextFieldWidget(
                    controller: _fieldControllers[i],
                    label: _fieldNames[i],
                    keyboardType:
                        i == 3 ? TextInputType.number : TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validate: (value) => i == 3
                        ? ValidatesHelper.identityNumberValidate(
                            value ?? "",
                            _fieldNames[i],
                          )
                        : ValidatesHelper.titleValidate(
                            value ?? "",
                            _fieldNames[i],
                          ),
                  ),
                ],
                const SizedBox(height: 30),
                Row(
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
                ),
                for (int i = 0; i < 4; i++) ...[
                  const SizedBox(height: 15),
                  CustomTextFieldWidget(
                    controller: _fieldControllers[i + 4],
                    label: _fieldNames[i],
                    enabled: switcher,
                    keyboardType:
                        i == 3 ? TextInputType.number : TextInputType.text,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validate: (value) {
                      if (switcher) {
                        return i == 3
                            ? ValidatesHelper.identityNumberValidate(
                                value ?? "",
                                _fieldNames[i],
                              )
                            : ValidatesHelper.titleValidate(
                                value ?? "",
                                _fieldNames[i],
                              );
                      }
                    },
                  ),
                ],
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
      ),
    );
  }

  @override
  void dispose() {
    _fieldControllers.map((c) => c.dispose());
    super.dispose();
  }
}
