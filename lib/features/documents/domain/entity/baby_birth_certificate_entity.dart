// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class BabyBirthCertificateEntity extends Equatable {
  final String id;
  final String city;
  final String office;
  final String country;
  final FatherEntity father;
  final MotherEntity mother;
  final String babyFirstName;
  final String babyLastName;
  final String babyMiddleName;
  final String babyGender;

  const BabyBirthCertificateEntity({
    required this.id,
    required this.city,
    required this.office,
    required this.country,
    required this.father,
    required this.mother,
    required this.babyFirstName,
    required this.babyLastName,
    required this.babyMiddleName,
    required this.babyGender,
  });

  @override
  List<Object?> get props => [
        id,
        city,
        office,
        country,
        father,
        mother,
        babyFirstName,
        babyLastName,
        babyMiddleName,
        babyGender,
      ];
}

class FatherEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String middleName;
  final String nationality;

  const FatherEntity({
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.nationality,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        middleName,
        nationality,
      ];
}

class MotherEntity extends Equatable {
  final String firstName;
  final String lastName;
  final String middleName;
  final String nationality;

  const MotherEntity({
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.nationality,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        middleName,
        nationality,
      ];
}
