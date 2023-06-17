import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/features/documents/data/models/baby_birth_certificate_model.dart';
import 'package:my_family_flutter/features/documents/data/models/marriage_certificate_model.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/base_repository.dart';
import '../models/document_model.dart';

abstract class DocumentRemoteDataSource {
  Future<Either<Failure, DocumentModel>> getDocument(
    DocumentType documentType,
  );

  Future<Either<Failure, BabyBirthCertificateModel>> getBabyBirthCertificate();

  Future<Either<Failure, MarriageCertificateModel>> getMarriageCertificate();
}

class DocumentRemoteDataSourceImpl extends BaseRepository
    implements DocumentRemoteDataSource {
  final SharedPreferences sharedPreferences;

  DocumentRemoteDataSourceImpl({required this.sharedPreferences});

  @override
  Future<Either<Failure, DocumentModel>> getDocument(
    DocumentType documentType,
  ) async {
    final userID = sharedPreferences.getString(
      CachedNames.cacheUserID,
    );

    final result = call(
      RestMethod.get,
      "${URLs.documents}/$userID/${documentType.name}",
    );
    return result.then<Either<Failure, DocumentModel>>(
      (either) => either.fold(
        (l) => Left<Failure, DocumentModel>(l),
        (r) => Right<Failure, DocumentModel>(DocumentModel.fromJson(r)),
      ),
    );
  }

  @override
  Future<Either<Failure, BabyBirthCertificateModel>>
      getBabyBirthCertificate() async {
    if (await networkInfo.isConnected) {
      final userID = sharedPreferences.getString(
            CachedNames.cacheUserID,
          ) ??
          "";

      final result = call(
        RestMethod.get,
        "${URLs.babyBirthCertificate}/$userID",
      );
      return result.then<Either<Failure, BabyBirthCertificateModel>>(
        (either) => either.fold(
          (l) => Left<Failure, BabyBirthCertificateModel>(l),
          (r) => Right<Failure, BabyBirthCertificateModel>(
            BabyBirthCertificateModel.fromJson(r),
          ),
        ),
      );
    } else {
      return Left(CacheFailure());
    }
  }

  @override
  Future<Either<Failure, MarriageCertificateModel>>
      getMarriageCertificate() async {
    if (await networkInfo.isConnected) {
      final userID = sharedPreferences.getString(
            CachedNames.cacheUserID,
          ) ??
          "";

      final result = call(
        RestMethod.get,
        "${URLs.marriageCertificate}/$userID",
      );
      return result.then<Either<Failure, MarriageCertificateModel>>(
        (either) => either.fold(
          (l) => Left<Failure, MarriageCertificateModel>(l),
          (r) => Right<Failure, MarriageCertificateModel>(
            MarriageCertificateModel.fromJson(r),
          ),
        ),
      );
    } else {
      return Left(CacheFailure());
    }
  }
}
