import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';
import 'package:my_family_flutter/features/profile/data/models/user_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProfileLocalDataSource {
  Future<void> individualToCache(IndividualModel individualModel);
  Future<void> userDataToCache(UserDataModel userDataModel);
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPreferences;

  ProfileLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> individualToCache(IndividualModel individualModel) async {
    sharedPreferences.setString(
      CachedNames.cacheUserIin,
      individualModel.iin,
    );
  }

  @override
  Future<void> userDataToCache(UserDataModel userDataModel) async {
    sharedPreferences.setString(
      CachedNames.cardNumber,
      userDataModel.cardNumber,
    );
  }
}
