part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    required IndividualEntity profileData,
    required UserDataEntity userData,
    required bool loading,
    required bool isFailed,
    required String message,
  }) = _ProfileState;

  const ProfileState._();

  factory ProfileState.initial() => ProfileState(
        profileData: IndividualEntity(
          id: "",
          firstName: "",
          lastName: "",
          middleName: "",
          phoneNumber: "",
          iin: "",
          birthDate: DateTime.now(),
          homeCity: "",
          nationality: "",
          photo: "",
          maritalStatus: "",
        ),
        userData: const UserDataEntity(
          firstName: "",
          lastName: "",
          status: "",
          iin: "",
          cardNumber: "",
          balance: 0,
          email: "",
        ),
        loading: false,
        isFailed: false,
        message: "",
      );
}
