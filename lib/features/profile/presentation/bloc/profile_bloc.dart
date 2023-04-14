import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';
import 'package:my_family_flutter/features/profile/domain/entity/user_data_entity.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_individual_case.dart';
import 'package:my_family_flutter/features/profile/domain/usecase/get_user_data_case.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetIndividualCase getIndividualCase;
  final GetUserDataCase getUserDataCase;
  final SharedPreferences sharedPreferences;

  ProfileBloc({
    required this.getIndividualCase,
    required this.getUserDataCase,
    required this.sharedPreferences,
  }) : super(ProfileState.initial()) {
    on<GetIndividual>((event, emit) => getIndividual(event, emit));
    on<GetUserData>((event, emit) => getUserData(event, emit));
    on<LogoutEvent>((event, emit) => logOut(event, emit));
  }

  Future<void> getUserData(
    GetUserData event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final result = await getUserDataCase();

    result.fold(
      (l) => emit(state.copyWith(isFailed: true)),
      (r) => emit(state.copyWith(userData: r, loading: false)),
    );
  }

  Future<void> getIndividual(
    GetIndividual event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final result = await getIndividualCase();

    result.fold(
      (l) => emit(state.copyWith(isFailed: true)),
      (r) => emit(state.copyWith(profileData: r, loading: false)),
    );
  }

  Future<void> logOut(
    LogoutEvent event,
    Emitter<ProfileState> emit,
  ) async {
    bool? token;
    emit(state.copyWith(loading: true));

    await Future.delayed(const Duration(seconds: 2), () async {
      token = await sharedPreferences.clear();
      var token2 = sharedPreferences.getString(
        CachedNames.cacheUserData,
      );
      log('2 ====== $token2');
    });
    log('2 ===== $token');
    token == true
        ? emit(ProfileState.initial())
        : emit(state.copyWith(
            isFailed: true,
            message: 'Не удалось выйти из аккаунта',
          ));
  }
}
