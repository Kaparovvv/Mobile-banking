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
  }) : super(RegisterCoupleState.initial()) {
    on<Started>((event, emit) => emit(RegisterCoupleState.initial()));
    on<Register>((event, emit) => register(event, emit));
  }

  Future<void> register(
    Register event,
    Emitter<RegisterCoupleState> emit,
  ) async {
    emit(state.copyWith(loading: true, registered: false, isFailed: false));

    final result = await registerCoupleCase(RegisterCoupleParams(
      partnerIin: event.params.partnerIin.replaceAll(' ', ''),
      city: event.params.city,
      office: event.params.office,
      isUserPay: event.params.isUserPay,
    ));

    result.fold(
      (l) => emit(state.copyWith(loading: false, isFailed: true)),
      (r) => emit(state.copyWith(loading: false, registered: true)),
    );
  }
}
