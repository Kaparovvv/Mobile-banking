import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/cached_names.dart';
import '../../../../core/utils/dependencies_injection.dart';

part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc() : super(LogoutInitial()) {
    on<UserLogoutEvent>((event, emit) async {
      bool? token;
      emit(LoadingLogoutState());

      await Future.delayed(const Duration(seconds: 2), () async {
        token =
            await di.get<SharedPreferences>().remove(CachedNames.cacheUserData);
        var token2 =
            di.get<SharedPreferences>().getString(CachedNames.cacheUserData);
        log('2 ====== $token2');
      });
      log('2 ===== $token');
      token == true
          ? emit(LoadedLogoutState())
          : emit(
              const ErrorLogoutState(message: 'Не удалось выйти из аккаунта'),
            );
    });
  }
}
