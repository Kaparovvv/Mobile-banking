import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';
import 'package:my_family_flutter/core/widgets/custom_textfield_widget.dart';
import 'package:my_family_flutter/core/widgets/dialog_application_widget.dart';

import '../router/app_router.gr.dart';

class PaymentsBottomSheetWidget extends StatefulWidget {
  final String transaction;
  final String recepient;
  final String amountToBePaid;

  const PaymentsBottomSheetWidget({
    super.key,
    required this.transaction,
    required this.recepient,
    this.amountToBePaid = '',
  });

  @override
  State<PaymentsBottomSheetWidget> createState() =>
      _PaymentsBottomSheetWidgetState();
}

class _PaymentsBottomSheetWidgetState extends State<PaymentsBottomSheetWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _recepientController;
  late TextEditingController _sumController;
  var _isDontEnoughFunds = false;
  double balance = 45000;

  @override
  void initState() {
    _recepientController = TextEditingController();
    _sumController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: 10,
          child: Container(
            width: context.width * 0.2,
            height: 6,
            decoration: BoxDecoration(
              color: ThemeHelper.blueGrey100,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: context.width * 0.6,
                  child: Text(
                    widget.transaction,
                    maxLines: 3,
                    style: TextStyleHelper.f20w600,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 25),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: TextHelper.userBalance.toLowerCase(),
                        style: TextStyleHelper.f18w500
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      const WidgetSpan(
                        child: SizedBox(
                          width: 10,
                        ),
                      ),
                      TextSpan(
                        text: balance.toString(),
                        style: TextStyleHelper.f20w600
                            .copyWith(color: ThemeHelper.color08B89D),
                      ),
                    ],
                  ),
                ),
                _isDontEnoughFunds
                    ? Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          TextHelper.dontEnoughFundsance,
                          style: TextStyleHelper.f14w600
                              .copyWith(color: ThemeHelper.red),
                        ),
                      )
                    : const SizedBox(),
                const SizedBox(height: 30),
                const Text(
                  TextHelper.recipient,
                  style: TextStyleHelper.f14w600,
                ),
                const SizedBox(height: 10),
                CustomTextFieldWidget(
                  controller: _recepientController,
                  enabled: false,
                  value: widget.recepient,
                  validate: (value) => ValidatesHelper.titleValidate(
                    value!,
                    TextHelper.recipient.toLowerCase(),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  TextHelper.enterThePaymentSum,
                  style: TextStyleHelper.f14w600,
                ),
                const SizedBox(height: 10),
                CustomTextFieldWidget(
                  controller: _sumController,
                  keyboardType: TextInputType.number,
                  label: TextHelper.sum,
                  textInputAction: TextInputAction.done,
                  value: widget.amountToBePaid,
                  validate: (value) => ValidatesHelper.titleValidate(
                    value!,
                    TextHelper.enterThePaymentSum.toLowerCase(),
                  ),
                  onChanged: (value) {
                    _onChangedSum(double.parse(value));
                  },
                ),
                const SizedBox(height: 40),
                Align(
                  alignment: Alignment.topCenter,
                  child: CustomElevatedButtonWidget(
                    title: TextHelper.toPay,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _comparisonWithBalance(
                          double.parse(_sumController.text),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => DialogApplicationWidget(
        statusIcon: IconHelper.done,
        content: TextHelper.applicationSuccess,
        buttonTitle: TextHelper.returnToMainScreen,
        onPressed: () => context.router.replace(const NavBarRouterRoute()),
      ),
    );
  }

  void _comparisonWithBalance(double sum) {
    if (sum > balance) {
      setState(() {
        _isDontEnoughFunds = true;
      });
    } else {
      setState(() {
        _isDontEnoughFunds = false;
      });

      _showDialog(context);
    }
  }

  void _onChangedSum(double sum) {
    if (sum > balance) {
      setState(() {
        _isDontEnoughFunds = true;
      });
    } else {
      setState(() {
        _isDontEnoughFunds = false;
      });
    }
  }

  @override
  void dispose() {
    _recepientController.dispose();
    _sumController.dispose();
    super.dispose();
  }
}
