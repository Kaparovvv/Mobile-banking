part of 'cities_bloc.dart';

@freezed
class CitiesState with _$CitiesState {
  factory CitiesState({
    required bool loading,
    required bool loaded,
    required bool isFailed,
    required String message,
    required List<String> cityList,
    required List<List<String>> officeList,
  }) = _CitiesState;

  const CitiesState._();

  factory CitiesState.initial() => CitiesState(
        loaded: false,
        loading: false,
        isFailed: false,
        message: "",
        cityList: [],
        officeList: [],
      );
}
