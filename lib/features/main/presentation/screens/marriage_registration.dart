import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';

import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/core/widgets/icon_background_widget.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/custom_drop_down_widget.dart';
import '../../../../core/exports/exports.dart';
import '../../../../core/widgets/app_bar_title.dart';
import '../../../../core/widgets/custom_textfield_widget.dart';
import '../../../../core/widgets/payments_bottom_sheet_widget.dart';
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
  dynamic isUserPay;

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
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: IconBackgroundWidget(
                    width: context.width * 0.5,
                    height: context.height * 0.2,
                    padding: const EdgeInsets.all(35),
                    iconUrl: IconHelper.marriage,
                  ),
                ),
                const SizedBox(height: 30),
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
                _whoIsPayWidget(),
                isUserPay == false
                    ? Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CustomElevatedButtonWidget(
                            title: TextHelper.submitAnApplication.toUpperCase(),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _showDialog(context);
                              }
                            },
                          ),
                        ),
                      )
                    : const SizedBox(),
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

  Widget _whoIsPayWidget() {
    return _partnersIndenNumber.text.isNotEmpty &&
            selectedRegion != null &&
            selectedRegistryOffice != null
        ? Padding(
            padding: const EdgeInsets.only(top: 40),
            child: WhoPayTheFeeWidget(
              whoIsPay: ((whoIsPay) => setState(
                    () {
                      isUserPay = whoIsPay;
                      isUserPay == true
                          ? _showModalBottomSheet(context)
                          : () {};
                    },
                  )),
            ),
          )
        : const SizedBox();
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return const PaymentsBottomSheetWidget(
          transaction: TextHelper.marriageRegis,
          recepient: 'Оплата госпошлины',
          amountToBePaid: '306300',
        );
      },
      isScrollControlled: true,
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => DialogApplicationWidget(
        statusIcon: IconHelper.done,
        content: TextHelper.applicationUnsuccess,
        buttonTitle: TextHelper.well,
        onPressed: () => context.router.pop(),
      ),
    );
  }
}
