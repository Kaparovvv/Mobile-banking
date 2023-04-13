import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/base_repository.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<Failure, IndividualModel>> getIndividual();
}

class ProfileRemoteDataSourceImpl extends BaseRepository
    implements ProfileRemoteDataSource {
  @override
  Future<Either<Failure, IndividualModel>> getIndividual() async {
    final result = call(
      RestMethod.get,
      URLs.individuals,
    );

    return result.then<Either<Failure, IndividualModel>>(
      (either) => either.fold(
        (l) => Left<Failure, IndividualModel>(l),
        (r) => Right<Failure, IndividualModel>(IndividualModel.fromJson(r)),
      ),
    );
  }
}
