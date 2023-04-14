import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/profile/domain/repository/profile_repository.dart';

import '../entity/user_data_entity.dart';

class GetUserDataCase extends UseCaseNoParams<UserDataEntity> {
  final ProfileRepository repository;

  GetUserDataCase({required this.repository});

  @override
  Future<Either<Failure, UserDataEntity>> call() async {
    return await repository.getUserData();
  }
}
