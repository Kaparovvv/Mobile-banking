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
        requestId: json['requestId'],
        sum: json["sum"],
        date: json["date"],
      );

  Map<String, dynamic> toJson() => {
        "requestId": requestId,
        "sum": sum,
        "date": date,
      };
}
