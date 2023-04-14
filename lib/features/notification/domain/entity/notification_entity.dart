// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:my_family_flutter/features/notification/domain/entity/request_user_entity.dart';

class NotificationEntity extends Equatable {
  final String id;
  final RequestUserEntity requestUser;
  final String city;
  final String office;
  final DateTime date;
  final String status;
  final String type;

  const NotificationEntity({
    required this.id,
    required this.requestUser,
    required this.city,
    required this.office,
    required this.date,
    required this.status,
    required this.type,
  });

  @override
  List<Object?> get props => [
        id,
        requestUser,
        city,
        office,
        date,
        status,
        type,
      ];
}
