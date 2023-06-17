part of 'certificate_bloc.dart';

@freezed
class CertificateEvent with _$CertificateEvent {
  const factory CertificateEvent.started() = Started;
  const factory CertificateEvent.babyCertificateFetched() =
      BabyCertificateFetched;
  const factory CertificateEvent.marriageCertificateFetched() =
      MarriageCertificateFetched;
}
