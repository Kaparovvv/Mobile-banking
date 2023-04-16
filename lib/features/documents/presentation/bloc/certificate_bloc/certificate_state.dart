part of 'certificate_bloc.dart';

@freezed
class CertificateState with _$CertificateState {
  factory CertificateState({
    required BabyBirthCertificateEntity certificate,
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
      certificate: const BabyBirthCertificateEntity(
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
      ));
}
