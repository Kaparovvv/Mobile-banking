import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_family_flutter/core/services/api_client.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../feature/auth/data/data_sources/user_token_local_data_source.dart';
import '../../feature/auth/data/data_sources/user_token_remote_data_source.dart';
import '../../feature/auth/data/repository/auth_repository.dart';
import '../../feature/auth/domain/repository/auth_repository.dart';
import '../../feature/auth/domain/usecase/auth_user.dart';
import '../../feature/auth/presentation/bloc/auth_bloc.dart';
import '../services/network_info.dart';

final GetIt di = GetIt.instance;

Future<void> init() async {
  di.registerLazySingleton(() => Connectivity());
  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectivity: di<Connectivity>()),
  );

  di.registerLazySingleton(() => Dio());
  di.registerLazySingleton(() => APIClient());

  final sharedPreferences = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPreferences);

  //UserToken
  di.registerFactory<UserDataRemoteDataSource>(
    () => UserDataRemoteDataSourceImpl(),
  );
  di.registerFactory<UserDataLocalDataSource>(
    () => UserDataLocalDataSourceImpl(sharedPreferences: di()),
  );

  /// Blocs

  di.registerFactory<AuthBloc>(
    () => AuthBloc(authUser: di()),
  );

  di.registerFactory<AuthUser>(
    () => AuthUser(di()),
  );

  di.registerFactory<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: di(),
      localDataSource: di(),
      networkInfo: di(),
    ),
  );
}
