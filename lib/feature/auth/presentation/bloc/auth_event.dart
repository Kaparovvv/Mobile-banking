part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthLogInEvent extends AuthEvent {
  final String phoneNumber;
  final String password;

  const AuthLogInEvent({
    required this.phoneNumber,
    required this.password,
  });
}
