import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/urls.dart';

import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/base_repository.dart';
import '../model/user_auth_model.dart';

abstract class UserDataRemoteDataSource {
  Future<Either<Failure, UserAuthModel>> authUser(
    String phoneNumber,
    String password,
  );
}

class UserDataRemoteDataSourceImpl extends BaseRepository
    implements UserDataRemoteDataSource {
  @override
  Future<Either<Failure, UserAuthModel>> authUser(
    String phoneNumber,
    String password,
  ) async {
    final result = call(RestMethod.get, URLs.userLogin, parametres: {
      "phoneNumber": phoneNumber,
      "password": password,
    });
    return result.then<Either<Failure, UserAuthModel>>(
      (either) => either.fold(
        (l) => Left<Failure, UserAuthModel>(l),
        (r) => Right<Failure, UserAuthModel>(UserAuthModel.fromJson(r)),
      ),
    );
  }
}
