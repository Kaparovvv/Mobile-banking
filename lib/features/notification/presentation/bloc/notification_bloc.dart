import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/features/notification/domain/entity/notification_entity.dart';
import 'package:my_family_flutter/features/notification/domain/usecase/notification_case.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc({
    required this.notificationCase,
  }) : super(NotificationState.initial()) {
    on<GetData>((event, emit) => getNotificationList(event, emit));
  }

  final NotificationCase notificationCase;

  Future<void> getNotificationList(
    GetData event,
    Emitter<NotificationState> emit,
  ) async {
    emit(NotificationState.loading());
    final result = await notificationCase();
    result.fold(
      (l) => emit(NotificationState.error()),
      (r) => emit(NotificationState.loaded().copyWith(
        list: r.notification,
      )),
    );
  }
}
