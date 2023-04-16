// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/main/domain/entity/gov_request_response_entity.dart';
import 'package:my_family_flutter/features/main/domain/repository/public_services_repository.dart';

class RegisterBabyCase
    extends UseCase<GovRequestResponseEntity, RegisterBabyParams> {
  final PublicServicesRepository repository;

  RegisterBabyCase({required this.repository});

  @override
  Future<Either<Failure, GovRequestResponseEntity>> call(
    RegisterBabyParams params,
  ) async {
    return await repository.registerBaby(params.copyWith(
      motherIin: params.motherIin.replaceAll(' ', ''),
      fatherIin: params.fatherIin.replaceAll(' ', ''),
    ));
  }
}

class RegisterBabyParams extends Equatable {
  final String firstName;
  final String lastname;
  final String middleName;
  final String city;
  final String office;
  final String country;
  final DateTime birthDate;
  final String motherIin;
  final String fatherIin;
  final String fatherFirstName;
  final String fatherLastName;
  final String motherFirstName;
  final String motherLastName;
  final String cardId;
  final String gender;

  const RegisterBabyParams({
    required this.firstName,
    required this.lastname,
    required this.middleName,
    required this.city,
    required this.office,
    required this.country,
    required this.birthDate,
    required this.motherIin,
    required this.fatherIin,
    required this.fatherFirstName,
    required this.fatherLastName,
    required this.motherFirstName,
    required this.motherLastName,
    required this.cardId,
    required this.gender,
  });

  @override
  List<Object?> get props => [
        firstName,
        lastname,
        middleName,
        city,
        office,
        country,
        birthDate,
        motherIin,
        fatherIin,
        fatherFirstName,
        fatherLastName,
        motherFirstName,
        motherLastName,
        cardId,
        gender,
      ];

  RegisterBabyParams copyWith({
    String? firstName,
    String? lastname,
    String? middleName,
    String? city,
    String? office,
    String? country,
    DateTime? birthDate,
    String? motherIin,
    String? fatherIin,
    String? fatherFirstName,
    String? fatherLastName,
    String? motherFirstName,
    String? motherLastName,
    String? cardId,
    String? gender,
  }) {
    return RegisterBabyParams(
      firstName: firstName ?? this.firstName,
      lastname: lastname ?? this.lastname,
      middleName: middleName ?? this.middleName,
      city: city ?? this.city,
      office: office ?? this.office,
      country: country ?? this.country,
      birthDate: birthDate ?? this.birthDate,
      motherIin: motherIin ?? this.motherIin,
      fatherIin: fatherIin ?? this.fatherIin,
      fatherFirstName: fatherFirstName ?? this.fatherFirstName,
      fatherLastName: fatherLastName ?? this.fatherLastName,
      motherFirstName: motherFirstName ?? this.motherFirstName,
      motherLastName: motherLastName ?? this.motherLastName,
      cardId: cardId ?? this.cardId,
      gender: gender ?? this.gender,
    );
  }
}
