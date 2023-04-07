import '../../domain/entity/user_auth_entity.dart';

class UserDataModel extends UserAuthEntity {
  const UserDataModel({
    required id,
    required token,
  }) : super(
          id: id,
          token: token,
        );

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        id: json['id'],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
      };
}
