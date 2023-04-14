import 'package:dartz/dartz.dart';
import 'package:my_family_flutter/core/constants/cached_names.dart';
import 'package:my_family_flutter/core/constants/urls.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/exceptions/failure.dart';
import '../../../../core/services/base_repository.dart';
import '../models/document_model.dart';

abstract class DocumentRemoteDataSource {
  Future<Either<Failure, DocumentModel>> getDocument(
    DocumentType documentType,
  );
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
}
