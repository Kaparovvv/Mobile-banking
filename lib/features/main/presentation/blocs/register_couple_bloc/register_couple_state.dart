part of 'register_couple_bloc.dart';

@freezed
class RegisterCoupleState with _$RegisterCoupleState {
  factory RegisterCoupleState({
    required bool registered,
    required bool isFailed,
    required bool loading,
  }) = _RegisterCoupleState;

  const RegisterCoupleState._();

  factory RegisterCoupleState.initial() => RegisterCoupleState(
        registered: false,
        isFailed: false,
        loading: false,
      );
}
