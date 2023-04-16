import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/documents/domain/entity/marriage_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';

class GetMarriageCertificateCase
    extends UseCaseNoParams<MarriageCertificateEntity> {
  final DocumentRepository repository;

  GetMarriageCertificateCase({required this.repository});

  @override
  Future<Either<Failure, MarriageCertificateEntity>> call() async {
    return await repository.getMarriageCertificate();
  }
}
