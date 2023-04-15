// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:my_family_flutter/features/profile/data/models/individual_model.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';

class DocumentEntity extends Equatable {
  final String id;
  final String documentType;
  final DateTime? issueDate;
  final DateTime? expirationDate;
  final String? passportSeries;
  final String? licenseNumber;
  final String? issuingAuthority;
  final String? driverLicenseCategory;
  final IndividualEntity individual;

  const DocumentEntity({
    required this.id,
    required this.documentType,
    this.issueDate,
    this.expirationDate,
    this.passportSeries,
    this.licenseNumber,
    this.issuingAuthority,
    this.driverLicenseCategory,
    required this.individual,
  });

  @override
  List<Object?> get props {
    return [
      id,
      documentType,
      issueDate,
      expirationDate,
      passportSeries,
      licenseNumber,
      issuingAuthority,
      driverLicenseCategory,
      individual,
    ];
  }
}
