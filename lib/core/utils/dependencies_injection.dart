import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_family_flutter/core/services/api_client.dart';
import 'package:my_family_flutter/features/documents/data/data_sources/document_local_data_source.dart';
import 'package:my_family_flutter/features/documents/data/data_sources/document_remote_data_source.dart';
import 'package:my_family_flutter/features/documents/data/repository/document_repository_impl.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/documents_bloc.dart';
import 'package:my_family_flutter/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:my_family_flutter/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:my_family_flutter/features/profile/data/repository/profile_repository_impl.dart';
import 'package:my_family_flutter/features/profile/domain/repository/profile_repository.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/usecase.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/data_sources/user_token_local_data_source.dart';
import '../../features/auth/data/data_sources/user_token_remote_data_source.dart';
import '../../features/auth/data/repository/auth_repository_impl.dart';
import '../../features/auth/domain/repository/auth_repository.dart';
import '../../features/auth/domain/usecase/auth_user.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
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

  // Documents

  di.registerFactory<DocumentRemoteDataSource>(
    () => DocumentRemoteDataSourceImpl(),
  );

  // Profile

  di.registerFactory<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(),
  );
  di.registerFactory<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImpl(),
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

  // Document Bloc

  di.registerFactory<DocumentsBloc>(
    () => DocumentsBloc(getDocument: di()),
  );

  di.registerFactory<GetDocument>(
    () => GetDocument(di()),
  );

  di.registerFactory<DocumentRepository>(
    () => DocumentRepositoryImpl(
      remoteDataSource: di(),
      networkInfo: di(),
    ),
  );

  // Profile Bloc

  di.registerFactory<ProfileBloc>(
    () => ProfileBloc(getIndividualCase: di()),
  );

  di.registerFactory<GetIndividualCase>(
    () => GetIndividualCase(profileRepository: di()),
  );

  di.registerFactory<ProfileRepository>(
    () => ProfileRepositoryImpl(
      remoteDataSource: di(),
      localDataSource: di(),
      networkInfo: di(),
    ),
  );
}
