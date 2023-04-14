import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_couple_case.dart';

part 'register_couple_event.dart';
part 'register_couple_state.dart';
part 'register_couple_bloc.freezed.dart';

class RegisterCoupleBloc
    extends Bloc<RegisterCoupleEvent, RegisterCoupleState> {
  final RegisterCoupleCase registerCoupleCase;
  RegisterCoupleBloc({
    required this.registerCoupleCase,
  }) : super(const RegisterCoupleState.initial()) {
    on<Started>((event, emit) => emit(const Initial()));
    on<Register>((event, emit) => register(event, emit));
  }

  Future<void> register(
    Register event,
    Emitter<RegisterCoupleState> emit,
  ) async {
    final result = await registerCoupleCase(RegisterCoupleParams(
      partnerIin: event.params.partnerIin,
      city: event.params.city,
      office: event.params.office,
      isUserPay: event.params.isUserPay,
    ));
    result.fold(
      (l) => emit(const RegisterCoupleState.failed()),
      (r) => emit(const RegisterCoupleState.registered()),
    );
  }
}
