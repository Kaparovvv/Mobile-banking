import 'package:my_family_flutter/features/main/domain/entity/office_entity.dart';

class OfficeModel extends OfficeEntity {
  const OfficeModel({
    required super.id,
    required super.name,
  });

  factory OfficeModel.fromJson(Map<String, dynamic> json) => OfficeModel(
        id: json['id'] as String,
        name: json["name"] as String,
      );
}
