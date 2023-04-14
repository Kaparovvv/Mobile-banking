import 'package:my_family_flutter/features/main/domain/entity/register_couple_response.dart';

class RegisterCoupleResponseModel extends RegisterCoupleResponseEntity {
  const RegisterCoupleResponseModel({
    required requestId,
    required sum,
    required date,
  }) : super(
          requestId: requestId,
          sum: sum,
          date: date,
        );

  factory RegisterCoupleResponseModel.fromJson(Map<String, dynamic> json) =>
      RegisterCoupleResponseModel(
        requestId: json['requestId'] as String,
        sum: json["sum"] as int,
        date: DateTime.parse(json["date"] as String),
      );

  Map<String, dynamic> toJson() => {
        "requestId": requestId,
        "sum": sum,
        "date": date,
      };
}
