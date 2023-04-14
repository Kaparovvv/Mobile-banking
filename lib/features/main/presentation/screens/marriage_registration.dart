import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';

import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';
import 'package:my_family_flutter/core/widgets/icon_background_widget.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_couple_case.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/bloc/register_couple_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/widgets/custom_drop_down_widget.dart';
import '../../../../core/exports/exports.dart';
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
    context.read<RegisterCoupleBloc>().add(const Started());
    return BlocConsumer<RegisterCoupleBloc, RegisterCoupleState>(
      listener: (context, state) {
        if (state is Registered) {
          _showDialog(
            context,
            DialogApplicationWidgetParams(
              statusIcon: IconHelper.done,
              content: TextHelper.applicationSuccess,
              buttonTitle: TextHelper.returnToMainScreen,
            ),
          );
        }
        if (state is Failed) {
          _showDialog(
            context,
            DialogApplicationWidgetParams(
              statusIcon: IconHelper.error,
              content: TextHelper.applicationUnsuccess,
              buttonTitle: TextHelper.returnToMainScreen,
            ),
          );
        }
      },
      builder: (context, state) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Scaffold(
            backgroundColor: ThemeHelper.white,
            appBar: AppBar(
              title: const AppBarTitle(
                title: TextHelper.marriageRegis,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
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
                        textInputAction: TextInputAction.done,
                        inputFormatters: [Masks.identificationNumber],
                        validate: (value) =>
                            ValidatesHelper.identityNumberValidate(
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
                                  validator: (dynamic value) => value == null
                                      ? TextHelper.chooseOffice
                                      : null,
                                  callback: ((item) => setState(
                                        () => selectedRegistryOffice = item,
                                      )),
                                ),
                              ],
                            )
                          : const SizedBox(),
                      _whoIsPayWidget(),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: CustomElevatedButtonWidget(
                            title: TextHelper.submitAnApplication.toUpperCase(),
                            enabled: isUserPay != true,
                            onPressed: () {
                              if (_formKey.currentState!.validate() &&
                                  isUserPay != true) {
                                if (_partnersIndenNumber.text.isNotEmpty &&
                                    selectedRegion != null &&
                                    selectedRegistryOffice != null) {
                                  context.read<RegisterCoupleBloc>().add(
                                        RegisterCoupleEvent.register(
                                          RegisterCoupleParams(
                                            city: selectedRegion as String,
                                            office: selectedRegistryOffice
                                                as String,
                                            partnerIin: _partnersIndenNumber
                                                .text
                                                .replaceAll(' ', ''),
                                            isUserPay: true,
                                          ),
                                        ),
                                      );
                                }
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
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

  void _showDialog(BuildContext context, DialogApplicationWidgetParams params) {
    showDialog(
      context: context,
      builder: (context) => DialogApplicationWidget(
        params: params,
        onPressed: () => context.router.replace(const NavBarRouterRoute()),
      ),
    );
  }
}
