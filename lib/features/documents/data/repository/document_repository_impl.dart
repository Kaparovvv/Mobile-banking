import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/exceptions/exceptions.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/services/network_info.dart';
import 'package:my_family_flutter/features/documents/data/data_sources/document_local_data_source.dart';
import 'package:my_family_flutter/features/documents/data/data_sources/document_remote_data_source.dart';
import 'package:my_family_flutter/features/documents/data/models/document_model.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';

class DocumentRepositoryImpl implements DocumentRepository {
  final DocumentRemoteDataSource remoteDataSource;
  final DocumentLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DocumentRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
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
    Future<Either<Failure, DocumentModel>> Function() auth,
  ) async {
    if (await networkInfo.isConnected) {
      final remoteToken = await auth();
      return remoteToken.fold(
        (l) => Left(l),
        (r) {
          // localDataSource.documentDataToCache(r);
          return Right(r);
        },
      );
    } else {
      try {
        final localToken = await localDataSource.getDocumentDataFromCache();
        return Right(localToken);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
