part of 'logout_bloc.dart';

abstract class LogoutState extends Equatable {
  const LogoutState();

  @override
  List<Object> get props => [];
}

class LogoutInitial extends LogoutState {}

class LoadingLogoutState extends LogoutState {}

class LoadedLogoutState extends LogoutState {
  final bool isLogout;

  const LoadedLogoutState({required this.isLogout});
}

class ErroLogoutState extends LogoutState {}
