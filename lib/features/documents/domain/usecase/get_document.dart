// ignore_for_file: constant_identifier_names

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:my_family_flutter/core/exceptions/failure.dart';
import 'package:my_family_flutter/core/usecases/usecases.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/domain/repository/document_repository.dart';

enum DocumentType {
  DRIVER_LICENSE,
  PASSPORT,
}

class GetDocument extends UseCase<DocumentEntity, GetDocumentParams> {
  final DocumentRepository documentRepository;

  GetDocument(this.documentRepository);

  @override
  Future<Either<Failure, DocumentEntity>> call(GetDocumentParams params) async {
    return await documentRepository.getDocument(params.documentType);
  }
}

class GetDocumentParams extends Equatable {
  final DocumentType documentType;

  const GetDocumentParams({
    required this.documentType,
  });

  @override
  List<Object?> get props => [documentType];
}
