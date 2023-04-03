import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';

import '../../../../core/exports/exports.dart';

class RegistrationChildBirthScreen extends StatefulWidget {
  const RegistrationChildBirthScreen({super.key});

  @override
  State<RegistrationChildBirthScreen> createState() =>
      _RegistrationChildBirthScreenState();
}

class _RegistrationChildBirthScreenState
    extends State<RegistrationChildBirthScreen> {
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

  @override
  void dispose() {
    _fieldControllers.map((c) => c.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.regisChild,
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Сведения о матери:",
              style: TextStyleHelper.f16w700,
            ),
            for (int i = 0; i < 4; i++) ...[
              const SizedBox(height: 15),
              CustomTextFieldWidget(
                controller: _fieldControllers[i + 4],
                label: _fieldNames[i],
              ),
            ],
            const SizedBox(height: 30),
            const Text(
              "Сведения об отце:",
              style: TextStyleHelper.f16w700,
            ),
            for (int i = 0; i < 4; i++) ...[
              const SizedBox(height: 15),
              CustomTextFieldWidget(
                controller: _fieldControllers[i + 4],
                label: _fieldNames[i],
              ),
            ],
            const SizedBox(height: 40),
            SizedBox(
              width: double.maxFinite,
              height: 45,
              child: CustomElevatedButtonWidget(
                onPressed: () {},
                title: 'Далее',
              ),
            )
          ],
        ),
      ),
    );
  }
}
