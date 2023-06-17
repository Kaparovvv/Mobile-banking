part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  factory NotificationState({
    required List<NotificationEntity> list,
    required String message,
    required bool loading,
    required bool loaded,
    required bool isFailed,
  }) = _NotificationState;

  const NotificationState._();

  factory NotificationState.initial() => NotificationState(
        list: [],
        message: "Starting",
        loading: false,
        loaded: false,
        isFailed: false,
      );
  factory NotificationState.loading() => NotificationState(
        list: [],
        message: "Loading",
        loading: true,
        loaded: false,
        isFailed: false,
      );
  factory NotificationState.loaded() => NotificationState(
        list: [],
        message: "Loaded",
        loading: false,
        loaded: true,
        isFailed: false,
      );
  factory NotificationState.error(String message) => NotificationState(
        list: [],
        message: message,
        loading: false,
        loaded: false,
        isFailed: true,
      );
}
