// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class RequestUserEntity extends Equatable {
  final String id;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? iin;
  final DateTime? birthDate;
  final String? homeCity;
  final String? nationality;
  final String? photo;
  final String? phoneNumber;
  final String? maritalStatus;

  const RequestUserEntity({
    required this.id,
    this.firstName,
    this.lastName,
    this.middleName,
    this.iin,
    this.birthDate,
    this.homeCity,
    this.nationality,
    this.photo,
    this.phoneNumber,
    this.maritalStatus,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        middleName,
        iin,
        birthDate,
        homeCity,
        nationality,
        photo,
        phoneNumber,
        maritalStatus,
      ];
}
