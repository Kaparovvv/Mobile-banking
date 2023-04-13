import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';

class DocumentModel extends DocumentEntity {
  const DocumentModel({
    required id,
    required documentType,
    required issueDate,
    required expirationDate,
    required passportSeries,
    required licenseNumber,
    required issuingAuthority,
    required driverLicenseCategory,
    required individual,
  }) : super(
          id: id,
          documentType: documentType,
          issueDate: issueDate,
          expirationDate: expirationDate,
          passportSeries: passportSeries,
          licenseNumber: licenseNumber,
          issuingAuthority: issuingAuthority,
          driverLicenseCategory: driverLicenseCategory,
          individual: individual,
        );

  factory DocumentModel.fromJson(Map<String, dynamic> json) => DocumentModel(
        id: json['id'],
        documentType: json["documentType"],
        issueDate: json["issueDate"],
        expirationDate: json["expirationDate"],
        passportSeries: json["passportSeries"],
        licenseNumber: json["licenseNumber"],
        issuingAuthority: json["issuingAuthority"],
        driverLicenseCategory: json["driverLicenseCategory"],
        individual: IndividualModel.fromJson(
          json["individual"] as Map<String, dynamic>,
        ),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "documentType": documentType,
        "issueDate": issueDate,
        "expirationDate": expirationDate,
        "passportSeries": passportSeries,
        "licenseNumber": licenseNumber,
        "issuingAuthority": issuingAuthority,
        "driverLicenseCategory": driverLicenseCategory,
        "individual": individual,
      };
}
