import 'package:my_family_flutter/features/notification/domain/entity/request_user_entity.dart';

class RequestUserModel extends RequestUserEntity {
  const RequestUserModel({
    required id,
    firstName,
    lastName,
    middleName,
    iin,
    birthDate,
    homeCity,
    nationality,
    photo,
    phoneNumber,
    maritalStatus,
  }) : super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          middleName: middleName,
          iin: iin,
          birthDate: birthDate,
          homeCity: homeCity,
          nationality: nationality,
          photo: photo,
          phoneNumber: phoneNumber,
          maritalStatus: maritalStatus,
        );

  factory RequestUserModel.fromJson(Map<String, dynamic> json) =>
      RequestUserModel(
        id: json['id'],
        firstName: json["firstName"],
        lastName: json["lastName"],
        middleName: json["middleName"],
        iin: json["iin"],
        birthDate: json["birthDate"] != null
            ? DateTime.parse(json["birthDate"] as String)
            : null,
        homeCity: json["homeCity"],
        nationality: json["nationality"],
        photo: json["photo"],
        phoneNumber: json["phoneNumber"],
        maritalStatus: json["maritalStatus"],
      );
}
