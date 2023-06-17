part of 'payments_bloc.dart';

abstract class PaymentsState extends Equatable {
  const PaymentsState();

  @override
  List<Object> get props => [];
}

class PaymentsInitial extends PaymentsState {}

class LoadingPaymentsState extends PaymentsState {}

class LoadedPaymentsState extends PaymentsState {
  final List<Payment> listOfPayments;

  const LoadedPaymentsState({required this.listOfPayments});
}

class ErrorPaymentsState extends PaymentsState {
  final String message;

  const ErrorPaymentsState({required this.message});
}
