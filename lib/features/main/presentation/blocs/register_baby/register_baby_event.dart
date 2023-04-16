part of 'register_baby_bloc.dart';

@freezed
class RegisterBabyEvent with _$RegisterBabyEvent {
  const factory RegisterBabyEvent.started() = Started;
  const factory RegisterBabyEvent.register() = Register;
  const factory RegisterBabyEvent.resetChildInfo() = ResetChildInfo;
  const factory RegisterBabyEvent.resetFailed() = ResetFailed;
  const factory RegisterBabyEvent.paramsChanged(
    RegisterBabyParams params,
  ) = ParamsChanged;
}
