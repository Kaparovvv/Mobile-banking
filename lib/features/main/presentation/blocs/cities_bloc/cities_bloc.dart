import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/features/main/domain/entity/cities_entity.dart';
import 'package:my_family_flutter/features/main/domain/usecases/get_cities_case.dart';

part 'cities_event.dart';
part 'cities_state.dart';
part 'cities_bloc.freezed.dart';

class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  CitiesBloc({
    required this.getCitiesCase,
  }) : super(CitiesState.initial()) {
    on<CitiesFetched>((event, emit) async => await fetchCities(event, emit));
  }

  final GetCitiesCase getCitiesCase;

  Future<void> fetchCities(
    CitiesFetched event,
    Emitter<CitiesState> emit,
  ) async {
    emit(CitiesState.initial().copyWith(loading: true));
    final result = await getCitiesCase(event.params);

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        isFailed: true,
        message: TextHelper.noDataFetching,
      )),
      (r) {
        emit(state.copyWith(
          loading: false,
          loaded: true,
          cityList: r.cityList.map((e) => e.name).toList(),
          officeList: r.cityList
              .map((e) => e.officeList.map((e) => e.name).toList())
              .toList(),
        ));
      },
    );
  }
}
