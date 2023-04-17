// ignore_for_file: constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/main/domain/entity/cities_entity.dart';
import 'package:my_family_flutter/features/main/domain/repository/public_services_repository.dart';

enum CitiesRequestType {
  MARRIAGE,
  BABY_BIRTH,
}

class GetCitiesCase extends UseCase<CitiesEntity, CitiesRequestType> {
  final PublicServicesRepository repository;

  GetCitiesCase({required this.repository});

  @override
  Future<Either<Failure, CitiesEntity>> call(
    CitiesRequestType params,
  ) async {
    print(params.name);
    return await repository.getCities(params.name);
  }
}
