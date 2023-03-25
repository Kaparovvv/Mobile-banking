import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/widgets/button_with_background_widget.dart';

class TransactionCheckDialogWidget extends StatelessWidget {
  const TransactionCheckDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Чек',
            style: TextStyleHelper.f25w700,
          ),
          const SizedBox(height: 20),
          _valueWithType(type: 'Операция', value: transactionData.transaction),
          const SizedBox(height: 10),
          _valueWithType(type: 'Дата', value: transactionData.date),
          const SizedBox(height: 10),
          _valueWithType(
              type: 'Номер документа', value: transactionData.documentNumber),
          const SizedBox(height: 10),
          _valueWithType(type: 'Статус', value: transactionData.status),
          const SizedBox(height: 10),
          _valueWithType(type: 'Сумма', value: transactionData.sum.toString()),
          const SizedBox(height: 10),
          _valueWithType(
              type: 'Комиссия', value: transactionData.commission.toString()),
          const SizedBox(height: 10),
          _valueWithType(type: 'Отправитель', value: transactionData.sender),
          const SizedBox(height: 10),
          _valueWithType(type: 'Получатель', value: transactionData.recepient),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.center,
            child: CustomElevatedButtonWidget(
              title: TextHelper.well,
              onPressed: () => context.router.pop(),
            ),
          ),
        ],
      ),
    );
  }

  static TransactionData transactionData = TransactionData(
    'перевод с карты на карту',
    '12.03.2023, 12:45',
    '728392380',
    'Успешно выполнен',
    3063.0,
    0.00,
    '**** 9679',
    '**** 6756',
  );

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

class TransactionData {
  final String transaction;
  final String date;
  final String documentNumber;
  final String status;
  final double sum;
  final double commission;
  final String sender;
  final String recepient;

  TransactionData(this.transaction, this.date, this.documentNumber, this.status,
      this.sum, this.commission, this.sender, this.recepient);
}
