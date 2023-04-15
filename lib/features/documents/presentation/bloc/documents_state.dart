part of 'documents_bloc.dart';

@freezed
class DocumentsState with _$DocumentsState {
  factory DocumentsState({
    required DocumentEntity passport,
    required bool isDriverLicense,
    required bool loading,
    required bool loaded,
    required bool isFailed,
    required String message,
  }) = _DocumentsState;

  const DocumentsState._();

  factory DocumentsState.initial() => DocumentsState(
        passport: DocumentEntity(
          id: "",
          documentType: "",
          individual: IndividualEntity(
            id: "",
            firstName: "",
            lastName: "",
            middleName: "",
            phoneNumber: "",
            iin: "",
            birthDate: DateTime.now(),
            homeCity: "",
            nationality: "",
            photo: "",
            maritalStatus: "",
          ),
        ),
        isDriverLicense: false,
        loading: false,
        loaded: false,
        isFailed: false,
        message: "",
      );
}
