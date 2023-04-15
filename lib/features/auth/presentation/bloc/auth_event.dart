part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.logIn({
    required String phoneNumber,
    required String password,
  }) = LogIn;

  const factory AuthEvent.logOut() = LogOut;
}
