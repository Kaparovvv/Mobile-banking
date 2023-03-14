import 'dart:convert';
import 'dart:developer';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exceptions/exceptions.dart';
import '../../../../core/utils/dependencies_injection.dart';
import '../model/user_auth_model.dart';

abstract class UserTokenLocalDataSource {
  Future<UserAuthModel> getUserTokenFromCache();
  Future<void> userTokenToCache(UserAuthModel userTokenModel);
}

class UserTokenLocalDataSourceImpl implements UserTokenLocalDataSource {
  final SharedPreferences sharedPreferences;

  UserTokenLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<UserAuthModel> getUserTokenFromCache() {
    final jsonUserToken = sharedPreferences.getString(
      CachedNames.cacheUserToken,
    );
    if (jsonUserToken != null && jsonUserToken.isNotEmpty) {
      log(jsonUserToken.toString());
      return Future.value(
        UserAuthModel.fromJson(json.decode(jsonUserToken)),
      );
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> userTokenToCache(UserAuthModel userTokenModel) {
    return sharedPreferences.setString(
      CachedNames.cacheUserToken,
      userTokenModel.token,
    );
  }
}
