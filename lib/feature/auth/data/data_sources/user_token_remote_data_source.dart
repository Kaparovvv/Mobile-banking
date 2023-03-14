import 'dart:developer';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/services/api_client.dart';

import '../../../../core/exceptions/failure.dart';
import '../../../../core/utils/dependencies_injection.dart';
import '../model/user_auth_model.dart';

abstract class UserTokenRemoteDataSource {
  Future<UserAuthModel> authUser(
    String phoneNumber,
    String password,
  );
}

class UserTokenRemoteDataSourceImpl implements UserTokenRemoteDataSource {
  @override
  Future<UserAuthModel> authUser(
    String phoneNumber,
    String password,
  ) async {
    APIClient client = di<APIClient>();

    final response = await client.get(
      '/api/auth/signin',
      params: {"phoneNumber": phoneNumber, "password": password},
    );

    if (response.statusCode == 200) {
      log('Auth response ===== ${response.statusCode}');
      UserAuthModel tokenModel = UserAuthModel.fromJson(response.data);
      log('Auth response ======= ${response.data}');

      return tokenModel;
    } else {
      throw ServerException();
    }
  }
}
