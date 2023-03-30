import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'payments_event.dart';
part 'payments_state.dart';

class PaymentsBloc extends Bloc<PaymentsEvent, PaymentsState> {
  PaymentsBloc() : super(PaymentsInitial()) {
    on<GetPaymentsEvent>((event, emit) {
      try {
        emit(LoadingPaymentsState());
        emit(LoadedPaymentsState(listOfPayments: listOfPayments));
      } catch (e) {
        emit(ErrorPaymentsState(message: e.toString()));
      }
    });
  }
}

List<Payment> listOfPayments = List.generate(
  10,
  (index) => Payment(
      'https://static10.tgstat.ru/channels/_0/32/32037638e513d700dace34fa7a514b50.jpg',
      'Налоговая служба Казахстана',
      '1233444455573887',
      '6327637832899008',
      '12.03.2023, 13:23',
      3063,
      0,
      'Успешно выполнен',
      'оплата госпошлины',
      '8293364'),
);

class Payment {
  final String recepientLogo;
  final String recepient;
  final String recepientAccount;
  final String sender;
  final String date;
  final double sum;
  final double commission;
  final String status;
  final String transaction;
  final String checkNumber;

  Payment(
    this.recepientLogo,
    this.recepient,
    this.recepientAccount,
    this.sender,
    this.date,
    this.sum,
    this.commission,
    this.status,
    this.transaction,
    this.checkNumber,
  );
}
