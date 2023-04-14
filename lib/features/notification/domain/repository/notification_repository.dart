import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_entity.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_list_entity.dart';

abstract class NotificationRepository {
  Future<Either<Failure, NotificationListEntity>> getData();
}
