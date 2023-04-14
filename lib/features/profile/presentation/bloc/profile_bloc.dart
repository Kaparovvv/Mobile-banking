import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';
import 'package:my_family_flutter/features/profile/domain/entity/user_data_entity.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_individual_case.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_user_data_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/cached_names.dart';
import '../../../../core/utils/dependencies_injection.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetIndividualCase getIndividualCase;
  final GetUserDataCase getUserDataCase;

  ProfileBloc({
    required this.getIndividualCase,
    required this.getUserDataCase,
  }) : super(ProfileInitial()) {
    on<UserLogoutEvent>((event, emit) => logOut(event, emit));
    on<GetIndividual>((event, emit) => getIndividual(event, emit));
    on<GetUserData>((event, emit) => getUserData(event, emit));
    on<Reset>((event, emit) => reset(event, emit));
  }

  Future<void> reset(Reset event, Emitter<ProfileState> emit) async {
    emit(ProfileInitial());
  }

  Future<void> getUserData(
    GetUserData event,
    Emitter<ProfileState> emit,
  ) async {
    emit(LoadingState());
    final result = await getUserDataCase();

    result.fold(
      (l) => emit(ErrorState(message: l.exception.message)),
      (r) => emit(UserDataLoaded(userData: r)),
    );
  }

  Future<void> getIndividual(
    GetIndividual event,
    Emitter<ProfileState> emit,
  ) async {
    emit(LoadingState());
    final result = await getIndividualCase();

    result.fold(
      (l) => emit(ErrorState(message: l.exception.message)),
      (r) => emit(IndividalLoaded(profileData: r)),
    );
  }

  Future<void> logOut(
    UserLogoutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    bool? token;
    emit(LoadingState());

    await Future.delayed(const Duration(seconds: 2), () async {
      token = await di.get<SharedPreferences>().clear();
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
