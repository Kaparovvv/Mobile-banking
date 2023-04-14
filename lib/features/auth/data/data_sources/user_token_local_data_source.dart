import 'dart:convert';
import 'dart:developer';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../model/user_auth_model.dart';

abstract class UserDataLocalDataSource {
  Future<UserAuthModel> getUserAuthFromCache();
  Future<void> userAuthToCache(UserAuthModel userTokenModel);
}

class UserDataLocalDataSourceImpl implements UserDataLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserDataLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserAuthModel> getUserAuthFromCache() {
    final userData = sharedPreferences.getString(
      CachedNames.cacheUserData,
    );
    if (userData != null && userData.isNotEmpty) {
      log(userData.toString());
      return Future.value(
        UserAuthModel.fromJson(json.decode(userData)),
      );
    } else {
      throw CacheException(message: "Could load the cache!");
    }
  }

  @override
  Future<void> userAuthToCache(UserAuthModel userDataModel) async {
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
