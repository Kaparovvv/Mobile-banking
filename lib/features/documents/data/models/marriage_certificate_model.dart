import 'package:my_family_flutter/features/documents/domain/entity/marriage_certificate_entity.dart';

class MarriageCertificateModel extends MarriageCertificateEntity {
  const MarriageCertificateModel({
    required super.id,
    required super.city,
    required super.office,
    required super.maleIin,
    required super.femaleIin,
    required super.maleFirstName,
    required super.maleLastName,
    required super.maleMiddleName,
    required super.femaleFirstName,
    required super.femaleLastName,
    required super.femaleMiddleName,
    required super.maleNationality,
    required super.femaleNationality,
  });

  factory MarriageCertificateModel.fromJson(Map<String, dynamic> json) =>
      MarriageCertificateModel(
        id: json['id'],
        city: json["city"],
        office: json["office"],
        maleIin: json["maleIin"],
        femaleIin: json["femaleIin"],
        maleFirstName: json["maleFirstName"],
        maleLastName: json["maleLastName"],
        maleMiddleName: json["maleMiddleName"],
        femaleFirstName: json["femaleFirstName"],
        femaleLastName: json["femaleLastName"],
        femaleMiddleName: json["femaleMiddleName"],
        maleNationality: json["maleNationality"],
        femaleNationality: json["femaleNationality"],
      );
}
