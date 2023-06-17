import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/features/main/domain/usecases/register_baby_case.dart';

part 'register_baby_event.dart';
part 'register_baby_state.dart';
part 'register_baby_bloc.freezed.dart';

class RegisterBabyBloc extends Bloc<RegisterBabyEvent, RegisterBabyState> {
  RegisterBabyBloc({
    required this.registerBabyCase,
  }) : super(RegisterBabyState.initial()) {
    on<Started>((event, emit) => emit(RegisterBabyState.initial()));
    on<Register>((event, emit) => register(event, emit));
    on<ResetChildInfo>((event, emit) => resetChildInfoPage(event, emit));
    on<ResetFailed>((event, emit) => resetFailed(event, emit));
    on<ParamsChanged>((event, emit) => changeParams(event, emit));
  }

  final RegisterBabyCase registerBabyCase;

  Future<void> register(
    Register event,
    Emitter<RegisterBabyState> emit,
  ) async {
    emit(state.copyWith(loading: true));
    final result = await registerBabyCase(state.params);

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        isFailed: true,
        message: "“Произошла какая-то ошибка. Повторите операцию позже",
      )),
      (r) => emit(state.copyWith(
        loading: false,
        isFailed: false,
        registered: true,
        message: "",
      )),
    );
  }

  Future<void> resetChildInfoPage(
    ResetChildInfo event,
    Emitter<RegisterBabyState> emit,
  ) async {
    emit(state.copyWith(
      isFailed: false,
      params: state.params.copyWith(
        firstName: "",
        lastname: "",
      ),
    ));
  }

  Future<void> resetFailed(
    ResetFailed event,
    Emitter<RegisterBabyState> emit,
  ) async {
    emit(state.copyWith(isFailed: false));
  }

  Future<void> changeParams(
    ParamsChanged event,
    Emitter<RegisterBabyState> emit,
  ) async {
    emit(state.copyWith(params: event.params));
  }
}
