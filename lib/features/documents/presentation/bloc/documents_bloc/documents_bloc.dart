import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/features/documents/domain/entity/document_entity.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_document.dart';
import 'package:my_family_flutter/features/profile/domain/entity/individual_entity.dart';

part 'documents_event.dart';
part 'documents_state.dart';
part 'documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  DocumentsBloc({
    required this.getDocument,
  }) : super(DocumentsState.initial()) {
    on<GetPasportEvent>((event, emit) => getPassport(event, emit));
    on<GetDriverLicenseEvent>((event, emit) => getDriverLicense(event, emit));
  }

  final GetDocument getDocument;

  Future<void> getPassport(
    GetPasportEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    emit(state.copyWith(loading: true, isDriverLicense: false, loaded: false));

    final result = await getDocument(
      const GetDocumentParams(documentType: DocumentType.PASSPORT),
    );

    result.fold(
      (l) => emit(state.copyWith(
        isFailed: true,
        message: 'Не удалось получить данные',
        isDriverLicense: false,
        loading: false,
      )),
      (r) => emit(state.copyWith(
        passport: r,
        isDriverLicense: false,
        loaded: true,
        loading: false,
      )),
    );
  }

  Future<void> getDriverLicense(
    GetDriverLicenseEvent event,
    Emitter<DocumentsState> emit,
  ) async {
    emit(state.copyWith(loading: true, isDriverLicense: true, loaded: false));

    final result = await getDocument(
      const GetDocumentParams(documentType: DocumentType.DRIVER_LICENSE),
    );

    result.fold(
      (l) => emit(state.copyWith(
        isFailed: true,
        message: 'Не удалось получить данные',
        isDriverLicense: true,
        loading: false,
      )),
      (r) => emit(state.copyWith(
        passport: r,
        loaded: true,
        isDriverLicense: true,
        loading: false,
      )),
    );
  }
}
