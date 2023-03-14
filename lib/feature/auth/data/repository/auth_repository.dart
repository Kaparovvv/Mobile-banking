import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/exceptions.dart';
import 'package:my_family_flutter/feature/auth/data/model/user_auth_model.dart';
import 'package:my_family_flutter/feature/auth/domain/entity/user_auth_entity.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/network_info.dart';
import '../../domain/repository/auth_repository.dart';
import '../data_sources/user_token_local_data_source.dart';
import '../data_sources/user_token_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final UserTokenRemoteDataSource remoteDataSource;
  final UserTokenLocalDataSource localDataSource;
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
      Future<UserAuthModel> Function() auth) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteToken = await auth();
        localDataSource.userTokenToCache(remoteToken);
        return Right(remoteToken);
      } on ServerFailure {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localToken = await localDataSource.getUserTokenFromCache();
        return Right(localToken);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
