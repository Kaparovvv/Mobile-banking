part of 'request_bloc.dart';

abstract class RequestState extends Equatable {
  const RequestState();

  @override
  List<Object> get props => [];
}

class RequestInitial extends RequestState {}

class LoadingRequestState extends RequestState {}

class LoadedActiveRequestState extends RequestState {
  final List<Map<String, String>> activeRequest;

  const LoadedActiveRequestState({required this.activeRequest});
}

class LoadedArchiveRequestState extends RequestState {
  final List<ArchiveRequests> archiveRequest;

  const LoadedArchiveRequestState({required this.archiveRequest});
}

class ErrorRequestState extends RequestState {
  final String message;

  const ErrorRequestState({required this.message});
}
