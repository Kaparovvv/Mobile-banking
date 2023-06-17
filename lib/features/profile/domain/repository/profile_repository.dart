import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/features/profile/domain/entity/cars_entity.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';
import 'package:my_family_flutter/features/profile/domain/entity/user_data_entity.dart';

abstract class ProfileRepository {
  Future<Either<Failure, IndividualEntity>> getIndividual();
  Future<Either<Failure, UserDataEntity>> getUserData();
  Future<Either<Failure, CardListEntity>> getCardData();
}
