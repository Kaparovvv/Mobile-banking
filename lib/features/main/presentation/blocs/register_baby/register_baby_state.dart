part of 'register_baby_bloc.dart';

@freezed
class RegisterBabyState with _$RegisterBabyState {
  factory RegisterBabyState({
    required bool registered,
    required bool loading,
    required bool isFailed,
    required String message,
    required RegisterBabyParams params,
  }) = _RegisterBabyState;

  const RegisterBabyState._();

  factory RegisterBabyState.initial() => RegisterBabyState(
        registered: false,
        loading: false,
        isFailed: false,
        message: "",
        params: RegisterBabyParams(
          firstName: "",
          lastname: "",
          middleName: "",
          city: "",
          office: "",
          country: "",
          birthDate: DateTime.now(),
          motherIin: "",
          fatherIin: "",
          fatherFirstName: "",
          fatherLastName: "",
          motherFirstName: "",
          motherLastName: "",
          cardId: "",
          gender: "",
        ),
      );
}
