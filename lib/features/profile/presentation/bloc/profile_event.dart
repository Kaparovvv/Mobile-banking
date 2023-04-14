part of 'profile_bloc.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();

  @override
  List<Object> get props => [];
}

class UserLogoutEvent extends ProfileEvent {}

class GetIndividual extends ProfileEvent {}

class GetUserData extends ProfileEvent {}
