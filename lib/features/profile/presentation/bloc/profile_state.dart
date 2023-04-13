part of 'profile_bloc.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class LoadingState extends ProfileState {}

class LogoutState extends ProfileState {}

class ErrorState extends ProfileState {
  final String message;

  const ErrorState({required this.message});
}

class GetIndividal extends ProfileState {
  final IndividualEntity profileData;

  const GetIndividal({required this.profileData});

  @override
  List<Object> get props => [profileData];
}
