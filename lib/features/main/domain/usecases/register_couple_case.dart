// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/main/domain/entity/register_couple_response.dart';
import 'package:my_family_flutter/features/main/domain/repository/public_services_repository.dart';

class RegisterCoupleCase
    extends UseCase<RegisterCoupleResponseEntity, RegisterCoupleParams> {
  final PublicServicesRepository repository;

  RegisterCoupleCase({required this.repository});

  @override
  Future<Either<Failure, RegisterCoupleResponseEntity>> call(
      RegisterCoupleParams params) async {
    return await repository.registerCouple(
      params.partnerIin,
      params.city,
      params.office,
      params.isUserPay,
    );
  }
}

class RegisterCoupleParams extends Equatable {
  final String partnerIin;
  final String city;
  final String office;
  final bool isUserPay;
  const RegisterCoupleParams({
    required this.partnerIin,
    required this.city,
    required this.office,
    required this.isUserPay,
  });

  @override
  List<Object?> get props => [
        partnerIin,
        city,
        office,
        isUserPay,
      ];
}
