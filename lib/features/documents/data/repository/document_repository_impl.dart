import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/network_info.dart';
import 'package:my_family_flutter/features/documents/data/data_sources/document_remote_data_source.dart';
import 'package:my_family_flutter/features/documents/data/models/baby_birth_certificate_model.dart';
import 'package:my_family_flutter/features/documents/data/models/document_model.dart';
import 'package:my_family_flutter/features/documents/data/models/marriage_certificate_model.dart';
import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/domain/entity/marriage_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';

class DocumentRepositoryImpl implements DocumentRepository {
  final DocumentRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  DocumentRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, DocumentEntity>> getDocument(
    DocumentType documentType,
  ) async {
    return await _getDocument(
      () => remoteDataSource.getDocument(documentType),
    );
  }

  Future<Either<Failure, DocumentEntity>> _getDocument(
    Future<Either<Failure, DocumentModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final remote = await get();
      return remote.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, BabyBirthCertificateEntity>>
      getBabyBirthCertificate() async {
    return await _getBabyBirthCertificate(
      () => remoteDataSource.getBabyBirthCertificate(),
    );
  }

  Future<Either<Failure, BabyBirthCertificateEntity>> _getBabyBirthCertificate(
    Future<Either<Failure, BabyBirthCertificateModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final remote = await get();
      return remote.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, MarriageCertificateEntity>>
      getMarriageCertificate() async {
    return await _getMarriageCertificate(
      () => remoteDataSource.getMarriageCertificate(),
    );
  }

  Future<Either<Failure, MarriageCertificateEntity>> _getMarriageCertificate(
    Future<Either<Failure, MarriageCertificateModel>> Function() get,
  ) async {
    if (await networkInfo.isConnected) {
      final remote = await get();
      return remote.fold(
        (l) => Left(l),
        (r) => Right(r),
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
