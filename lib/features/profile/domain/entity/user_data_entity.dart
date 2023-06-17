// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: constant_identifier_names

import 'package:equatable/equatable.dart';

enum Status {
  SINGLE,
  MARRIED,
  WIDOWED,
  DIVORCED,
  SEPARATED,
  REGISTERED_PARTNERSHIP,
}

class UserDataEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String status;
  final String iin;
  final String cardNumber;
  final double balance;
  final String email;

  const UserDataEntity({
    required this.firstName,
    required this.lastName,
    required this.status,
    required this.iin,
    required this.cardNumber,
    required this.balance,
    required this.email,
  });

  @override
  List<Object?> get props => [];
}
