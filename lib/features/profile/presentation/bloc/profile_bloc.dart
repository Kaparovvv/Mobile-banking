import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    on<GetProfileData>((event, emit) async => await getData(event, emit));
  }

  Future<void> getData(
    GetProfileData event,
    Emitter<ProfileState> emit,
  ) async {
    var currentState = ProfileState.initial().copyWith(loading: true);
    emit(currentState);
    currentState = await getUserData(currentState);
    currentState = await getIndividualData(currentState);
    emit(currentState);
  }

  Future<ProfileState> getUserData(ProfileState currentState) async {
    final result = await getUserDataCase();

    return result.fold(
      (l) => currentState.copyWith(
        isFailed: true,
        loaded: false,
        loading: false,
      ),
      (r) => currentState.copyWith(
        userData: r,
        loading: false,
        loaded: true,
        message: 'User data data fetched',
      ),
    );
  }

  Future<ProfileState> getIndividualData(ProfileState currentState) async {
    final result = await getIndividualCase();

    return result.fold(
      (l) => currentState.copyWith(
        isFailed: true,
        loading: false,
        loaded: false,
      ),
      (r) => currentState.copyWith(
        profileData: r,
        loading: false,
        loaded: true,
        message: "Individual data fetched",
      ),
    );
  }
}
