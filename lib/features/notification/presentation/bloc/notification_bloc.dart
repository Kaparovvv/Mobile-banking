import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationInitial()) {
    on<NotificationEvent>((event, emit) async {
      emit(LoadingNotificationState());
      try {
        await Future.delayed(const Duration(seconds: 3), () async {
          emit(LoadedNotificationState(notifications: listOfNotications));
        });
      } catch (e) {
        emit(ErrorNotificationState(message: e.toString()));
      }
    });
  }
}

List<NotificationModel> listOfNotications = List.generate(
  10,
  (index) => NotificationModel(
    'Регистрация брака',
    'На ваш аккаунт поступило уведомление о подаче заявки на регистрацию брака со стороны Асанова Асана, ',
    '12.09.2013',
  ),
);

class NotificationModel {
  final String title;
  final String descrition;
  final String date;

  NotificationModel(this.title, this.descrition, this.date);
}
