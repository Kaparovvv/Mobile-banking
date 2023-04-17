// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:my_family_flutter/features/main/domain/entity/city_entity.dart';

class CitiesEntity extends Equatable {
  final double sum;
  final List<CityEntity> cityList;

  const CitiesEntity({
    required this.sum,
    required this.cityList,
  });

  @override
  List<Object?> get props => [
        sum,
        cityList,
      ];
}
