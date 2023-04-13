part of 'documents_bloc.dart';

abstract class DocumentsState extends Equatable {
  const DocumentsState();

  @override
  List<Object> get props => [];
}

class DocumentsInitial extends DocumentsState {}

class LoadingDocumentState extends DocumentsState {}

class LoadedPasportState extends DocumentsState {
  final DocumentEntity passport;

  const LoadedPasportState({required this.passport});

  @override
  List<Object> get props => [passport];
}

class LoadedDriverLicenseState extends DocumentsState {
  final DocumentEntity driverLicense;

  const LoadedDriverLicenseState({required this.driverLicense});

  @override
  List<Object> get props => [driverLicense];
}

class ErrorDocumentState extends DocumentsState {
  final String message;

  const ErrorDocumentState({required this.message});
}
