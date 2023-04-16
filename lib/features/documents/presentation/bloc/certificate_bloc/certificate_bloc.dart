import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/features/documents/domain/entity/baby_birth_certificate_entity.dart';
import 'package:my_family_flutter/features/documents/domain/usecase/get_baby_birth_cartificate.dart';
part 'certificate_event.dart';
part 'certificate_state.dart';
part 'certificate_bloc.freezed.dart';

class CertificateBloc extends Bloc<CertificateEvent, CertificateState> {
  CertificateBloc({
    required this.getBabyBirthCertificate,
  }) : super(CertificateState.initial()) {
    on<CertificateFetched>(
      (event, emit) async => fetchBabyCertificate(event, emit),
    );
  }

  final GetBabyBirthCertificate getBabyBirthCertificate;

  Future<void> fetchBabyCertificate(
    CertificateFetched event,
    Emitter<CertificateState> emit,
  ) async {
    emit(state.copyWith(loading: true, loaded: false, isFailed: false));

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
        message: "Fetched",
        certificate: r,
      )),
    );
  }
}
