part of 'documents_bloc.dart';

@freezed
class DocumentsEvent with _$DocumentsEvent {
  const factory DocumentsEvent.started() = Started;
  const factory DocumentsEvent.getPassport() = GetPasportEvent;
  const factory DocumentsEvent.getDriverLicense() = GetDriverLicenseEvent;
}
