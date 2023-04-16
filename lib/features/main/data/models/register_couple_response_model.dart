import 'package:my_family_flutter/features/main/domain/entity/gov_request_response_entity.dart';

class GovRequestResponseModel extends GovRequestResponseEntity {
  const GovRequestResponseModel({
    required requestId,
    required sum,
    required type,
    required date,
  }) : super(
          requestId: requestId,
          sum: sum,
          type: type,
          date: date,
        );

  factory GovRequestResponseModel.fromJson(Map<String, dynamic> json) =>
      GovRequestResponseModel(
        requestId: json['requestId'] as String,
        sum: json["sum"] as int,
        type: json['type'] as String,
        date: DateTime.parse(json["date"] as String),
      );
}
