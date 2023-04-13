import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';

part 'documents_event.dart';
part 'documents_state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final GetDocument getDocument;
  DocumentsBloc({required this.getDocument}) : super(DocumentsInitial()) {
    on<GetPasportEvent>((event, emit) => getPassport(event, emit));
    on<GetDriverLicenseEvent>((event, emit) => getDriverLicense(event, emit));
  }

  Future<void> getPassport(
    GetPasportEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    emit(LoadingDocumentState());
    final result = await getDocument(
      const GetDocumentParams(documentType: DocumentType.PASSPORT),
    );
    result.fold(
      (l) {
        emit(const ErrorDocumentState(
          message: 'Не удалось получить данные',
        ));
      },
      (r) => emit(LoadedPasportState(passport: r)),
    );
  }

  Future<void> getDriverLicense(
    GetDriverLicenseEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    emit(LoadingDocumentState());
    final result = await getDocument(
      const GetDocumentParams(documentType: DocumentType.DRIVER_LICENSE),
    );
    result.fold(
      (l) {
        emit(const ErrorDocumentState(
          message: 'Не удалось получить данные',
        ));
      },
      (r) => emit(LoadedDriverLicenseState(driverLicense: r)),
    );
  }
}
