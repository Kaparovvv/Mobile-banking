part of 'cities_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  factory CitiesState({
    required bool loading,
    required bool loaded,
    required bool isFailed,
    required String message,
    required CitiesEntity cityList,
  }) = _CitiesState;

  const CitiesState._();

  factory CitiesState.initial() => CitiesState(
        loaded: false,
        loading: false,
        isFailed: false,
        message: "",
        cityList: const CitiesEntity(
          sum: 0,
          cityList: [],
        ),
      );
}
