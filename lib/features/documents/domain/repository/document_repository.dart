import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/domain/entity/marriage_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';

import '../../../../core/exceptions/failure.dart';

abstract class DocumentRepository {
  Future<Either<Failure, DocumentEntity>> getDocument(
    DocumentType documentType,
  );

  Future<Either<Failure, BabyBirthCertificateEntity>> getBabyBirthCertificate();

  Future<Either<Failure, MarriageCertificateEntity>> getMarriageCertificate();
}
