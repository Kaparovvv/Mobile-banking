import 'package:my_family_flutter/features/notification/data/models/notification_model.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_list_entity.dart';

class NotificationListModel extends NotificationListEntity {
  const NotificationListModel({
    required notification,
  }) : super(
          notification: notification,
        );

  factory NotificationListModel.fromJson(List<dynamic> json) =>
      NotificationListModel(
          notification: List<NotificationModel>.from(
        (json).map(
          (e) => NotificationModel.fromJson(e),
        ),
      ));
}
