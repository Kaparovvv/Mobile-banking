import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';
import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/custom_drop_down_widget.dart';

class ChildInfoScreen extends StatefulWidget {
  const ChildInfoScreen({super.key});

  @override
  State<ChildInfoScreen> createState() => _ChildInfoScreenState();
}

class _ChildInfoScreenState extends State<ChildInfoScreen> {
  Object? selectedRegion;
  List<String> listOfRegion = <String>['ЗАГС 1', 'ЗАГС 2', 'ЗАГС 3'];

  late List<TextEditingController> _fieldControllers;

  final List<String> _fieldNames = [
    "Имя",
    "Фамилия",
    "Отчество",
  ];

  @override
  void initState() {
    super.initState();
    _fieldControllers = List.generate(3, (i) => TextEditingController());
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => DialogApplicationWidget(
        statusIcon: IconHelper.done,
        content:
            "Заявление успешно подано. Можете отследить статус заявки в странице “Истории гос. услуг”",
        buttonTitle: TextHelper.returnToMainScreen,
        onPressed: () => context.router.popUntilRoot(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(
          title: "Сведения о ребенке",
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Заполните поля:",
              style: TextStyleHelper.f14w700,
            ),
            for (int i = 0; i < 3; i++) ...[
              const SizedBox(height: 15),
              CustomTextFieldWidget(
                controller: _fieldControllers[i],
                label: _fieldNames[i],
              ),
            ],
            const SizedBox(height: 30),
            const Text(
              "Выбери отдел ЗАГСа для получение свидетельства о рождении ребенка:",
              style: TextStyleHelper.f14w700,
            ),
            const SizedBox(height: 15),
            CustomDropDownWidget(
              listOfItem: listOfRegion,
              hintText: "Выберите отдел ЗАГСа",
              validator: (dynamic value) =>
                  value == null ? TextHelper.chooseSity : null,
              callback: ((item) => setState(
                    () => selectedRegion = item,
                  )),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.maxFinite,
              height: 45,
              child: CustomElevatedButtonWidget(
                onPressed: () {
                  _showDialog(context);
                },
                title: 'Подать заявку',
              ),
            ),
          ],
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
