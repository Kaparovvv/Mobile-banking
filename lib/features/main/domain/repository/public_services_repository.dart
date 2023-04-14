import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/features/main/domain/entity/register_couple_response.dart';

abstract class PublicServicesRepository {
  Future<Either<Failure, RegisterCoupleResponseEntity>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  );
}
