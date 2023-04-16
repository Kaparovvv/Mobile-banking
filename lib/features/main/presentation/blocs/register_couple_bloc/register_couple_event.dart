part of 'register_couple_bloc.dart';

@freezed
class RegisterCoupleEvent with _$RegisterCoupleEvent {
  const factory RegisterCoupleEvent.started() = Started;
  const factory RegisterCoupleEvent.register(
    RegisterCoupleParams params,
  ) = Register;
}
