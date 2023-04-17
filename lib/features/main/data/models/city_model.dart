import 'package:my_family_flutter/features/main/data/models/office_model.dart';
import 'package:my_family_flutter/features/main/domain/entity/city_entity.dart';

class CityModel extends CityEntity {
  const CityModel({
    required super.id,
    required super.name,
    required super.officeList,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) => CityModel(
        id: json['id'] as String,
        name: json["name"] as String,
        officeList: List<OfficeModel>.from(
          (json['officeList'] as List).map((e) => OfficeModel.fromJson(e)),
        ),
      );
}
