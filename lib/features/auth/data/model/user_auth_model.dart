import '../../domain/entity/user_auth_entity.dart';

class UserAuthModel extends UserAuthEntity {
  const UserAuthModel({
    required id,
    required token,
  }) : super(
          id: id,
          token: token,
        );

  factory UserAuthModel.fromJson(Map<String, dynamic> json) => UserAuthModel(
        id: json['id'],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "token": token,
      };
}
