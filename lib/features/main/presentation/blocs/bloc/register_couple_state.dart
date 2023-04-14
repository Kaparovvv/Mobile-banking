part of 'register_couple_bloc.dart';

@freezed
class RegisterCoupleState with _$RegisterCoupleState {
  const factory RegisterCoupleState.initial() = Initial;
  const factory RegisterCoupleState.registered() = Registered;
  const factory RegisterCoupleState.failed() = Failed;
}
