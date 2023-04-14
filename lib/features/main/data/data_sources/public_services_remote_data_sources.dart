import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/base_repository.dart';
import 'package:my_family_flutter/core/utils/dependencies_injection.dart';
import 'package:my_family_flutter/features/main/data/models/register_couple_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PublicServicesRemoteDataSource {
  Future<Either<Failure, RegisterCoupleResponseModel>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  );
}

class PublicServicesRemoteDataSourceImpl extends BaseRepository
    implements PublicServicesRemoteDataSource {
  final SharedPreferences sharedPreferences;

  PublicServicesRemoteDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Either<Failure, RegisterCoupleResponseModel>> registerCouple(
    String partnerIin,
    String city,
    String office,
    bool isUserPay,
  ) async {
    final userIin = sharedPreferences.getString(
      CachedNames.cacheUserIin,
    );
    final cardNumber = sharedPreferences.getString(
      CachedNames.cardNumber,
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
        "cardNumber": cardNumber,
      },
    );

    return result.then<Either<Failure, RegisterCoupleResponseModel>>(
      (either) => either.fold(
        (l) => Left<Failure, RegisterCoupleResponseModel>(l),
        (r) => Right<Failure, RegisterCoupleResponseModel>(
          RegisterCoupleResponseModel.fromJson(r),
        ),
      ),
    );
  }
}
