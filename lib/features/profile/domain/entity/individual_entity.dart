// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class IndividualEntity extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String middleName;
  final String phoneNumber;
  final String iin;
  final DateTime birthDate;
  final String homeCity;
  final String nationality;
  final String photo;
  final String maritalStatus;

  const IndividualEntity({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.phoneNumber,
    required this.iin,
    required this.birthDate,
    required this.homeCity,
    required this.nationality,
    required this.photo,
    required this.maritalStatus,
  });

  @override
  List<Object> get props {
    return [
      id,
      firstName,
      lastName,
      middleName,
      phoneNumber,
      iin,
      birthDate,
      homeCity,
      nationality,
      photo,
      maritalStatus,
    ];
  }
}
