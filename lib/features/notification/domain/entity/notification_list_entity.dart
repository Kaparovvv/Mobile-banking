// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:my_family_flutter/features/notification/domain/entity/notification_entity.dart';

class NotificationListEntity extends Equatable {
  final List<NotificationEntity> notification;

  const NotificationListEntity({
    required this.notification,
  });

  @override
  List<Object?> get props => [notification];
}
