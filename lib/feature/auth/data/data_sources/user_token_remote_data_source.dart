import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/services/api_client.dart';

import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/base_repository.dart';
import '../../../../core/utils/dependencies_injection.dart';
import '../../domain/entity/user_auth_entity.dart';
import '../model/user_auth_model.dart';

abstract class UserDataRemoteDataSource {
  Future<Either<Failure, UserDataModel>> authUser(
    String phoneNumber,
    String password,
  );
}

class UserDataRemoteDataSourceImpl extends BaseRepository
    implements UserDataRemoteDataSource {
  @override
  Future<Either<Failure, UserDataModel>> authUser(
    String phoneNumber,
    String password,
  ) async {
    final result = call(RestMethod.get, URLs.userLogin, parametres: {
      "phoneNumber": phoneNumber,
      "password": password,
    });
    return result.then<Either<Failure, UserDataModel>>(
      (either) => either.fold(
        (l) => Left<Failure, UserDataModel>(l),
        (r) => Right<Failure, UserDataModel>(UserDataModel.fromJson(r)),
      ),
    );
  }
}
