// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/network_info.dart';
import 'package:my_family_flutter/features/main/data/data_sources/public_services_remote_data_sources.dart';
import 'package:my_family_flutter/features/main/data/models/cities_model.dart';
import 'package:my_family_flutter/features/main/data/models/register_couple_response_model.dart';
import 'package:my_family_flutter/features/main/domain/entity/cities_entity.dart';
import 'package:my_family_flutter/features/main/domain/entity/gov_request_response_entity.dart';
import 'package:my_family_flutter/features/main/domain/repository/public_services_repository.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_baby_case.dart';

class PublicServicesRepositoryImpl extends PublicServicesRepository {
  final PublicServicesRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  PublicServicesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, GovRequestResponseEntity>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  ) async {
    return await _registerCouple(
      () => remoteDataSource.registerCouple(
        partnerIin,
        city,
        office,
        isUserPay,
      ),
    );
  }

  @override
  Future<Either<Failure, GovRequestResponseEntity>> registerBaby(
    RegisterBabyParams params,
  ) async {
    return await _registerBaby(() => remoteDataSource.registerBaby(params));
  }

  Future<Either<Failure, GovRequestResponseEntity>> _registerCouple(
    Future<Either<Failure, GovRequestResponseModel>> Function() register,
  ) async {
    if (await networkInfo.isConnected) {
      final result = await register();
      return result.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }

  Future<Either<Failure, GovRequestResponseEntity>> _registerBaby(
    Future<Either<Failure, GovRequestResponseModel>> Function() register,
  ) async {
    if (await networkInfo.isConnected) {
      final result = await register();
      return result.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, CitiesEntity>> getCities(String requestType) async {
    return await _getCities(() => remoteDataSource.getCities(requestType));
  }

  Future<Either<Failure, CitiesEntity>> _getCities(
    Future<Either<Failure, CitiesModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final result = await get();
      return result.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
