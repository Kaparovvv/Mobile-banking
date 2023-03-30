part of 'notification_bloc.dart';

abstract class NotificationState extends Equatable {
  const NotificationState();

  @override
  List<Object> get props => [];
}

class NotificationInitial extends NotificationState {}

class LoadingNotificationState extends NotificationState {}

class LoadedNotificationState extends NotificationState {
  final List<NotificationModel> notifications;

  const LoadedNotificationState({required this.notifications});
}

class ErrorNotificationState extends NotificationState {
  final String message;

  const ErrorNotificationState({required this.message});
}
