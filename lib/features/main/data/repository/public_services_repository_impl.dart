// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/network_info.dart';
import 'package:my_family_flutter/features/main/data/data_sources/public_services_remote_data_sources.dart';
import 'package:my_family_flutter/features/main/data/models/register_couple_response_model.dart';
import 'package:my_family_flutter/features/main/domain/entity/register_couple_response.dart';
import 'package:my_family_flutter/features/main/domain/repository/public_services_repository.dart';

class PublicServicesRepositoryImpl extends PublicServicesRepository {
  final PublicServicesRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  PublicServicesRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, RegisterCoupleResponseEntity>> registerCouple(
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

  Future<Either<Failure, RegisterCoupleResponseEntity>> _registerCouple(
    Future<Either<Failure, RegisterCoupleResponseModel>> Function() register,
  ) async {
    if (await networkInfo.isConnected) {
      print("============CONNECTED============");
      final result = await register();
      return result.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      print("============NOOOOOO============");
      return Left(CacheFailure());
    }
  }
}
