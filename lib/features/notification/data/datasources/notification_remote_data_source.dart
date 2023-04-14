import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/base_repository.dart';
import 'package:my_family_flutter/features/notification/data/models/notification_list_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NotificationRemoteDataSource {
  Future<Either<Failure, NotificationListModel>> getData();
}

class NotificationRemoteDataSourceImpl extends BaseRepository
    implements NotificationRemoteDataSource {
  NotificationRemoteDataSourceImpl({required this.sharedPreferences});

  final SharedPreferences sharedPreferences;

  @override
  Future<Either<Failure, NotificationListModel>> getData() {
    final userId = sharedPreferences.getString(CachedNames.cacheUserID);
    log(userId ?? "YES");
    final result = call(
      RestMethod.get,
      "${URLs.notificationList}/$userId",
    );

    return result.then<Either<Failure, NotificationListModel>>(
      (either) => either.fold(
        (l) => Left<Failure, NotificationListModel>(l),
        (r) {
          log("YES");
          return Right<Failure, NotificationListModel>(
            NotificationListModel.fromJson(r),
          );
        },
      ),
    );
  }
}
