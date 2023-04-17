import 'package:my_family_flutter/features/main/data/models/city_model.dart';
import 'package:my_family_flutter/features/main/domain/entity/cities_entity.dart';

class CitiesModel extends CitiesEntity {
  const CitiesModel({
    required super.sum,
    required super.cityList,
  });

  factory CitiesModel.fromJson(Map<String, dynamic> json) => CitiesModel(
        sum: json['sum'] as double,
        cityList: List<CityModel>.from(
          (json['cityDtoLis'] as List).map((e) => CityModel.fromJson(e)),
        ),
      );
}
