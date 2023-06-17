part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.started() = Started;
  const factory NotificationEvent.fetchData() = GetData;
}
