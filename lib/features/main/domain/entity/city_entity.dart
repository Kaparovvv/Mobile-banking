// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:my_family_flutter/features/main/domain/entity/office_entity.dart';

class CityEntity extends Equatable {
  final String id;
  final String name;
  final List<OfficeEntity> officeList;

  const CityEntity({
    required this.id,
    required this.name,
    required this.officeList,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        officeList,
      ];
}
