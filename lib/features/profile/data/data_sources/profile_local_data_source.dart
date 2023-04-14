import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProfileLocalDataSource {
  Future<void> userDataToCache(IndividualModel individualModel);
}

class ProfileLocalDataSourceImpl implements ProfileLocalDataSource {
  final SharedPreferences sharedPreferences;

  ProfileLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> userDataToCache(IndividualModel individualModel) async {
    sharedPreferences.setString(
      CachedNames.cacheUserIin,
      individualModel.iin,
    );
  }
}
