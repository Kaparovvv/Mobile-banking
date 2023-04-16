// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class GovRequestResponseEntity extends Equatable {
  final String requestId;
  final int sum;
  final String type;
  final DateTime date;

  const GovRequestResponseEntity({
    required this.requestId,
    required this.sum,
    required this.type,
    required this.date,
  });

  @override
  List<Object?> get props => [
        requestId,
        type,
        sum,
        date,
      ];
}
