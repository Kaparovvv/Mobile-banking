import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';
import 'package:my_family_flutter/features/profile/domain/repository/profile_repository.dart';

class GetIndividualCase extends UseCaseNoParams<IndividualEntity> {
  final ProfileRepository repository;

  GetIndividualCase({required this.repository});

  @override
  Future<Either<Failure, IndividualEntity>> call() async {
    return await repository.getIndividual();
  }
}
