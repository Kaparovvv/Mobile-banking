import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/entity/marriage_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_baby_birth_cartificate.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_marriage_certificate.dart';
part 'certificate_event.dart';
part 'certificate_state.dart';
part 'certificate_bloc.freezed.dart';

class CertificateBloc extends Bloc<CertificateEvent, CertificateState> {
  CertificateBloc({
    required this.getBabyBirthCertificate,
    required this.getMarriageCertificate,
  }) : super(CertificateState.initial()) {
    on<BabyCertificateFetched>(
      (event, emit) async => fetchBabyCertificate(event, emit),
    );
    on<MarriageCertificateFetched>(
      (event, emit) async => fetchMarriageCertificate(event, emit),
    );
  }

  final GetBabyBirthCertificateCase getBabyBirthCertificate;
  final GetMarriageCertificateCase getMarriageCertificate;

  Future<void> fetchBabyCertificate(
    BabyCertificateFetched event,
    Emitter<CertificateState> emit,
  ) async {
    emit(CertificateState.initial().copyWith(loading: true));

    final result = await getBabyBirthCertificate();

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        isFailed: true,
        message: TextHelper.noDataFetching,
      )),
      (r) => emit(state.copyWith(
        loading: false,
        loaded: true,
        message: "Baby Fetched",
        babyCertificate: r,
        isBabyCertificate: true,
      )),
    );
  }

  Future<void> fetchMarriageCertificate(
    MarriageCertificateFetched event,
    Emitter<CertificateState> emit,
  ) async {
    emit(CertificateState.initial().copyWith(loading: true));

    final result = await getMarriageCertificate();

    result.fold(
      (l) => emit(state.copyWith(
        loading: false,
        isFailed: true,
        message: TextHelper.noDataFetching,
      )),
      (r) => emit(state.copyWith(
        loading: false,
        loaded: true,
        message: "Marriage Fetched",
        marriageCertificate: r,
        isBabyCertificate: false,
      )),
    );
  }
}
