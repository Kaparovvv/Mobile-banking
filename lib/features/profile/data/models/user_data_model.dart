import 'package:my_family_flutter/features/profile/domain/entity/user_data_entity.dart';

class UserDataModel extends UserDataEntity {
  const UserDataModel({
    required firstName,
    required lastName,
    required status,
    required iin,
    required cardNumber,
    required balance,
    required email,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          status: status,
          iin: iin,
          cardNumber: cardNumber,
          balance: balance,
          email: email,
        );

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        firstName: json["firstName"],
        lastName: json["lastName"],
        status: json["status"],
        iin: json["iin"],
        cardNumber: json["cardNumber"],
        balance: json["balance"],
        email: json["email"],
      );
}
