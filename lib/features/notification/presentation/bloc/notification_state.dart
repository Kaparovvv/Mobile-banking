part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  factory NotificationState({
    required List<NotificationEntity> list,
    required String message,
    required bool isFailed,
  }) = _NotificationState;

  const NotificationState._();

  factory NotificationState.initial() => NotificationState(
        list: [],
        message: "Starting",
        isFailed: false,
      );
  factory NotificationState.loading() => NotificationState(
        list: [],
        message: "Loading",
        isFailed: false,
      );
  factory NotificationState.loaded() => NotificationState(
        list: [],
        message: "Loaded",
        isFailed: false,
      );
  factory NotificationState.error() => NotificationState(
        list: [],
        message: "Error",
        isFailed: true,
      );
}
