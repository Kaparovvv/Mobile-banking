import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/profile/domain/entity/cars_entity.dart';
import 'package:my_family_flutter/features/profile/domain/repository/profile_repository.dart';

class GetCardDataCase extends UseCaseNoParams<CardListEntity> {
  final ProfileRepository repository;

  GetCardDataCase({required this.repository});

  @override
  Future<Either<Failure, CardListEntity>> call() async {
    return await repository.getCardData();
  }
}
