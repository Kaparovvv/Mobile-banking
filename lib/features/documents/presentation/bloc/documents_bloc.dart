import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'documents_event.dart';
part 'documents_state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  DocumentsBloc() : super(DocumentsInitial()) {
    on<GetPasportEvent>((event, emit) async {
      emit(LoadingDocumentState());
      try {
        await Future.delayed(const Duration(seconds: 2), () async {});
      } catch (e) {
        emit(
          ErrorDocumentState(
            message: e.toString(),
          ),
        );
      }
    });
  }
}
