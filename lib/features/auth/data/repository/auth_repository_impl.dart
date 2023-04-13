
import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/exceptions.dart';
import 'package:my_family_flutter/features/auth/data/model/user_auth_model.dart';
import 'package:my_family_flutter/features/auth/domain/entity/user_auth_entity.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/network_info.dart';
import '../../domain/repository/auth_repository.dart';
import '../data_sources/user_token_local_data_source.dart';
import '../data_sources/user_token_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final UserDataRemoteDataSource remoteDataSource;
  final UserDataLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, UserAuthEntity>> authUser(
    String nickname,
    String password,
  ) async {
    return await _authUser(
      () => remoteDataSource.authUser(nickname, password),
    );
  }

  Future<Either<Failure, UserAuthEntity>> _authUser(
    Future<Either<Failure, UserDataModel>> Function() auth,
  ) async {
    if (await networkInfo.isConnected) {
      final remoteToken = await auth();
      return remoteToken.fold(
        (l) => Left(l),
        (r) {
          localDataSource.userDataToCache(r);
          return Right(r);
        },
      );
    } else {
      try {
        final localToken = await localDataSource.getUserDataFromCache();
        return Right(localToken);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
