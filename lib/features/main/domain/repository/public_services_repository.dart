import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/features/main/domain/entity/gov_request_response_entity.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_baby_case.dart';

abstract class PublicServicesRepository {
  Future<Either<Failure, GovRequestResponseEntity>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  );

  Future<Either<Failure, GovRequestResponseEntity>> registerBaby(
    RegisterBabyParams params,
  );
}
