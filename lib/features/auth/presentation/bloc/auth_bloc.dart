import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/features/auth/domain/usecase/auth_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this.authUser,
    required this.sharedPreferences,
  }) : super(AuthState.initial()) {
    on<LogIn>((event, emit) async => await logIn(event, emit));
    on<LogOut>((event, emit) async => await logOut(event, emit));
  }

  final AuthUser authUser;
  final SharedPreferences sharedPreferences;

  Future<void> logIn(LogIn event, Emitter<AuthState> emit) async {
    emit(AuthState.initial().copyWith(
      loading: true,
      isFailed: false,
    ));
    final result = await authUser(AuthUserParams(
      phoneNumber: event.phoneNumber,
      password: event.password,
    ));
    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        isFailed: true,
        message: 'Неверный номер телефона или пароль',
      )),
      (r) => emit(state.copyWith(
        loading: false,
        authenticated: true,
        message: 'Authenticated',
      )),
    );
  }

  Future<void> logOut(LogOut event, Emitter<AuthState> emit) async {
    emit(AuthState.initial().copyWith(
      loading: true,
      isFailed: false,
    ));

    final isCleared = await sharedPreferences.clear();
    return isCleared
        ? emit(state.copyWith(
            authenticated: false,
            loading: false,
          ))
        : emit(state.copyWith(
            isFailed: true,
            message: 'Не удалось выйти из аккаунта',
          ));
  }
}
