import 'package:my_family_flutter/features/notification/data/models/request_user_model.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_entity.dart';

class NotificationModel extends NotificationEntity {
  const NotificationModel({
    required id,
    required requestUser,
    required city,
    required office,
    required date,
    required status,
    required type,
  }) : super(
          id: id,
          requestUser: requestUser,
          city: city,
          office: office,
          date: date,
          status: status,
          type: type,
        );

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        id: json['id'],
        requestUser: RequestUserModel.fromJson(
          json["requestUser"],
        ),
        city: json["city"],
        office: json["office"],
        date: DateTime.parse(json["date"]),
        status: json["status"],
        type: json["type"],
      );
}
