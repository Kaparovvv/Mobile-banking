// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class RegisterCoupleResponseEntity extends Equatable {
  final String requestId;
  final int sum;
  final DateTime date;

  const RegisterCoupleResponseEntity({
    required this.requestId,
    required this.sum,
    required this.date,
  });

  @override
  List<Object?> get props => [
        requestId,
        sum,
        date,
      ];
}
