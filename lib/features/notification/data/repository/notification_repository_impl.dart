import 'package:my_family_flutter/core/services/network_info.dart';
import 'package:my_family_flutter/features/notification/data/datasources/notification_remote_data_source.dart';
import 'package:my_family_flutter/features/notification/data/models/notification_list_model.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_list_entity.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/features/notification/domain/repository/notification_repository.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  NotificationRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  final NotificationRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, NotificationListEntity>> getData() async {
    return await _getData(() => remoteDataSource.getData());
  }

  Future<Either<Failure, NotificationListEntity>> _getData(
    Future<Either<Failure, NotificationListModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final result = await get();
      return result.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
