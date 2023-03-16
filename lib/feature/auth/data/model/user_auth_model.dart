import '../../domain/entity/user_auth_entity.dart';

class UserDataModel extends UserAuthEntity {
  const UserDataModel({
    required token,
    required phoneNumber,
    required fullName,
    required roles,
  }) : super(
          token: token,
          phoneNumber: phoneNumber,
          fullName: fullName,
          roles: roles,
        );

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        token: json["token"],
        phoneNumber: json["phoneNumber"],
        fullName: json["fullName"],
        roles: json["roles"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "phoneNumber": phoneNumber,
        "fullName": fullName,
        "roles": roles,
      };
}
