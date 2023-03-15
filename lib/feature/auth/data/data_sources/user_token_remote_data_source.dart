import 'dart:developer';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/services/api_client.dart';

import '../../../../core/exceptions/failure.dart';
import '../../../../core/utils/dependencies_injection.dart';
import '../model/user_auth_model.dart';

abstract class UserDataRemoteDataSource {
  Future<UserDataModel> authUser(
    String phoneNumber,
    String password,
  );
}

class UserDataRemoteDataSourceImpl implements UserDataRemoteDataSource {
  @override
  Future<UserDataModel> authUser(
    String phoneNumber,
    String password,
  ) async {
    APIClient client = di<APIClient>();

    final response = await client.get(
      userLogin(),
      params: {
        "phoneNumber": phoneNumber,
        "password": password,
      },
    );

    if (response.statusCode == 200) {
      log('Auth response ===== ${response.statusCode}');
      UserDataModel userAuthModel = UserDataModel.fromJson(response.data);
      log('Auth response ======= ${response.data}');

      return userAuthModel;
    } else {
      throw ServerException();
    }
  }
}
