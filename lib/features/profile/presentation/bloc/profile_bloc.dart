import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/usecase.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/cached_names.dart';
import '../../../../core/utils/dependencies_injection.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetIndividualCase getIndividualCase;

  ProfileBloc({required this.getIndividualCase}) : super(ProfileInitial()) {
    on<UserLogoutEvent>((event, emit) => logOut(event, emit));
    on<GetIndividual>((event, emit) => getIndividual(event, emit));
  }

  Future<void> getIndividual(
    GetIndividual event,
    Emitter<ProfileState> emit,
  ) async {}

  Future<void> logOut(
    UserLogoutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    bool? token;
    emit(LoadingState());

    await Future.delayed(const Duration(seconds: 2), () async {
      token = await di.get<SharedPreferences>().remove(
            CachedNames.cacheUserData,
          );
      await di.get<SharedPreferences>().remove(CachedNames.cacheUserID);
      var token2 = di.get<SharedPreferences>().getString(
            CachedNames.cacheUserData,
          );
      log('2 ====== $token2');
    });
    log('2 ===== $token');
    token == true
        ? emit(LogoutState())
        : emit(const ErrorState(message: 'Не удалось выйти из аккаунта'));
  }
}
