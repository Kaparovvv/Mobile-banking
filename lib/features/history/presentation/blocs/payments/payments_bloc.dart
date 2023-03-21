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
    'https://live24.ru/wp-content/uploads/2021/04/1558943321_tinkoff.png',
    'Kaspi Bank',
    '+7 777 444 56 76',
    6750.0,
  ),
);

class Payment {
  final String logoUrl;
  final String transaction;
  final String account;
  final double sum;

  Payment(this.logoUrl, this.transaction, this.account, this.sum);
}
