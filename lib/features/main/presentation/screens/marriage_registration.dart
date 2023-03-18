import 'package:flutter/material.dart';

import 'package:my_family_flutter/features/auth/presentation/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/custom_drop_down_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/cached_names.dart';
import '../../../../core/exports/exports.dart';
import '../../../../core/utils/dependencies_injection.dart';
import '../../../../core/widgets/app_bar_title.dart';
import '../../../../core/widgets/custom_outlined_button_widget.dart';
import '../../../../core/widgets/custom_textfield_widget.dart';
import '../widgets/who_pay_thefee_widget.dart';

class MarriageRegistrationScreen extends StatefulWidget {
  const MarriageRegistrationScreen({super.key});

  @override
  State<MarriageRegistrationScreen> createState() =>
      _MarriageRegistrationScreenState();
}

class _MarriageRegistrationScreenState
    extends State<MarriageRegistrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  ValidatesHelper validatesHelper = ValidatesHelper();
  late TextEditingController _partnersIndenNumber;
  Object? selectedRegion;
  Object? selectedRegistryOffice;
  Object? selectedInvoice;
  bool? isUserPay = true;

  @override
  void initState() {
    _partnersIndenNumber = TextEditingController();
    super.initState();
  }

  List<String> listOfRegion = <String>['Алмата'];
  List<String> listOfInvoice = <String>['Kaspi', 'Halyk Bank'];

  List<String> listOfOffice = <String>[
    'Алматинский',
    'Ауезовский',
    'Алатуского',
    'Бостандыкского',
    'Жетысуского',
    'Медеуского',
    'Турксибского',
    'Наурызбайского',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeHelper.white,
      appBar: AppBar(
        title: const AppBarTitle(
          title: TextHelper.marriageRegis,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  TextHelper.enterTheFollowingData,
                  style: TextStyleHelper.f18w500,
                ),
                const SizedBox(height: 40),
                CustomTextFieldWidget(
                  label: TextHelper.partnersIIN,
                  controller: _partnersIndenNumber,
                  keyboardType: TextInputType.number,
                  inputFormatters: [Masks.identificationNumber],
                  validate: (value) => validatesHelper.titleValidate(
                    value!,
                    TextHelper.partnersIIN,
                  ),
                ),
                const SizedBox(height: 40),
                CustomDropDownWidget(
                  listOfItem: listOfRegion,
                  hintText: TextHelper.chooseSity,
                  validator: (dynamic value) =>
                      value == null ? TextHelper.chooseSity : null,
                  callback: ((item) => setState(
                        () => selectedRegion = item,
                      )),
                ),
                selectedRegion != null
                    ? Column(
                        children: [
                          const SizedBox(height: 40),
                          CustomDropDownWidget(
                            listOfItem: listOfOffice,
                            hintText: TextHelper.chooseOffice,
                            validator: (dynamic value) =>
                                value == null ? TextHelper.chooseOffice : null,
                            callback: ((item) => setState(
                                  () => selectedRegistryOffice = item,
                                )),
                          ),
                        ],
                      )
                    : const SizedBox(),
                const SizedBox(height: 40),
                WhoPayTheFeeWidget(
                  whoIsPay: ((whoIsPay) => setState(
                        () => isUserPay = whoIsPay,
                      )),
                ),
                isUserPay == true
                    ? Column(
                        children: [
                          const SizedBox(height: 40),
                          CustomDropDownWidget(
                            listOfItem: listOfInvoice,
                            hintText: TextHelper.chooseInvoice,
                            validator: (dynamic value) =>
                                value == null ? TextHelper.chooseInvoice : null,
                            callback: ((item) => setState(
                                  () => selectedInvoice = item,
                                )),
                          ),
                        ],
                      )
                    : const SizedBox(),
                const SizedBox(height: 50),
                Align(
                  alignment: Alignment.center,
                  child: CustomOutlinedButtonWidget(
                    textButton: TextHelper.submitAnApplication.toUpperCase(),
                    onPressed: () {
                      print(di
                          .get<SharedPreferences>()
                          .getString(CachedNames.cacheUserData)
                          .toString());
                      di
                          .get<SharedPreferences>()
                          .remove(CachedNames.cacheUserData);
                      print(di
                          .get<SharedPreferences>()
                          .getString(CachedNames.cacheUserData)
                          .toString());

                      if (_formKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => const DialogApplicationWidget(
                            statusIcon: IconHelper.error,
                            content: TextHelper.applicationUnsuccess,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _partnersIndenNumber.dispose();
    super.dispose();
  }
}
