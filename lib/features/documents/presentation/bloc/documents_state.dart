part of 'documents_bloc.dart';

abstract class DocumentsState extends Equatable {
  const DocumentsState();

  @override
  List<Object> get props => [];
}

class DocumentsInitial extends DocumentsState {}

class LoadingDocumentState extends DocumentsState {}

class LoadedPasportState extends DocumentsState {
  // final UserPasport userPasport;

  // const LoadedPasportState({required this.userPasport});
}

class LoadedDriverLicenseState extends DocumentsState {}

class ErrorDocumentState extends DocumentsState {
  final String message;

  const ErrorDocumentState({required this.message});
}
