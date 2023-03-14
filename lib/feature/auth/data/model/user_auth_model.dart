import '../../domain/entity/user_auth_entity.dart';

class UserAuthModel extends UserAuthEntity {
  const UserAuthModel({required token}) : super(token: token);

  factory UserAuthModel.fromJson(Map<String, dynamic> json) => UserAuthModel(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
