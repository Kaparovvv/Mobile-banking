import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_family_flutter/features/auth/domain/usecase/auth_user.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUser authUser;

  AuthBloc({required this.authUser}) : super(AuthInitial()) {
    on<AuthLogInEvent>((event, emit) async {
      emit(AuthLoadingState());

      final result = await authUser(AuthUserParams(
        phoneNumber: event.phoneNumber,
        password: event.password,
      ));
      result.fold(
        (l) => emit(AuthErrorState(message: l.exception.message)),
        (r) => emit(AuthLoadedState()),
      );
    });
  }
}
