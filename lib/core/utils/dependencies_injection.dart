import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_family_flutter/core/services/api_client.dart';
import 'package:my_family_flutter/features/documents/data/data_sources/document_remote_data_source.dart';
import 'package:my_family_flutter/features/documents/data/repository/document_repository_impl.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_baby_birth_cartificate.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_marriage_certificate.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/certificate_bloc/certificate_bloc.dart';
import 'package:my_family_flutter/features/documents/presentation/bloc/documents_bloc/documents_bloc.dart';
import 'package:my_family_flutter/features/main/data/data_sources/public_services_remote_data_sources.dart';
import 'package:my_family_flutter/features/main/data/repository/public_services_repository_impl.dart';
import 'package:my_family_flutter/features/main/domain/repository/public_services_repository.dart';
import 'package:my_family_flutter/features/main/domain/usecases/get_cities_case.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_baby_case.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_couple_case.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/cities_bloc/cities_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/register_baby/register_baby_bloc.dart';
import 'package:my_family_flutter/features/main/presentation/blocs/register_couple_bloc/register_couple_bloc.dart';
import 'package:my_family_flutter/features/notification/data/datasources/notification_remote_data_source.dart';
import 'package:my_family_flutter/features/notification/data/repository/notification_repository_impl.dart';
import 'package:my_family_flutter/features/notification/domain/repository/notification_repository.dart';
import 'package:my_family_flutter/features/notification/domain/usecase/notification_case.dart';
import 'package:my_family_flutter/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:my_family_flutter/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:my_family_flutter/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:my_family_flutter/features/profile/data/repository/profile_repository_impl.dart';
import 'package:my_family_flutter/features/profile/domain/repository/profile_repository.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_card_data_case.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_individual_case.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_user_data_case.dart';
import 'package:my_family_flutter/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../features/auth/data/data_sources/user_token_local_data_source.dart';
import '../../features/auth/data/data_sources/user_token_remote_data_source.dart';
import '../../features/auth/data/repository/auth_repository_impl.dart';
import '../../features/auth/domain/repository/auth_repository.dart';
import '../../features/auth/domain/usecase/auth_user.dart';
import '../../features/auth/presentation/bloc/auth_bloc.dart';
import '../services/network_info.dart';

final GetIt di = GetIt.instance;

Future<void> init() async {
  di.registerLazySingleton<Connectivity>(() => Connectivity());
  di.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImpl(connectivity: di<Connectivity>()),
  );

  di.registerLazySingleton<Dio>(() => Dio());
  di.registerLazySingleton<APIClient>(() => APIClient());

  final sharedPreferences = await SharedPreferences.getInstance();
  di.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  di.registerLazySingleton(() => const FlutterSecureStorage(
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      ));

  //User Token Data Sources

  di.registerFactory<UserDataRemoteDataSource>(
    () => UserDataRemoteDataSourceImpl(),
  );
  di.registerFactory<UserDataLocalDataSource>(
    () => UserDataLocalDataSourceImpl(sharedPreferences: di()),
  );

  // Documents Data Sources

  di.registerFactory<DocumentRemoteDataSource>(
    () => DocumentRemoteDataSourceImpl(sharedPreferences: di()),
  );

  // Profile Data Sources

  di.registerFactory<ProfileRemoteDataSource>(
    () => ProfileRemoteDataSourceImpl(sharedPreferences: di()),
  );
  di.registerFactory<ProfileLocalDataSource>(
    () => ProfileLocalDataSourceImpl(sharedPreferences: di()),
  );

  // Public Services Data Sources

  di.registerFactory<PublicServicesRemoteDataSource>(
    () => PublicServicesRemoteDataSourceImpl(sharedPreferences: di()),
  );

  // Notification Data Sources

  di.registerFactory<NotificationRemoteDataSource>(
    () => NotificationRemoteDataSourceImpl(sharedPreferences: di()),
  );

  /// Blocs

  di.registerFactory<AuthBloc>(
    () => AuthBloc(authUser: di(), sharedPreferences: di()),
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
    () => ProfileBloc(
      getIndividualCase: di(),
      getUserDataCase: di(),
      getCardDataCase: di(),
      sharedPreferences: di(),
    ),
  );

  di.registerFactory<GetIndividualCase>(
    () => GetIndividualCase(repository: di()),
  );

  di.registerFactory<GetUserDataCase>(
    () => GetUserDataCase(repository: di()),
  );

  di.registerFactory<GetCardDataCase>(
    () => GetCardDataCase(repository: di()),
  );

  di.registerFactory<ProfileRepository>(
    () => ProfileRepositoryImpl(
      remoteDataSource: di(),
      localDataSource: di(),
      networkInfo: di(),
    ),
  );

  // Register Couple Bloc

  di.registerFactory<RegisterCoupleBloc>(
    () => RegisterCoupleBloc(registerCoupleCase: di()),
  );

  di.registerFactory<RegisterCoupleCase>(
    () => RegisterCoupleCase(repository: di()),
  );

  di.registerFactory<PublicServicesRepository>(
    () => PublicServicesRepositoryImpl(
      remoteDataSource: di(),
      networkInfo: di(),
    ),
  );

  // Register Baby Bloc

  di.registerFactory<RegisterBabyBloc>(
    () => RegisterBabyBloc(registerBabyCase: di()),
  );

  di.registerFactory<RegisterBabyCase>(
    () => RegisterBabyCase(repository: di()),
  );

  // Notification Bloc

  di.registerFactory<NotificationBloc>(
    () => NotificationBloc(notificationCase: di()),
  );

  di.registerFactory<NotificationCase>(
    () => NotificationCase(repository: di()),
  );

  di.registerFactory<NotificationRepository>(
    () => NotificationRepositoryImpl(
      remoteDataSource: di(),
      networkInfo: di(),
    ),
  );

  // Baby Birth Certificate Bloc

  di.registerFactory<CertificateBloc>(
    () => CertificateBloc(
      getBabyBirthCertificate: di(),
      getMarriageCertificate: di(),
    ),
  );

  di.registerFactory<GetBabyBirthCertificateCase>(
    () => GetBabyBirthCertificateCase(repository: di()),
  );

  di.registerFactory<GetMarriageCertificateCase>(
    () => GetMarriageCertificateCase(repository: di()),
  );

  // Cities Bloc

  di.registerFactory<CitiesBloc>(
    () => CitiesBloc(getCitiesCase: di()),
  );

  di.registerFactory<GetCitiesCase>(
    () => GetCitiesCase(repository: di()),
  );
}
