part of 'cities_bloc.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.citiesStarted() = CitiesStarted;
  const factory CitiesEvent.citiesFetched(
    CitiesRequestType params,
  ) = CitiesFetched;
}
