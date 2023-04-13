import 'dart:convert';
import 'dart:developer';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../model/user_auth_model.dart';

abstract class UserDataLocalDataSource {
  Future<UserDataModel> getUserDataFromCache();
  Future<void> userDataToCache(UserDataModel userTokenModel);
}

class UserDataLocalDataSourceImpl implements UserDataLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserDataLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserDataModel> getUserDataFromCache() {
    final userData = sharedPreferences.getString(
      CachedNames.cacheUserData,
    );
    if (userData != null && userData.isNotEmpty) {
      log(userData.toString());
      return Future.value(
        UserDataModel.fromJson(json.decode(userData)),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> userDataToCache(UserDataModel userDataModel) async {
    sharedPreferences.setString(
      CachedNames.cacheUserData,
      userDataModel.token,
    );
    sharedPreferences.setString(
      CachedNames.cacheUserID,
      userDataModel.id,
    );
  }
}
