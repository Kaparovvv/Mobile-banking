import '../../domain/entity/user_auth_entity.dart';

class UserDataModel extends UserAuthEntity {
  const UserDataModel({
    required token,
    required phoneNumber,
    required roles,
    required id,
    required firstName,
    required lastName,
  }) : super(
          id: id,
          token: token,
          phoneNumber: phoneNumber,
          roles: roles,
          firstName: firstName,
          lastName: lastName,
        );

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        token: json["token"],
        phoneNumber: json["phoneNumber"],
        roles: json["roles"],
        id: json['id'],
        firstName: json['firstName'],
        lastName: json['lastName'],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "phoneNumber": phoneNumber,
        "roles": roles,
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
      };
}
