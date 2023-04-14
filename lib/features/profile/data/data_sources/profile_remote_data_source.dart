import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/base_repository.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';
import 'package:my_family_flutter/features/profile/data/models/user_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProfileRemoteDataSource {
  Future<Either<Failure, IndividualModel>> getIndividual();
  Future<Either<Failure, UserDataModel>> getUserData();
}

class ProfileRemoteDataSourceImpl extends BaseRepository
    implements ProfileRemoteDataSource {
  final SharedPreferences sharedPreferences;

  ProfileRemoteDataSourceImpl({required this.sharedPreferences});
  @override
  Future<Either<Failure, IndividualModel>> getIndividual() async {
    final userID = sharedPreferences.getString(
      CachedNames.cacheUserID,
    );
    final result = call(
      RestMethod.get,
      '${URLs.individuals}/${userID ?? ""}',
    );

    return result.then<Either<Failure, IndividualModel>>(
      (either) => either.fold(
        (l) => Left<Failure, IndividualModel>(l),
        (r) => Right<Failure, IndividualModel>(IndividualModel.fromJson(r)),
      ),
    );
  }

  @override
  Future<Either<Failure, UserDataModel>> getUserData() async {
    final userId = sharedPreferences.getString(CachedNames.cacheUserID);
    final result = call(RestMethod.get, "${URLs.userInfo}/$userId");
    return result.then<Either<Failure, UserDataModel>>(
      (either) => either.fold(
        (l) => Left<Failure, UserDataModel>(l),
        (r) => Right<Failure, UserDataModel>(UserDataModel.fromJson(r)),
      ),
    );
  }
}
