// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_list_entity.dart';
import 'package:my_family_flutter/features/notification/domain/repository/notification_repository.dart';

class NotificationCase extends UseCaseNoParams<NotificationListEntity> {
  NotificationCase({
    required this.repository,
  });

  final NotificationRepository repository;

  @override
  Future<Either<Failure, NotificationListEntity>> call() async {
    return await repository.getData();
  }
}
