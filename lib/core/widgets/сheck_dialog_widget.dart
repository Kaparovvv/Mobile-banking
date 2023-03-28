import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';

import '../../features/history/presentation/blocs/payments/payments_bloc.dart';
import '../exports/exports.dart';

class TransactionCheckDialogWidget extends StatelessWidget {
  const TransactionCheckDialogWidget({super.key, required this.paymentData});

  final Payment paymentData;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            TextHelper.check,
            style: TextStyleHelper.f25w700,
          ),
          const SizedBox(height: 20),
          _valueWithType(type: 'Операция', value: paymentData.transaction),
          const SizedBox(height: 10),
          _valueWithType(type: 'Дата', value: paymentData.date),
          const SizedBox(height: 10),
          _valueWithType(
              type: 'Номер документа', value: paymentData.checkNumber),
          const SizedBox(height: 10),
          _valueWithType(type: 'Статус', value: paymentData.status),
          const SizedBox(height: 10),
          _valueWithType(type: 'Сумма', value: paymentData.sum.toString()),
          const SizedBox(height: 10),
          _valueWithType(
              type: 'Комиссия', value: paymentData.commission.toString()),
          const SizedBox(height: 10),
          _valueWithType(type: 'Отправитель', value: paymentData.sender),
          const SizedBox(height: 10),
          _valueWithType(
              type: 'Получатель', value: paymentData.recepientAccount),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: CustomElevatedButtonWidget(
              title: TextHelper.back,
              onPressed: () => context.router.pop(),
            ),
          ),
        ],
      ),
    );
  }

  Column _valueWithType({
    required String type,
    required String value,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          type,
          style: TextStyleHelper.f16w500.copyWith(color: ThemeHelper.grey),
        ),
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyleHelper.f18w500,
        ),
      ],
    );
  }
}
