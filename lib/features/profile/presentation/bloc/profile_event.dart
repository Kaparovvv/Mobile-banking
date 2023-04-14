part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = Started;
  const factory ProfileEvent.getUserData() = GetUserData;
  const factory ProfileEvent.getIndividual() = GetIndividual;
  const factory ProfileEvent.logOut() = LogoutEvent;
}
