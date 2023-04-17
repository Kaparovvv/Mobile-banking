// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class OfficeEntity extends Equatable {
  final String id;
  final String name;

  const OfficeEntity({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [
        id,
        name,
      ];
}
