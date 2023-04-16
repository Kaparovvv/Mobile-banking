import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';

class GetBabyBirthCertificate
    extends UseCaseNoParams<BabyBirthCertificateEntity> {
  final DocumentRepository repository;

  GetBabyBirthCertificate({required this.repository});

  @override
  Future<Either<Failure, BabyBirthCertificateEntity>> call() async {
    return await repository.getBabyBirthCertificate();
  }
}
