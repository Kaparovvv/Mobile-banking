import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/base_repository.dart';
import 'package:my_family_flutter/features/main/data/models/cities_model.dart';
import 'package:my_family_flutter/features/main/data/models/register_couple_response_model.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_baby_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PublicServicesRemoteDataSource {
  Future<Either<Failure, GovRequestResponseModel>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  );

  Future<Either<Failure, GovRequestResponseModel>> registerBaby(
    RegisterBabyParams params,
  );

  Future<Either<Failure, CitiesModel>> getCities(
    String requestType,
  );
}

class PublicServicesRemoteDataSourceImpl extends BaseRepository
    implements PublicServicesRemoteDataSource {
  final SharedPreferences sharedPreferences;

  PublicServicesRemoteDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Either<Failure, GovRequestResponseModel>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  ) async {
    final userIin = sharedPreferences.getString(
      CachedNames.cacheUserIin,
    );
    final cardId = sharedPreferences.getString(
      CachedNames.cardID,
    );

    final result = call(
      RestMethod.post,
      URLs.registerCouple,
      body: {
        "userIin": userIin,
        "partnerIin": partnerIin,
        "city": city,
        "office": office,
        "isUserPay": isUserPay,
        "cardId": cardId,
      },
    );

    return result.then<Either<Failure, GovRequestResponseModel>>(
      (either) => either.fold(
        (l) => Left<Failure, GovRequestResponseModel>(l),
        (r) => Right<Failure, GovRequestResponseModel>(
          GovRequestResponseModel.fromJson(r),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, GovRequestResponseModel>> registerBaby(
    RegisterBabyParams params,
  ) async {
    final userId = sharedPreferences.getString(
      CachedNames.cacheUserID,
    );

    final result = call(
      RestMethod.post,
      URLs.registerBaby,
      body: {
        "userId": userId,
        "firstName": params.firstName,
        "lastname": params.lastname,
        "middleName": params.middleName,
        "city": params.city,
        "office": params.office,
        "country": params.country,
        "birthDate": params.birthDate.toString(),
        "motherIin": params.motherIin,
        "fatherIin": params.fatherIin,
        "fatherFirstName": params.fatherFirstName,
        "fatherLastName": params.fatherLastName,
        "motherFirstName": params.motherFirstName,
        "motherLastName": params.motherLastName,
        "cardId": params.cardId,
        "gender": params.gender,
      },
    );

    return result.then<Either<Failure, GovRequestResponseModel>>(
      (either) => either.fold(
        (l) => Left<Failure, GovRequestResponseModel>(l),
        (r) => Right<Failure, GovRequestResponseModel>(
          GovRequestResponseModel.fromJson(r),
        ),
      ),
    );
  }

  @override
  Future<Either<Failure, CitiesModel>> getCities(
    String requestType,
  ) async {
    final result = call(
      RestMethod.get,
      URLs.cities,
      parametres: {
        "request_type": requestType,
      },
    );

    return result.then<Either<Failure, CitiesModel>>(
      (either) => either.fold(
        (l) => Left<Failure, CitiesModel>(l),
        (r) => Right<Failure, CitiesModel>(
          CitiesModel.fromJson(r),
        ),
      ),
    );
  }
}
