// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/network_info.dart';
import 'package:my_family_flutter/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:my_family_flutter/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:my_family_flutter/features/profile/data/models/cards_model.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';
import 'package:my_family_flutter/features/profile/data/models/user_data_model.dart';
import 'package:my_family_flutter/features/profile/domain/entity/cars_entity.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';
import 'package:my_family_flutter/features/profile/domain/entity/user_data_entity.dart';
import 'package:my_family_flutter/features/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileLocalDataSource localDataSource;
  final ProfileRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  ProfileRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, IndividualEntity>> getIndividual() async {
    return await _getIndividual(() => remoteDataSource.getIndividual());
  }

  @override
  Future<Either<Failure, UserDataEntity>> getUserData() async {
    return await _getUserData(() => remoteDataSource.getUserData());
  }

  Future<Either<Failure, IndividualEntity>> _getIndividual(
    Future<Either<Failure, IndividualModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final remote = await get();
      return remote.fold(
        (l) => Left(l),
        (r) {
          localDataSource.individualToCache(r);
          return Right(r);
        },
      );
    } else {
      return Left(CacheFailure());
    }
  }

  Future<Either<Failure, UserDataEntity>> _getUserData(
    Future<Either<Failure, UserDataModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final remote = await get();
      return remote.fold(
        (l) => Left(l),
        (r) {
          localDataSource.userDataToCache(r);
          return Right(r);
        },
      );
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, CardListEntity>> getCardData() async {
    return await _getCardData(() => remoteDataSource.getCardData());
  }

  Future<Either<Failure, CardListEntity>> _getCardData(
    Future<Either<Failure, CardListModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final remote = await get();
      return remote.fold(
        (l) => Left(l),
        (r) {
          localDataSource.cardDataToCache(r);
          return Right(r);
        },
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
