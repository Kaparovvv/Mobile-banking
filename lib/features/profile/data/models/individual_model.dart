import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';

class IndividualModel extends IndividualEntity {
  const IndividualModel({
    required id,
    required middleName,
    required iin,
    required birthDate,
    required homeCity,
    required nationality,
    required photo,
    required maritalStatus,
    required firstName,
    required lastName,
    required phoneNumber,
  }) : super(
          id: id,
          firstName: firstName,
          lastName: lastName,
          middleName: middleName,
          birthDate: birthDate,
          phoneNumber: phoneNumber,
          photo: photo,
          nationality: nationality,
          maritalStatus: maritalStatus,
          iin: iin,
          homeCity: homeCity,
        );

  factory IndividualModel.fromJson(Map<String, dynamic> json) =>
      IndividualModel(
        id: json['id'],
        firstName: json["firstName"],
        lastName: json["lastName"],
        middleName: json["middleName"],
        birthDate: DateTime.parse(json["birthDate"] as String),
        phoneNumber: json["phoneNumber"],
        photo: json["photo"],
        nationality: json["nationality"],
        maritalStatus: json["maritalStatus"],
        iin: json["iin"],
        homeCity: json["homeCity"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "firstName": firstName,
        "lastName": lastName,
        "middleName": middleName,
        "birthDate": birthDate,
        "phoneNumber": phoneNumber,
        "photo": photo,
        "nationality": nationality,
        "maritalStatus": maritalStatus,
        "iin": iin,
        "homeCity": homeCity,
      };
}
