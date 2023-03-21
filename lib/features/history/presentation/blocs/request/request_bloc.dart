import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'request_event.dart';
part 'request_state.dart';

class RequestBloc extends Bloc<RequestEvent, RequestState> {
  RequestBloc() : super(RequestInitial()) {
    on<GetActiveRequestEvent>((event, emit) {
      try {
        emit(LoadingRequestState());
        List<Map<String, String>> activeRequest = _activeRequest;
        emit(LoadedActiveRequestState(activeRequest: activeRequest));
      } catch (e) {
        emit(ErrorRequestState(message: e.toString()));
      }
    });

    on<GetArchiveRequestEvent>((event, emit) {
      try {
        emit(LoadingRequestState());
        // List<ArchiveRequests> archiveRequest = archiveRequest;
        emit(LoadedArchiveRequestState(archiveRequest: archiveRequest));
      } catch (e) {
        emit(ErrorRequestState(message: e.toString()));
      }
    });
  }

  static List<ArchiveRequests> archiveRequest = [
    ArchiveRequests(
      "Регистрация брака",
      "09.04.2023",
      false,
    ),
    ArchiveRequests(
      "Регистрация рождения ребенка",
      "09.04.2023",
      true,
    ),
    ArchiveRequests(
      "Получение пособии по рождению ребенка",
      "09.04.2023",
      false,
    ),
    ArchiveRequests(
      "Развод",
      "09.04.2023",
      true,
    ),
  ];

  static const List<Map<String, String>> _activeRequest = [
    {
      "title": "Регистрация брака",
      "date": "09.04.2023",
      "status": "в обработке",
    },
    {
      "title": "Регистрация рождения ребенка",
      "date": "09.04.2023",
      "status": "в обработке",
    },
    {
      "title": "Получение пособии по рождению ребенка",
      "date": "09.04.2023",
      "status": "в обработке",
    },
    {
      "title": "Развод",
      "date": "09.04.2023",
      "status": "в обработке",
    },
  ];
}

class ArchiveRequests {
  final String title;
  final String date;
  final bool isCompleted;

  ArchiveRequests(this.title, this.date, this.isCompleted);
}
