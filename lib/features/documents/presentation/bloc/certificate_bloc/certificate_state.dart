part of 'certificate_bloc.dart';

@freezed
class CertificateState with _$CertificateState {
  factory CertificateState({
    required BabyBirthCertificateEntity babyCertificate,
    required MarriageCertificateEntity marriageCertificate,
    required bool isBabyCertificate,
    required bool loading,
    required bool loaded,
    required bool isFailed,
    required String message,
  }) = _CertificateState;

  const CertificateState._();

  factory CertificateState.initial() => CertificateState(
        loading: false,
        loaded: false,
        isFailed: false,
        message: "",
        isBabyCertificate: false,
        babyCertificate: const BabyBirthCertificateEntity(
          id: "",
          city: "",
          office: "",
          country: "",
          father: FatherEntity(
              firstName: "",
              lastName: "",
              middleName: "middleName",
              nationality: "nationality"),
          mother: MotherEntity(
            firstName: "",
            lastName: "",
            middleName: "",
            nationality: "",
          ),
          babyFirstName: "babyFirstName",
          babyLastName: "babyLastName",
          babyMiddleName: "babyMiddleName",
          babyGender: "babyGender",
        ),
        marriageCertificate: MarriageCertificateEntity(
          id: "",
          city: "",
          office: "",
          maleIin: "",
          femaleIin: "",
          maleFirstName: "",
          maleLastName: "",
          maleMiddleName: "",
          femaleFirstName: "",
          femaleLastName: "",
          femaleMiddleName: "",
          maleNationality: "",
          femaleNationality: "",
        ),
      );
}
