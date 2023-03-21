part of 'request_bloc.dart';

abstract class RequestEvent extends Equatable {
  const RequestEvent();

  @override
  List<Object> get props => [];
}

class GetActiveRequestEvent extends RequestEvent {}

class GetArchiveRequestEvent extends RequestEvent {}
