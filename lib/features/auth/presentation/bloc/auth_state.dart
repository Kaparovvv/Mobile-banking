part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required bool loading,
    required bool isFailed,
    required bool authenticated,
    required String message,
  }) = _AuthState;

  const AuthState._();

  factory AuthState.initial() => AuthState(
        loading: false,
        isFailed: false,
        authenticated: false,
        message: "",
      );
}
