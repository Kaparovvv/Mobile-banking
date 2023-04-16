import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';

class BabyBirthCertificateModel extends BabyBirthCertificateEntity {
  const BabyBirthCertificateModel({
    required super.id,
    required super.city,
    required super.office,
    required super.country,
    required super.father,
    required super.mother,
    required super.babyFirstName,
    required super.babyLastName,
    required super.babyMiddleName,
    required super.babyGender,
  });

  factory BabyBirthCertificateModel.fromJson(Map<String, dynamic> json) =>
      BabyBirthCertificateModel(
        id: json['id'],
        city: json["city"],
        office: json["office"],
        country: json["country"],
        father: FatherModel.fromJson(json["father"]),
        mother: MotherModel.fromJson(json["mother"]),
        babyFirstName: json["babyFirstName"],
        babyLastName: json["babyLastName"],
        babyMiddleName: json["babyMiddleName"],
        babyGender: json["babyGender"],
      );
}

class FatherModel extends FatherEntity {
  const FatherModel({
    required super.firstName,
    required super.lastName,
    required super.middleName,
    required super.nationality,
  });

  factory FatherModel.fromJson(Map<String, dynamic> json) => FatherModel(
        firstName: json['firstName'],
        lastName: json["lastName"],
        middleName: json["middleName"],
        nationality: json["nationality"],
      );
}

class MotherModel extends MotherEntity {
  const MotherModel({
    required super.firstName,
    required super.lastName,
    required super.middleName,
    required super.nationality,
  });

  factory MotherModel.fromJson(Map<String, dynamic> json) => MotherModel(
        firstName: json['firstName'],
        lastName: json["lastName"],
        middleName: json["middleName"],
        nationality: json["nationality"],
      );
}
